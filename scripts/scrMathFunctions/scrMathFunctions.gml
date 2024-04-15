
// The main Lerp function used 
function math_Lerp(_start,_end,_alpha)
{
	var result = _start + (_end - _start) * _alpha;
	return result;
}
function math_QuadraticBezier(_p0, _p1, _p2, _alpha)
{
	var lerp1 = math_Lerp(_p0, _p1, _alpha);
	var lerp2 = math_Lerp(_p1, _p2, _alpha);
	
	var result = math_Lerp(lerp1, lerp2, _alpha);
	return result;
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
