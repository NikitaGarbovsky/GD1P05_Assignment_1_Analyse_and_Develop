
var m_NDroneX1;
var m_NDroneX1;
var m_NDroneX1;
var m_NDroneX1;

function SpawnProjectileDownward()
{
	var projectile = instance_create_layer(x, y-30, layer, objReflectedPlayerProjectile);
	projectile.vspeed = 15;
}

m_v2Position =
{ 
	x : x,
	y : y 
};


