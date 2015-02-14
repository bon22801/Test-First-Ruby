$(document).ready(function(){
	for (i=0; i<16; i++){
		for(j=0;j<16;j++){
			$(".container").append('<div class ="grid"></div>');
		}
		$(".container").append('<div class ="new_row"></div>');
	}

	$(".grid").mouseenter(function(){
		$(this).addClass("gird-hovered")
	})
});
