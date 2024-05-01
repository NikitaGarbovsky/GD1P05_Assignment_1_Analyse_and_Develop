var m_NDroneX1;
var m_NDroneX2;
var m_NDroneY1;
var m_NDroneY2;

function SpawnProjectileUpward()
{
	var projectile = instance_create_layer(x, y-60, "Layer_SplineTrackRight", objBasePlayerProjectile);
	projectile.image_angle = image_angle;
	projectile.m_UpwardDirectionNumber = irandom_range(1,5);
}




