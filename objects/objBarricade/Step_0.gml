if instance_exists(objSuperChargedPlayerProjectile)
{
	var projectile = instance_nearest(x, y, objSuperChargedPlayerProjectile)
	if(projectile.m_x2 >= m_BarricadeX1 && projectile.m_x1 <= m_BarricadeX2 )
	{
		if(projectile.m_y2 >= m_BarricadeY1 && projectile.m_y1 <= m_BarricadeY2 )
		{
			// If the player has 5 orbs
			if(objPlayer.m_Orbs == 5)
			{
				// The barricade is destroyed
				instance_destroy();
			}
			instance_destroy(projectile);
		}
	}
}
if instance_exists(objBasePlayerProjectile)
{
	var projectile = instance_nearest(x, y, objBasePlayerProjectile)
	if(projectile.m_x2 >= m_BarricadeX1 && projectile.m_x1 <= m_BarricadeX2 )
	{
		if(projectile.m_y2 >= m_BarricadeY1 && projectile.m_y1 <= m_BarricadeY2 )
		{
			instance_destroy(projectile);
		}
	}
}
if instance_exists(objReflectedPlayerProjectile)
{
	var projectile = instance_nearest(x, y, objReflectedPlayerProjectile)
	if(projectile.m_x2 >= m_BarricadeX1 && projectile.m_x1 <= m_BarricadeX2 )
	{
		if(projectile.m_y2 >= m_BarricadeY1 && projectile.m_y1 <= m_BarricadeY2 )
		{
			instance_destroy(projectile);
		}
	}
}