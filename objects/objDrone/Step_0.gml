// Destroys the drone if their hitpoints is 0 or lower
if (m_droneHitPoints <= 0)
{
	// We fade the drones out not immediately destorying them
	image_alpha -= 0.15;
	if (image_alpha < 0.0003)
	{
		instance_destroy();
	}
	
}
else {
	// By default drones spawn with no alpha, so we increase the alpha to make them visible.
	image_alpha += 0.003;
}