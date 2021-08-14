/// @description progresses game
// You can write your code in this editor

if(!global.paused){
	global.progress += progression_increase * global.Mic2Sec * delta_time;
}