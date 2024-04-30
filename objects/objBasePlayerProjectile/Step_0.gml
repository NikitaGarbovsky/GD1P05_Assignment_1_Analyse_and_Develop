var m_x1 = x - 10;
var m_x2 = x + 10;
var m_y1 = y - 5;
var m_y2 = y + 5;

with (objDrone)
{
	// This code utilizes a basic form of circular collisions using a distance vs distance measurement

	// Grabs the distance from this projectile to all other enemy instances.
	var dist = getDistance(x,y,other.x, other.y);
	// If this distance is less than (drone radius plus this projectile radius)
	if (dist < (m_droneCollisionRadius + other.m_basePlayerProjectileRadius))
	{	// Do damage
		m_droneHitPoints -= other.m_basePlayerProjectileDamage;
		instance_destroy(other);
	}
}

// Checks for collision from the players base attack
// 


if instance_exists(objNeutralDrone)
{
	var enemy = instance_nearest(x, y, objNeutralDrone)
	if(m_x1 >= enemy.m_NDroneX1 && m_x2 <= enemy.m_NDroneX2 )
	{
		if(m_y1 >= enemy.m_NDroneY1 && m_y2 <= enemy.m_NDroneY2 )
		{
			instance_destroy(self);
			enemy.m_DeflectShot = true;
		}
	}
}

if(y < 0)
{
	instance_destroy();
}


