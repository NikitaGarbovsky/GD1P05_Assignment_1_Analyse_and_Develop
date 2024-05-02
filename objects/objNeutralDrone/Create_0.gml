
var m_NDroneX1;
var m_NDroneX1;
var m_NDroneX1;
var m_NDroneX1;

function SpawnProjectileDownward()
{
	var projectile = instance_create_layer(x, y+20, "Layer_SplineTrackRight", objReflectedPlayerProjectile);
	projectile.image_angle = image_angle;
}

moveToX = irandom(room_width);
moveToY = irandom(700);

move_towards_point(moveToX, moveToY, m_NeutralDroneMovementSpeed);
