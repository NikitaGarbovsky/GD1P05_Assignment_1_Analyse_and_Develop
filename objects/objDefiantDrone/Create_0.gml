
audio_play_sound(m_SoundEnergyHum,0,true);
// The framerate of the spritesheet that is attached to this object.
image_speed = 0.1;
 
// The total amount of time between 0 - 1 for the object to travel. 
travelTime = 0;

// An array with all the x & y positions (within 16 structs) of each of the objects
// for the right (entry) spline track
rightSplinePoints = [
	{
		splinePointX : objSplinePointRight1.x,
		splinePointY : objSplinePointRight1.y,
	},
	{
		splinePointX : objSplinePointRight2.x,
		splinePointY : objSplinePointRight2.y,
	},
	{
		splinePointX : objSplinePointRight3.x,
		splinePointY : objSplinePointRight3.y,
	},
	{
		splinePointX : objSplinePointRight4.x,
		splinePointY : objSplinePointRight4.y,
	},
	{
		splinePointX : objSplinePointRight5.x,
		splinePointY : objSplinePointRight5.y,
	},
	{
		splinePointX : objSplinePointRight6.x,
		splinePointY : objSplinePointRight6.y,
	},
	{
		splinePointX : objSplinePointRight7.x,
		splinePointY : objSplinePointRight7.y,
	},
	{
		splinePointX : objSplinePointRight8.x,
		splinePointY : objSplinePointRight8.y,
	},
	{
		splinePointX : objSplinePointRight9.x,
		splinePointY : objSplinePointRight9.y,
	},
	{
		splinePointX : objSplinePointRight10.x,
		splinePointY : objSplinePointRight10.y,
	},
	{
		splinePointX : objSplinePointRight11.x,
		splinePointY : objSplinePointRight11.y,
	},
	{
		splinePointX : objSplinePointRight12.x,
		splinePointY : objSplinePointRight12.y,
	},
	{
		splinePointX : objSplinePointRight13.x,
		splinePointY : objSplinePointRight13.y,
	},
	{
		splinePointX : objSplinePointRight14.x,
		splinePointY : objSplinePointRight14.y,
	},
	{
		splinePointX : objSplinePointRight15.x,
		splinePointY : objSplinePointRight15.y,
	},
	{
		splinePointX : objSplinePointRight16.x,
		splinePointY : objSplinePointRight16.y,
	}
]
// An array with all the x & y positions (within 16 structs) of each of the objects
// for the left (entry) spline track
leftSplinePoints = [
	{
		splinePointX : objSplinePointLeft1.x,
		splinePointY : objSplinePointLeft1.y,
	},
	{
		splinePointX : objSplinePointLeft2.x,
		splinePointY : objSplinePointLeft2.y,
	},
	{
		splinePointX : objSplinePointLeft3.x,
		splinePointY : objSplinePointLeft3.y,
	},
	{
		splinePointX : objSplinePointLeft4.x,
		splinePointY : objSplinePointLeft4.y,
	},
	{
		splinePointX : objSplinePointLeft5.x,
		splinePointY : objSplinePointLeft5.y,
	},
	{
		splinePointX : objSplinePointLeft6.x,
		splinePointY : objSplinePointLeft6.y,
	},
	{
		splinePointX : objSplinePointLeft7.x,
		splinePointY : objSplinePointLeft7.y,
	},
	{
		splinePointX : objSplinePointLeft8.x,
		splinePointY : objSplinePointLeft8.y,
	},
	{
		splinePointX : objSplinePointLeft9.x,
		splinePointY : objSplinePointLeft9.y,
	},
	{
		splinePointX : objSplinePointLeft10.x,
		splinePointY : objSplinePointLeft10.y,
	},
	{
		splinePointX : objSplinePointLeft11.x,
		splinePointY : objSplinePointLeft11.y,
	},
	{
		splinePointX : objSplinePointLeft12.x,
		splinePointY : objSplinePointLeft12.y,
	},
	{
		splinePointX : objSplinePointLeft13.x,
		splinePointY : objSplinePointLeft13.y,
	},
	{
		splinePointX : objSplinePointLeft14.x,
		splinePointY : objSplinePointLeft14.y,
	},
	{
		splinePointX : objSplinePointLeft15.x,
		splinePointY : objSplinePointLeft15.y,
	},
	{
		splinePointX : objSplinePointLeft16.x,
		splinePointY : objSplinePointLeft16.y,
	}
]