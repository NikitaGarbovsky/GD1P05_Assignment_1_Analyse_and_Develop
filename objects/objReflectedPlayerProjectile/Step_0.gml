var m_x1 = x - 10;
var m_x2 = x + 10;
var m_y1 = y - 5;
var m_y2 = y + 5;

with (objPlayer)
{
	var dist = getDistance(x,y,other.x, other.y);
	if (dist < (m_PlayerShipCollisionRadius + other.m_basePlayerProjectileRadius))
	{	
		instance_destroy(other);
		objMainLevelManager.m_HitsTaken = objMainLevelManager.m_HitsTaken + 1;
	}
}
with (objDrone)
{
	// This code utilizes a basic form of circular collisions using a distance vs distance measurement

	// Grabs the distance from this projectile to all other enemy instances.
	var dist = getDistance(x,y,other.x, other.y);
	// If this distance is less than (drone radius plus this projectile radius)
	if (dist < (m_droneCollisionRadius + other.m_basePlayerProjectileRadius))
	{	// Do damage
		if(m_droneIsShielded == true)
		{
			m_droneIsShielded = false;
		}
		else 
		{
			m_droneHitPoints -= other.m_basePlayerProjectileDamage;
		}
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
			objMainLevelManager.m_LasersReflected = objMainLevelManager.m_LasersReflected + 1;
		}
	}
}

vec2Add(m_v2Position, m_v2Velocity)

x = m_v2Position.x;
y = m_v2Position.y;


if (m_HaveChangedAngle == false)
{
	image_angle = getAngleFacingPointDeg(-1 - y, 1 - x);
	m_HaveChangedAngle = true;
}

if(y > 1000 || y < 0 || x > 1000 || x < 0)
{
	instance_destroy();
}


