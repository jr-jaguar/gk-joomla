jQuery(document).ready(function() {
	jQuery("#upload").uploadify({
	    fileTypeDesc  : 'Изображения',
        fileTypeExts  : '*.gif; *.jpg; *.jpeg; *.png', 
        fileSizeLimit : '1MB',
		height        : 30,
		swf           : '/components/com_demotivator/assets/js/uploadify/uploadify.swf',
		uploader      : 'index.php?option=com_demotivator&task=api',
		width         : 120,
		'buttonText' : buttonText,
		'onUploadSuccess' : function(file, data, response) {
            //console.log(data);
            var src = jQuery.parseJSON(data);
            if(src.img){
                jQuery('#upload').remove();	
                jQuery('#upload-queue').remove();	  
    			jQuery('#text-box').css('display', 'block');
    			jQuery('.action-box').css('display', 'block');			
    			jQuery('#image-box').html(src.img);
    			jQuery('#original').val(src.original);
    			setCrop(); 
            }
            if(src.error)
               jQuery('#image-box').html(src.error); 
		} 
	});        
});

function thisPreview(){
	var data = jQuery('#preview').serialize();
	jQuery.ajax({
	  url: 'index.php?option=com_demotivator&task=api',
	  data: data+'&preview=1',
	  type: "post",
	  dataType: "json",
	  success: function(src) {
		jQuery('#image-box').html(src.img);
		setCrop();
	  }
	});    
}

function thisSave(){
	var data = jQuery('#preview').serialize();
	jQuery.ajax({
	  url: 'index.php?option=com_demotivator&task=api',
	  data: data+'&save=1',
	  type: "post",
	  dataType: "json",
	  success: function(res) {
	    if(res.result == 'success')
            location.href = res.url;
            
		else
            alert('Error.. Mail to admin');
	  }
	});    
}

function Resize(){
	if(checkCoords()){
		var data = jQuery('#preview').serialize();
		jQuery.ajax({
		  url: 'index.php?option=com_demotivator&task=api',
		  data: data+'&action=crop&preview=1',
		  type: "post",
		  dataType: "json",
		  success: function(src) {
			jQuery('#image-box').html(src.img);
			setCrop();
		  }
		});   
	}           
}

function showCoords(img, selection) {
	jQuery('#x').val(selection.x1);
	jQuery('#y').val(selection.y1);
	jQuery('#w').val(selection.width);
	jQuery('#h').val(selection.height);
	if( confirm(showCoordsConfirm) ) Resize();
}

function checkCoords()
{
	if (parseInt(jQuery('#w').val())>0) return true;
	alert(checkCoordsAlert);
	return false;
};

function setCrop(){
	jQuery('#image-box img').imgAreaSelect({
		handles: true,
		onSelectEnd: showCoords
	});
	resetCrop();
}

function resetCrop()
{
	jQuery('#x').val('0');
	jQuery('#y').val('0');
	jQuery('#w').val('0');
	jQuery('#h').val('0');
	jQuery('.imgareaselect-outer').each(function(){
		jQuery(this).css('display', 'none');
	});
};