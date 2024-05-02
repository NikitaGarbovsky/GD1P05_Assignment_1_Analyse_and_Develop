draw_set_font(fntScoreText);
if (m_DronesDestroyed != 0 && room_get_name(room) != "roomGameOver" && m_HasWon == false)
{
	draw_text_color(60, 20, "Drones Destroyed: " + string(m_DronesDestroyed), c_green, c_green, c_green, c_green, 1);
}
if (m_LasersReflected != 0 && room_get_name(room) != "roomGameOver" && m_HasWon == false)
{
	draw_text_color(380, 20, "Laser Shots Reflected: " + string(m_LasersReflected), c_yellow, c_yellow, c_yellow, c_white, 1);
}
if (m_HitsTaken != 0 && room_get_name(room) != "roomGameOver" && m_HasWon == false)
{
	draw_text_color(800, 20, "Hits Taken: " + string(m_HitsTaken), c_red, c_red, c_red, c_red, 1);
}









