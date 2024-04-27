
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
