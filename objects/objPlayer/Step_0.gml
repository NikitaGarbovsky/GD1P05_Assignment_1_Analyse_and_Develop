
if (keyboard_check(vk_left) || keyboard_check(ord("A")))
{
	x -= m_PlayerShipMovementSpeed;	
}
if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	x += m_PlayerShipMovementSpeed;	
}
// Launch projectile/s at player ship location
if (keyboard_check_pressed(vk_space) && image_index >= 12) 
{
	if(m_SuperChargedAttack == true)
	{
		instance_create_layer(x, y-30, layer, objSuperChargedPlayerProjectile);
		image_index = 0;
	}
	else
	{
		instance_create_layer(x, y-30, layer, objBasePlayerProjectile);
		image_index = 0;
	}
}
switch (m_Orbs)
{
	case 1:
	{
		m_PlayerShipShootingSpeed = 0.2
		break;
	}
	case 2:
	{
		m_PlayerShipShootingSpeed = 0.4
		break;
	}
	case 3:
	{
		m_PlayerShipShootingSpeed = 0.6
		break;
	}
	case 4:
	{
		m_PlayerShipShootingSpeed = 0.8
		break;
	}
	case 5:
	{
		m_PlayerShipShootingSpeed = 1
		break;
	}
}

// Assigns the speed of going through the objects sprites based off the shooting speed 
if !(image_index > 12)
{
	image_speed = m_PlayerShipShootingSpeed;
}
else 
{
	image_speed = 0;
}
