m_x1 = x - 20;
m_x2 = x + 20;
m_y1 = y - 20;
m_y2 = y + 20;

with (objDrone)
{
	// This code utilizes a basic form of circular collisions using a distance vs distance measurement

	// Grabs the distance from this projectile to all other enemy instances.
	var dist = getDistance(x,y,other.x, other.y);
	// If this distance is less than (drone radius plus this projectile radius)
	if (dist < (m_droneCollisionRadius + other.m_SuperChargedPlayerProjectileRadius))
	{	// Do damage
		m_droneHitPoints -= other.m_SuperChargedPlayerProjectileDamage;
	}
}





