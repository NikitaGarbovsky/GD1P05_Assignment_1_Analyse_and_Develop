switch (objPlayer.m_Orbs)
{
	case 1:
	{
		objPlayer.m_Orbs = 2;
		var FirstRectangle = instance_create_layer(x,y,layer,objPlayerRectangle)
		FirstRectangle.m_RectangleOrder = 1;
		objMainLevelManager.m_CompletedLevel1 = true;
		break;
	}
	case 2 :
	{
		objPlayer.m_Orbs = 3;
		var FirstRectangle = instance_create_layer(x,y,layer,objPlayerRectangle)
		FirstRectangle.m_RectangleOrder = 2;
		break;	
	}
	case 3 :
	{
		objPlayer.m_Orbs = 4;
		var FirstRectangle = instance_create_layer(x,y,layer,objPlayerRectangle)
		FirstRectangle.m_RectangleOrder = 3;
		break;	
	}
	case 4 :
	{
		objPlayer.m_Orbs = 5;
		var FirstRectangle = instance_create_layer(x,y,layer,objPlayerRectangle)
		FirstRectangle.m_RectangleOrder = 4;
		break;	
	}
}
objMainLevelManager.m_wavesHaveBeenReset = false;