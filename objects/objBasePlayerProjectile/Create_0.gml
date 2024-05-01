m_v2Position =
{ 
	x : x,
	y : y 
};
m_v2Velocity =
{
	x : 0,
	y : 0
}
Process_Shot = function(_v2_force)
{
	// add force to velocity
	vec2Add(m_v2Velocity, _v2_force);
}
// Tweaks the speeds of the reflected projectiles based off the amount of orbs the player has. 
if(objPlayer.m_Orbs == 1)
{
	var DownwardDirection1 = { x : -1, y : 1 };
	var DownwardDirection2 = { x : -0.5, y : 2 };
	var DownwardDirection3 = { x : 0, y : 2 };
	var DownwardDirection4 = { x : 0.5, y : 3 };
	var DownwardDirection5 = { x : 1, y : 1 };
}
else if (objPlayer.m_Orbs == 2)
{
	var DownwardDirection1 = { x : -2, y : 2 };
	var DownwardDirection2 = { x : -1.5, y : 3 };
	var DownwardDirection3 = { x : 0, y : 3 };
	var DownwardDirection4 = { x : 1.5, y : 4 };
	var DownwardDirection5 = { x : 2, y : 2 };
}
else if (objPlayer.m_Orbs == 3)
{
	var DownwardDirection1 = { x : -3, y : 3 };
	var DownwardDirection2 = { x : -2.5, y : 3 };
	var DownwardDirection3 = { x : 0, y : 4 };
	var DownwardDirection4 = { x : 2.5, y : 4 };
	var DownwardDirection5 = { x : 3, y : 3 };
}
else if (objPlayer.m_Orbs == 4)
{
	var DownwardDirection1 = { x : -4, y : 4 };
	var DownwardDirection2 = { x : -3.5, y : 4 };
	var DownwardDirection3 = { x : 0, y : 5 };
	var DownwardDirection4 = { x : 3.5, y : 5 };
	var DownwardDirection5 = { x : 4, y : 4 };
}
else if (objPlayer.m_Orbs == 5)
{
	var DownwardDirection1 = { x : -5, y : 5 };
	var DownwardDirection2 = { x : -4.5, y : 5 };
	var DownwardDirection3 = { x : 0, y : 5 };
	var DownwardDirection4 = { x : 4.5, y : 6 };
	var DownwardDirection5 = { x : 5, y : 5 };
}





