
if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
	x -= 5;	
}
if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	x += 5;	
}
// Launch projectile at player ship location
if (keyboard_check_pressed(vk_space) && !instance_exists(objBasePlayerProjectile)) 
{
	instance_create_layer(x, y-30, layer, objBasePlayerProjectile);
}