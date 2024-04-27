var m_x1 = x -10;
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


if(y > 1000)
{
	instance_destroy();
}


