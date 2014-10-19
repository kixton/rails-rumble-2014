window.onload = function(){
	var paper = new Raphael(document.getElementById('graph'));
	var yAxis = paper.path("M 250 0 l 0 500");
	var xAxis = paper.path("M 0 250 l 500 0");
	var array = [
	{name: "Lyft",
		x: 60,
		y: 270,
		z: 380,
		src: "http://upload.wikimedia.org/wikipedia/commons/4/48/Lyft_logo.jpg"
	},
	{name: "Uber",
		x: 100,
		y: 20,
		z: 05,
		src: "http://www.brandsoftheworld.com/sites/default/files/styles/logo-thumbnail/public/122013/uber_logo_0.png"
	},
	{name: "Dropbox",
		x: 360,
		y: 60,
		z: 300,
		src: "http://static.squarespace.com/static/4f5694c424aca8d4f8e69194/t/52989bf6e4b0009d44d0a9cd/1385733246946/Dropbox-logo.png"
	}
	];
	var circle_array = [];
	image = paper.image("http://upload.wikimedia.org/wikipedia/commons/4/48/Lyft_logo.jpg", 60, 270, 40, 40);
	image.attr({x: 20})
	console.log(image)
	$('#graph').click(function(){
		console.log("x")
		image.animate({width: 200, height: 200}, 2000, "elastic");
	});
	// for (var i = 0; i < array.length; i++) {
	// 	var c = paper.image(array[i].src, array[i].x, array[i].y, 40, 40);
	// 	circle_array.push(c);
	// 	console.log(c)
	// }
	// $('#graph').click(function(){
	// 	console.log("yo");
	// 	for (var i = 0; i < circle_array.length; i++) {
	// 		console.log(circle_array[i]);
	// 		circle_array[i].animate(circle_array[i], { x: array[i].y, y: array[i].x}, 2000, "bounce");
	// 	}
	// });

};