switch (objPlayer.m_Orbs)
{
	case 1:
	{
		with(objNeutralDrone)
		{
			instance_destroy();
		}
		objPlayer.m_Orbs = 2;
		var FirstRectangle = instance_create_layer(x,y,layer,objPlayerRectangle)
		FirstRectangle.m_RectangleOrder = 1;
		objMainLevelManager.m_CompletedLevel1 = true;
		audio_play_sound(soundObtainOrb,0,0);
		break;
	}
	case 2 :
	{
		objPlayer.m_Orbs = 3;
		var FirstRectangle = instance_create_layer(x,y,layer,objPlayerRectangle)
		FirstRectangle.m_RectangleOrder = 2;
		audio_play_sound(soundObtainOrb,0,0);
		break;	
	}
	case 3 :
	{
		objPlayer.m_Orbs = 4;
		var FirstRectangle = instance_create_layer(x,y,layer,objPlayerRectangle)
		FirstRectangle.m_RectangleOrder = 3;
		audio_play_sound(soundObtainOrb,0,0);
		break;	
	}
	case 4 :
	{
		with(objNeutralDrone)
		{
			instance_destroy();
		}
		objPlayer.m_Orbs = 5;
		var FirstRectangle = instance_create_layer(x,y,layer,objPlayerRectangle)
		FirstRectangle.m_RectangleOrder = 4;
		audio_play_sound(soundObtainOrb,0,0);
		break;	
	}
}
objMainLevelManager.m_wavesHaveBeenReset = false;