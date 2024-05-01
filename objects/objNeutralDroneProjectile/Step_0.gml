var m_x1 = x -10;
var m_x2 = x + 10;
var m_y1 = y - 5;
var m_y2 = y + 5;

if(y > 1000)
{
	instance_destroy();
}
with (objPlayer)
{
	var dist = getDistance(x,y,other.x, other.y);
	if (dist < (m_PlayerShipCollisionRadius + other.m_NeutralDroneProjectileRadius))
	{	
		instance_destroy(other);
	}
}
if instance_exists(objPlayerRectangle)
{
	var reflector = instance_nearest(x, y, objPlayerRectangle)
	if(m_x1 >= reflector.m_NDroneX1 && m_x2 <= reflector.m_NDroneX2 )
	{
		if(m_y1 >= reflector.m_NDroneY1 && m_y2 <= reflector.m_NDroneY2)
		{
			instance_destroy();
			audio_play_sound(soundDeflectLaserProjectile,0,0)
			reflector.m_DeflectShot = true;
		}
	}
}