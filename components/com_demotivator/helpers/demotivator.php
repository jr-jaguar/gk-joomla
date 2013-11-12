<?php
/**
 * @version     0.9.0
 * @package     com_demotivator
 * @copyright   Copyright (C) 2012. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Fonclub <sfonclub@gmail.com> - http://fonclub-blog.ru
 */

defined('_JEXEC') or die;

class DemotivatorHelper{
   
    public $targetPath; // путь до папки загрузки
    public $fontpath; // путь до папки со шрифтами    
    public $copyright; // копирайт
    public $title; // заголовок по умолчанию
    public $text; // текст по умолчанию
    public $font; // название шрифта
    public $rbg = array(0,0,0); // цвет фона картинки (черный по умолчанию)
    public $width = 600; // ширина картинки при обрезании
    public $height = 400; // высота картинки при обрезании
    protected $params = null;
    protected $user;
    
    public function __construct(){
        $this->targetPath = JPATH_ROOT.'/tmp/';
        $this->fontpath = JPATH_COMPONENT.'/assets/fonts/';
        $this->title = JText::_('COM_DEMOTIVATOR_API_TITLE_IMG');
        $this->text = JText::_('COM_DEMOTIVATOR_API_TEXT_IMG');
        
		$this->user 		= &JFactory::getUser();
		$this->params = &JComponentHelper::getParams('com_demotivator'); /** получаем параметры типов мотиваторов*/	            
        
        $this->copyright = $this->params->get('copyright');
        $this->font = $this->params->get('font') ? $this->params->get('font') : 'font.ttf';
        
        if (!empty($_FILES)) {
        	$this->upload($_FILES); 
        }
        if ( isset($_POST['preview']) ){
            $this->Preview($_POST);
        }
        if ( isset($_POST['save']) ){
            $this->Preview($_POST, true);
            
            if (!$this->user->authorise( 'core.create','com_demotivator' )) {
                $data['error'] = JText::_('COM_DEMOTIVATOR_ERR_USER_LOGIN');
                exit(json_encode($data));
            }
            $this->Save($_POST);
        }
        elseif(empty($_FILES) and !isset($_POST['preview'])){
            $app = new JApplication();
            $app->redirect("/",JText::_('COM_DEMOTIVATOR_EMPTY_API'),"error");
        } 
    }
    
    /** функция первичной загрузки изображения*/
    public function upload($files){
        
            $tempFile = $files['Filedata']['tmp_name'];                  
        	
        	// Validate the file type
        	$fileTypes = array('jpg','jpeg','gif','png'); // File extensions
        	$fileParts = pathinfo($files['Filedata']['name']);
            
            $file_name = md5(time().$files['Filedata']['name']).".".$fileParts['extension'];
        	$targetFile = $this->targetPath . '/' . $file_name;    
        	
        	if (in_array(strtolower($fileParts['extension']),$fileTypes)) {   
        	    $image = $this->resizeImage($tempFile, $targetFile, $this->width, $this->height, 0, 0, 0);
                                
                $original =  'original_' . $file_name;
                $originalsrc = $this->targetPath . '/original_' . $file_name;
                copy($image, $originalsrc);
                
                $this->demotivator($image,$this->title,$this->text,$this->copyright, $this->rbg);
                $data = array(
                    'img' => '<img src="/tmp/'.$file_name.'" width="700" />', 
                    'original' => $original
                );
                echo json_encode($data);
                		
        	} else {
        		echo JText::_('COM_DEMOTIVATOR_API_EXTENSION_IMG');
        	}
    }
    
    /** функция для генерации предпросмотра изображения*/
    public function Preview($data, $return=false){
        
        $img = $this->targetPath. '/' . $data['original'];
        $newname = str_replace('/original_','/', $img);
        $newimg = str_replace('original_','', $data['original']);
        
        $title = $data['title'] ? urldecode($data['title']) : $this->title;
        $text = $data['text'] ? urldecode($data['text']) : $this->text;
        
        if($this->params->get('types')){
            $types = explode( ";", trim($this->params->get('types'), ";") );       

    		foreach ($types as $type)
    		{    
    			$tps = explode("|",$type);
                if(!$tps)
                    continue;
                if($data['type'] == $tps[1])
                    $rbg = $this->html2rgb($tps[2]);
    			
    		}
        }

        if (isset($data['action']) and $data['action'] = 'crop') /** если нужно обрезать - обрезаем картинку*/
        {
        	$img_r = imagecreatefromjpeg($newname);
        	$dst_r = ImageCreateTrueColor( $this->width, $this->height );
        
        	imagecopyresampled($dst_r,$img_r,0,0,$data['x'],$data['y'],$this->width,$this->height,$data['w'],$data['h']);
        	imagejpeg($dst_r,$img,100);
        }
        
        $image = $this->demotivator($img,$title,$text,$this->copyright, $rbg, $newname);
        
        if($return) //если мы вызвали функцию сразу перед сохранением
            return true;
            
        $data['img'] = '<img src="/tmp/'.$newimg.'?'.time().'" width="700" />';
        echo json_encode($data);
    exit;
    }
    
    public function Save($data){
        jimport('joomla.filter.output');
        
        $db = &JFactory::getDBO(); 
        $obj = new stdClass();
        
        $orig_img = $this->targetPath . $data['original'];
        $name_img = str_replace('original_','', $data['original']); 
        $img = $this->targetPath . $name_img;
        $new_img = JPATH_ROOT .DS. 'images' .DS. 'com_demotivator'.DS.$name_img; 
        $obj->img = "images/com_demotivator/".$name_img;
                     
        $obj->name = $data['title'] ? urldecode($data['title']) : $this->title;
        $obj->type = $data['type'];
        $obj->state = ($this->params->get('premoderate') == 1) ? 0 : 1;
        $obj->created = date("Y-m-d H:i:s", time());
        $obj->created_by = $this->user->get('guest') ? 0 : $this->user->id;
        
        if(empty($this->alias)) {
			$this->alias = $obj->name;
		}
		
		$obj->alias = JFilterOutput::stringURLSafe($this->alias);
        
        if(JFile::move($img, $new_img)){
            JFile::delete($orig_img);
            $db->insertObject("#__demotivator_img", $obj); 
            $id = $db->insertid();
            $res['result'] = 'success';
            $res['url'] = JRoute::_("index.php?option=com_demotivator&view=img&id=$id:$obj->alias", $xhtml = true, $ssl=null );
            $this->sendAdminEmail($res['url'],$obj->img,$obj->name);
        }
        else $res['result'] = 'error';
        echo json_encode($res);
        exit;
    }
    
    /** доработанная функция создания демотиватора (автор Kalabzin Maxim Copyright (C) 6 авг. 2011.)*/
    public function demotivator($image, $title, $text, $copyright, $rbg=array(0,0,0), $newname=false) {

        $fontpath = $this->fontpath.$this->font;         
        $ext = getimagesize($image);         
         
        // Открываем изображение
        switch($ext[2]) {         
            case 2: {$img = ImageCreateFromJPEG($image); break;}
            case 1: {$img = ImageCreateFromGIF($image); break; }
            case 3: {$img = ImageCreateFromPNG($image); break;}
            case 6: {$img = ImageCreateFromBMP($image); break;}
            default : {
            	unlink ($image);
            	return 2;
            }         
        }       
         
        // Получение размеров изображения
        $x = ImageSX($img); // X
        $y = ImageSY($img); // Y        
         
        // Размер черного прямоугольника, который будем рисовать
        $tx = $x * 0.1;
        $ty = $x * 0.1;
         
        $bx = $x + $tx;
        $by = $y + $ty;
         
        $dx= $x * 0.01; // Смещение. Необходимо для рисования рамки
        $dy= $x * 0.01;
         
        // фон картинки
        list($r,$b,$g) = $rbg;
        $imgbg = ImageColorAllocate($img, $r, $b, $g);
         
        // Создаем новое изображение
        $img2 = ImageCreateTrueColor($bx + $tx, $by + $tx * 2.6);
        imagefill( $img2, 0, 0, $imgbg );
         
        // Масштабирование
        ImageCopyResized($img2, $img, $tx, $ty, 0, 0, $bx-$tx, $y, $x, $y);
         
         
        // Расчет смещений для рисования рамки
        $x1 = $tx;
        $y1 = $ty;
        $x2 = $bx;
        $y2 = $y + $ty;
         
        // Цвета рамки, слоганов и копирайта
        $col = ImageColorAllocate($img2, 255, 255, 255); // Цвет слоганов
        $col2 = ImageColorAllocate($img2, 255, 255, 255); // Цвет копирайта
        $col3 = ImageColorAllocate($img2, 255, 255, 255); // Цвет рамки
                
        // Рамки на изображении
        ImageRectangle($img2, $x1 - 5, $y1 - 5, $x2 + 4, $y2 + 4, $col3);
        ImageRectangle($img2, $x1 - 6, $y1 - 6, $x2 + 5, $y2 + 5, $col3);
                
        // Пишем слоганы, сначала с X=0, чтобы получить линейные размеры текста
        $s1 = ImageTTFText($img2, 0.06 * $bx, 0, $dx, $by + $ty, $col, $fontpath, $title);
        $s2 = ImageTTFText($img2, 0.035 * $bx, 0, $dx, $by + $ty + 0.08 * $bx, $col, $fontpath, $text);        
               
        // 1-й слоган не помещается в картинку - ошибка!
        if (($s1[2] - $s1[0]) > $bx + $tx) $sl1 = 1;        
         
        $dx = (($bx + $tx) - ($s1[2] - $s1[0]))/2; // Смещение. Эта величина определяет центровку текста для 1-го слогана
         
         
        // Непосредственно текст. 1-й слоган
        ImageFilledRectangle($img2, 0, $y2 + 10, $bx + $tx, $by + $tx * 2.8, $imgbg);
        ImageTTFText($img2, 0.06 * $bx, 0, $dx, $by + 1.1*$ty, $col, $fontpath, $title);
         
        $dx = (($bx + $tx) - ($s2[2] - $s2[0]))/2; // Смещение. Эта величина определяет центровку текста для 2-го слогана
         
         
        // Непосредственно текст. 2-й слоган (таглайн)
        if ($dx < 0)  {
         
        // Текст не умещается в картинку, масштабируем.
        $s = $s2[2] - $s2[0];
        $size = (0.035 * $bx * $bx) /$s;
        $s2 = ImageTTFText($img2, $size, 0, $dx, $by + $ty + 0.08 * $bx, $col, $fontpath, $text);
         
         
        $dx = (($bx + $tx) - ($s2[2] - $s2[0]))/2;
         
        ImageFilledRectangle($img2, 0, $by + 1.2* $tx, $bx + $tx, $by + $tx * 2.6, $imgbg);
        ImageTTFText($img2, $size, 0, $dx, $by + $ty + 0.08 * $bx, $col, $fontpath, $text);
         
        } else  {
         
        $size = 0.035 * $bx;
         
        ImageFilledRectangle($img2, 0, $by + 1.4*$tx, $bx + $tx, $by + $tx * 2.3, $imgbg);
        ImageTTFText($img2, $size, 0, $dx, $by + $ty + 0.08 * $bx, $col, $fontpath, $text);
         
        }
        
        // Copyright
        ImageTTFText($img2, 12, 0, $bx - 80, $by + $tx * 2.5, $col2, $fontpath, $copyright);
        
        if($newname) ImageJpeg($img2,$newname); // Если есть предыдущий файл - перезаписываем его
        else ImageJpeg($img2,$image);
        ImageDestroy($img2);        
    }
    
    /** функция ресайза изображения*/
    public function resizeImage($src, $dest, $width, $height, $r=0,$g=0,$b=0, $quality=80)
    {
      if (!file_exists($src)) return false;
    
      $size = getimagesize($src);
    
      if ($size === false) return false;
    
      // Определяем исходный формат по MIME-информации, предоставленной
      // функцией getimagesize, и выбираем соответствующую формату
      // imagecreatefrom-функцию.
      $format = strtolower(substr($size['mime'], strpos($size['mime'], '/')+1));
      $icfunc = "imagecreatefrom" . $format;
      if (!function_exists($icfunc)) return false;
    
      $x_ratio = $width / $size[0];
      $y_ratio = $height / $size[1];
    
      $ratio       = min($x_ratio, $y_ratio);
      $use_x_ratio = ($x_ratio == $ratio);
    
      $new_width   = $use_x_ratio  ? $width  : floor($size[0] * $ratio);
      $new_height  = !$use_x_ratio ? $height : floor($size[1] * $ratio);
      $new_left    = $use_x_ratio  ? 0 : floor(($width - $new_width) / 2);
      $new_top     = !$use_x_ratio ? 0 : floor(($height - $new_height) / 2);
    
      $isrc = $icfunc($src);
      $idest = imagecreatetruecolor($width, $height);
    
      $rgb = imagecolorallocate($idest, $r, $g, $b);
      imagefill($idest, 0, 0, $rgb);
      imagecopyresampled($idest, $isrc, $new_left, $new_top, 0, 0, 
        $new_width, $new_height, $size[0], $size[1]);
    
      imagejpeg($idest, $dest, $quality);
    
      imagedestroy($isrc);
      imagedestroy($idest);
    
      return $dest;
    
    }  
    
    public function html2rgb($color)
    {
        if ($color[0] == '#')
            $color = substr($color, 1);
    
        if (strlen($color) == 6)
            list($r, $g, $b) = array($color[0].$color[1],
                                     $color[2].$color[3],
                                     $color[4].$color[5]);
        elseif (strlen($color) == 3)
            list($r, $g, $b) = array($color[0].$color[0], $color[1].$color[1], $color[2].$color[2]);
        else
            return false;
    
        $r = hexdec($r); $g = hexdec($g); $b = hexdec($b);
    
        return array($r, $g, $b);
    }
    
    public function sendAdminEmail($url, $img, $name){
        $mailer = &JFactory::getMailer();
        $config = &JFactory::getConfig();
        $sender = array( 
            $config->getValue( 'config.mailfrom' ),
            $config->getValue( 'config.fromname' ) 
            );         
        $mailer->setSender($sender);        
        $mailer->addRecipient($this->params->get('adminemail'));
        $mailer->setSubject(JText::_('COM_DEMOTIVATOR_ADMIN_EMAIL_H2'));
        $body = '<h2>'.JText::_('COM_DEMOTIVATOR_ADMIN_EMAIL_H2').'</h2>'
            . '<h3>'.JText::_('COM_DEMOTIVATOR_ADMIN_EMAIL_NAMEIMG').' - <a href="'.$url.'">'.$name.'</a></h3>'
            . '<img src="'.JURI::base().'/'.$img.'" width="300" alt="'.$name.'" />';
        $mailer->isHTML(true);
        $mailer->setBody($body);
        $send = &$mailer->Send();
    }
}