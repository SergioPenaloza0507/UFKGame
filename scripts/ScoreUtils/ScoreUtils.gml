// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScorePoints(score_value){
	global.score += score_value;
	if(global.score > global.hi_score){
		global.hi_score = global.score;
	}
}