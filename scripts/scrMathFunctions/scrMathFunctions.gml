
function scrMathFunctions(){
	
}

function getDistance(_x1,_y1,_x2,_y2)
{
	var x3 = _x2 - _x1;
	var y3 = _y2 - _y1;
	var x3_sqr = power(x3, 2);
	var y3_sqr = power(y3, 2)
	
	var sum = x3_sqr + y3_sqr;
	
	var distance = sqrt(sum);
	
	return distance;
}