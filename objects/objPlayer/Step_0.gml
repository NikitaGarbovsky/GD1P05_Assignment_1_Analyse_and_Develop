
if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
	x -= 5;	
}
if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	x += 5;	
}
// Launch projectile at player ship location
if (keyboard_check_pressed(vk_space) && image_index >= 12) 
{
	instance_create_layer(x, y-30, layer, objBasePlayerProjectile);
	image_index = 0;
	image_speed = m_PlayerShipShootingSpeed;
}

if !(image_index > 12)
{
	image_speed = m_PlayerShipShootingSpeed;
}
else 
{
	image_speed = 0;
	
}
