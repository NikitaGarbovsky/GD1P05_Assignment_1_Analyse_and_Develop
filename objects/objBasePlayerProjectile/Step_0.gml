var m_x1 = x - 10;
var m_x2 = x + 10;
var m_y1 = y - 5;
var m_y2 = y + 5;

UpwardDirection2 = { x : -5, y : -9 };
UpwardDirection3 = { x : 0, y : -10 };
UpwardDirection4 = { x : 5, y : -9 };
if(m_ShotFromPlayer == true)
{
	UpwardDirection1 = { x : -5, y : 0 };
	UpwardDirection5 = { x : 5, y : 0 };
}
else
{
	UpwardDirection1 = { x : -5, y : -10 };
	UpwardDirection5 = { x : 5, y : -10 };
}


with (objDrone)
{
	// This code utilizes a basic form of circular collisions using a distance vs distance measurement

	// Grabs the distance from this projectile to all other enemy instances.
	var dist = getDistance(x,y,other.x, other.y);
	// If this distance is less than (drone radius plus this projectile radius)
	if (dist < (m_droneCollisionRadius + other.m_basePlayerProjectileRadius))
	{	// Do damage
		if(m_droneIsShielded == true)
		{
			m_droneIsShielded = false;
		}
		else 
		{
			m_droneHitPoints -= other.m_basePlayerProjectileDamage;
		}
		instance_destroy(other);
	}
}
if (m_ConfiguredDirection == false)
{
	// Launches the projectile towards a certain direction
	switch (m_UpwardDirectionNumber)
	{
		case 1 :
		{
			Process_Shot(UpwardDirection1);
			image_angle = getAngleFacingPointDeg(UpwardDirection1.x , UpwardDirection1.y )
			break;
		}
		case 2 :
		{
			Process_Shot(UpwardDirection2);
			image_angle = getAngleFacingPointDeg(x - 1500  , y + 500) 
			break;
		}
		case 3 :
		{
			Process_Shot(UpwardDirection3);
			image_angle = getAngleFacingPointDeg(UpwardDirection3.x , UpwardDirection3.y ) 
			break;
		}
		case 4 :
		{
			Process_Shot(UpwardDirection4);
			image_angle = getAngleFacingPointDeg(UpwardDirection4.x + x , UpwardDirection4.y + y) 
			break;
		}
		case 5 :
		{
			Process_Shot(UpwardDirection5);
			image_angle = getAngleFacingPointDeg(UpwardDirection5.x , UpwardDirection5.y) 
			break;
		}
	}
	m_ConfiguredDirection = true;
}


vec2Add(m_v2Position, m_v2Velocity)

x = m_v2Position.x;
y = m_v2Position.y;


// Checks for collision from the players base attack
// 


if instance_exists(objNeutralDrone)
{
	var enemy = instance_nearest(x, y, objNeutralDrone)
	if(m_x1 >= enemy.m_NDroneX1 && m_x2 <= enemy.m_NDroneX2 )
	{
		if(m_y1 >= enemy.m_NDroneY1 && m_y2 <= enemy.m_NDroneY2 )
		{
			instance_destroy(self);
			enemy.m_DeflectShot = true;
		}
	}
}
if instance_exists(objPlayerRectangle)
{
	var enemy = instance_nearest(x, y, objPlayerRectangle)
	if(m_x1 >= enemy.m_NDroneX1 && m_x2 <= enemy.m_NDroneX2 )
	{
		if(m_y1 >= enemy.m_NDroneY1 && m_y2 <= enemy.m_NDroneY2 )
		{
			instance_destroy(self);
			enemy.m_DeflectShot = true;
		}
	}
}

if(y < 0)
{
	instance_destroy();
}


