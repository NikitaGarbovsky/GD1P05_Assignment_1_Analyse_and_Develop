
if (objPlayer.m_Orbs == 1)
{
	if !instance_exists(objDrone)
	{
		if (m_CompletedIntro1 == true && m_CompletedIntro2 == false)
		{
			instance_create_layer(-134, 770, layer, objDefiantDrone)
			Spawn10by2DroneWave();
		}
		else if (m_CompletedIntro1 == true && m_CompletedIntro2 == true)
		{
				instance_create_layer(-134, 770, layer, objDefiantDrone)
		}
		else 
		{
			Spawn10by1DroneWave();	
		}
	}
}
if (objPlayer.m_Orbs == 2)
{
	if !instance_exists(objDrone)
	{
		
			Spawn10by2DroneWave();
		
	}
}
if (objPlayer.m_Orbs == 3)
{
	if !instance_exists(objDrone)
	{

		
		
			Spawn10by2DroneWave();
		
	}
}
if (objPlayer.m_Orbs == 4)
{
	if !instance_exists(objDrone)
	{

			Spawn10by2DroneWave();
		
	}
}
if (objPlayer.m_Orbs == 5)
{
	if !instance_exists(objDrone)
	{

			Spawn10by2DroneWave();
		
	}
}