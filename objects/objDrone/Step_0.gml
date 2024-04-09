
// By default drones spawn with no alpha, so we increase the alpha to make them visible.
image_alpha += 0.003;

// Destorys the drone if their hitpoints is 0 or lower
if (m_droneHitPoints <= 0)
{
	instance_destroy();
}
