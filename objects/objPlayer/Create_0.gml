image_speed = 0.5;
glowShown = false;
Display_Glow = function()
{
	if(m_SuperChargedAttack == true && glowShown == false)
	{
		instance_create_layer(x, y, "Layer_Bottom", objChargedShotGlowEffect);
		glowShown = true;
	}
	else if (m_SuperChargedAttack == false && glowShown == true)
	{
		instance_destroy(objChargedShotGlowEffect);
	}
}

ShootBaseShot = function()
{
	var baseShot = instance_create_layer(x, y-30, layer, objBasePlayerProjectile);
	baseShot.m_UpwardDirectionNumber = 3;
	audio_play_sound(m_BaseAttackSound, 0,0);
}
ShootSecondShot = function()
{
	var secondShot = instance_create_layer(x - 34, y - 27, layer, objBasePlayerProjectile);
	secondShot.m_UpwardDirectionNumber = 2;
	audio_play_sound(m_BaseAttackSound, 0,0);
}
ShootThirdShot = function()
{
	var thirdShot = instance_create_layer(x + 34, y - 27, layer, objBasePlayerProjectile);
	thirdShot.m_UpwardDirectionNumber = 4;
	audio_play_sound(m_BaseAttackSound, 0,0);
}
ShootFourthShot = function()
{
	var fourthShot = instance_create_layer(x - 57, y, layer, objBasePlayerProjectile);
	fourthShot.m_UpwardDirectionNumber = 1;
	fourthShot.m_ShotFromPlayer = true;
	audio_play_sound(m_BaseAttackSound, 0,0);
}
ShootFifthShot = function()
{
	var fifthShot = instance_create_layer(x + 57, y, layer, objBasePlayerProjectile);
	fifthShot.m_UpwardDirectionNumber = 5;
	fifthShot.m_ShotFromPlayer = true;
	audio_play_sound(m_BaseAttackSound, 0,0);
}
