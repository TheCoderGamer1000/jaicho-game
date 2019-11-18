/// @description Movimiento jugador


//....................MOVIMIENTO...................
//INPUT
if keyboard_check(vk_shift)
	{
		spd = run_spd
	}
else{spd = walk_spd}

hinput = keyboard_check(vk_right) - keyboard_check(vk_left);
vinput = keyboard_check(vk_down) - keyboard_check(vk_up);

//FISICAS
if(hinput !=0 or vinput !=0)
	{	 
		dir = point_direction(0,0,hinput,vinput);
		moveX = lengthdir_x(spd, dir)
		moveY = lengthdir_y(spd, dir)
		

//SPRITES
	switch(dir)
		{
		case 0: sprite_index = spr_player_right; break;
		case 90: sprite_index = spr_player_up; break;
		case 180: sprite_index = spr_player_left; break;
		case 270: sprite_index = spr_player_down; break;
		case 45: sprite_index = spr_player_up; break;
		case 135: sprite_index = spr_player_up; break;
		case 225: sprite_index = spr_player_down; break;
		case 315: sprite_index = spr_player_down; break;
		}
	}
else{image_index = 0;}

//COLISION
if place_meeting(x+moveX,y,obj_colision)
	{moveX = 0}
if place_meeting(x,y+moveY,obj_colision)
	{moveY = 0}

//REALIZAR MOVIMIENTO
if(hinput !=0 or vinput !=0)
{x += moveX; y += moveY;}


//.................................FullScreen..........................
tempo1segs += delta_time;
if keyboard_check(vk_f4)
   {
   if (tempo1segs >= 1 * 1000000)
		{
		if window_get_fullscreen()
			{
				window_set_fullscreen(false);
				tempo1segs = 0
			}
		else
			{
				window_set_fullscreen(true);
				tempo1segs = 0
			}
		}
   }