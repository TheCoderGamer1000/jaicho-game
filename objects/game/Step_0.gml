/// @description Inserte aquí la descripción
//FullScreen
if tempo1segs < 1000000 + 5000 {tempo1segs += delta_time;} else{tempo1segs = 1000000;} //evitar overflow
if keyboard_check(vk_f4) {
   if (tempo1segs >= 1000000) {
		if window_get_fullscreen() {window_set_fullscreen(false); tempo1segs = 0;}
		else {window_set_fullscreen(true); tempo1segs = 0;}
		}
   }

//Reiniciar al pulsar P
if keyboard_check(ord("P")) {game_restart();}


if firstSetUpDone = false {
	if tempo4segs < 4000000 + 5000 {tempo4segs += delta_time;} else{tempo4segs = 4000000;} //evitar overflow
	if tempo4segs >= 4000000 {
		room_goto_next()
		firstSetUpDone = true
	}
}


