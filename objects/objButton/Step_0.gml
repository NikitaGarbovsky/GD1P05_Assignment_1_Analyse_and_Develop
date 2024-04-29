
if (mouse_check_button_pressed(mb_left))
{
	if(mouse_x > bbox_left) && (mouse_x < bbox_right)
	&& (mouse_y > bbox_top) && (mouse_y < bbox_bottom)
	{
		m_process_clicked();
	}
}







