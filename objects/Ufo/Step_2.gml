/// @description Increase score with lifetime
// You can write your code in this editor
if(!global.paused){
	global.score += 1 * global.Mic2Sec * delta_time;
	if(global.hi_score < global.score){
		global.hi_score = global.score;
	}
}