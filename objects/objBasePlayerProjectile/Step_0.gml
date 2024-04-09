

with (objDrone)
{
	// determine distance
	// if collision then do damage logic 
	
	var dist = getDistance(x,y,other.x, other.y);
	
	if (dist < (m_droneCollisionRadius + other.m_basePlayerProjectileRadius))
	{
		m_droneHitPoints -= other.m_basePlayerProjectileDamage;
		instance_destroy(other);
	}
}
if(y < 0)
{
	instance_destroy();
}


