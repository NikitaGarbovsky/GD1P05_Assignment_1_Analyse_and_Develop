
draw_self();

// Checks if debug mode is on, if it is enable the collision radius outline.
if(objDebugManager.m_DebugMode == true)
{
	drawCollisionCircle(x, y, m_droneCollisionRadius);
}
