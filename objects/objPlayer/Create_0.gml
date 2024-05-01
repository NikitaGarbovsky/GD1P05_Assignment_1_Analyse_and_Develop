image_speed = 0.5;


ShootBaseShot = function()
{
	var baseShot = instance_create_layer(x, y-30, layer, objBasePlayerProjectile);
	baseShot.m_UpwardDirectionNumber = 3;
}
ShootSecondShot = function()
{
	var secondShot = instance_create_layer(x - 34, y - 27, layer, objBasePlayerProjectile);
	secondShot.m_UpwardDirectionNumber = 2;
}
ShootThirdShot = function()
{
	var thirdShot = instance_create_layer(x + 34, y - 27, layer, objBasePlayerProjectile);
	thirdShot.m_UpwardDirectionNumber = 4;
}
ShootFourthShot = function()
{
	var fourthShot = instance_create_layer(x - 57, y, layer, objBasePlayerProjectile);
	fourthShot.m_UpwardDirectionNumber = 1;
}
ShootFifthShot = function()
{
	var fifthShot = instance_create_layer(x + 57, y, layer, objBasePlayerProjectile);
	fifthShot.m_UpwardDirectionNumber = 5;
}
