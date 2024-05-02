draw_self();

draw_set_font(fntEndScreenText);

if(objMainLevelManager.m_HasWon == true)
{
	draw_text_color(300, 300, "Drones Destroyed: " + string(objMainLevelManager.m_DronesDestroyed), c_green, c_green, c_green, c_green, 1);
	draw_text_color(265, 400, "Laser Shots Reflected: " + string(objMainLevelManager.m_LasersReflected), c_yellow, c_yellow, c_yellow, c_white, 1);
	draw_text_color(360, 500, "Hits Taken: " + string(objMainLevelManager.m_HitsTaken), c_red, c_red, c_red, c_red, 1);
}





