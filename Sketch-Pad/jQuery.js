$(document).ready(function(){
	$("body").append('<button type="button"> New Pad </button>');
	$("body").append('<div class="container"></div>');

	init_grid(16);
	hover();

	$("button").on("click", function() {
		var size = parseInt(prompt("Enter a new pad size:"));
		$(".grid").remove();
		$("#size").remove();
		init_grid(size);
		hover();
	});


});





function init_grid(size){
	$("body").prepend('<h1 id="size">' + size + 'x' + size +' grids</h1>');
	for (i=0; i<size; i++){
		for(j=0;j<size;j++){
			$(".container").append('<div class ="grid"></div>');
		}
		$(".container").append('<div class ="new_row"></div>');
	}
}

function hover(){
	$(".grid").mouseenter(function(){
	$(this).addClass("gird-hovered")
	});
}

