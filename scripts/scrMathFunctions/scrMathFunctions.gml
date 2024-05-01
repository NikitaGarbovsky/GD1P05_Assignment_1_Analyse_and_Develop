// Used to move the aggressive defiant drone towards the player
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
// Used to move along the spline and bezier curve tracks 
function math_CubicBezier(_p0,_p1,_p2,_p3, _alpha)
{
	var bezier1 = math_QuadraticBezier(_p0, _p1, _p2, _alpha);
	var bezier2 = math_QuadraticBezier(_p1, _p2, _p3, _alpha);	
	
	var result = math_Lerp(bezier1, bezier2, _alpha);
	return result;
}
// Returns the distance between two objects positions
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
// Used when debugging to view circular collisions on the drones
function drawCollisionCircle(_a, _b, _r)
{
	var x_pos, x_pos2, y_pos, y_pos2;
	for (var t = 0; t < 2*pi; t = t + ((2*pi)/10))
	{
		x_pos = _a + (_r * cos(t));
		y_pos = _b + (_r * sin(t));
		
		x_pos2 = _a + (_r * cos(t + ((2*pi)/10)));
		y_pos2 = _b + (_r * sin(t + ((2*pi)/10)));
		
		draw_line_width_color(x_pos, y_pos, x_pos2, y_pos2, 2, c_lime, c_lime);
	}
}
function vec2Add(_A,_B)
{
	_A.x += _B.x;
	_A.y += _B.y;
}
function vec2AddRv2(_A, _B)
{
	var resultant = 
	{ 
		x : _A.x + _B.x, 
		y : _A.y + _B.y
	};
	return resultant;
}
function vec2Subtract(_A,_B)
{
	_A.x -= _B.x;
	_A.y -= _B.y;
}
function vec2SubtractRv2(_A, _B)
{
	var resultant =
	{
		x: _A.x - _B.x, y : _A.y - _B.y	
	};
	return resultant;
}
function vec2ScalarMultiplyRv2(_A, _scalar)
{
	var resultant =
	{
		x : _A.x * _scalar, y : _A.y * _scalar	
	};
	return resultant;
}
function getAngleFacingPointDeg(_opposite, _adjacent)
{
	var theta = arctan2(-_opposite, _adjacent);
	theta = radtodeg(theta);
	return theta;
}