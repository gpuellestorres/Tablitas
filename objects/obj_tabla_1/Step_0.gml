if(mouse_check_button_pressed(1))
{
	if(position_meeting(mouse_x, mouse_y, id))
	{
		selected = true;
	}
	else 
	{
		selected = false;
	}
}

var up = false;
var down = false;
var left = false;
var right = false;

if (keyboard_check_pressed(vk_up)
	|| keyboard_check_pressed(ord("W"))
	|| (selected && mouse_check_button(1) && mouse_y < y)
)
{
	up = true;
}
else if(keyboard_check_pressed(vk_down)
	|| keyboard_check_pressed(ord("S"))
	|| (selected && mouse_check_button(1) && mouse_y > y + 64)
)
{
	down = true;
}
else if(keyboard_check_pressed(vk_left)
	|| keyboard_check_pressed(ord("A"))
	|| (selected && mouse_check_button(1) && mouse_x < x)
)
{
	left = true;
}
else if(keyboard_check_pressed(vk_right)
	|| keyboard_check_pressed(ord("D"))
	|| (selected && mouse_check_button(1) && mouse_x > x + 64)
)
{
	right = true
}


if(selected)
{
	newX = x;
	newY = y;
	var upDown = 64;
	var upDown2 = 64;
	
	if(up && y>= 64)
	{
		newY -= 64;
		upDown = 0;
		upDown2 = 0;
	}
	else if(down && y < 128)
	{
		newY += 64;
	}
	if(left && x>= 64)
	{
		newX -= 64;
		upDown2 = 0;
	}
	else if(right && x <= 192)
	{
		newX += 64;
		upDown2 = 0;
	}
	
	if(!position_meeting(newX, newY + upDown, all)
		&& !position_meeting(newX, newY + upDown2, all))
	{		
		x = newX;
		y = newY;
	}
}
	