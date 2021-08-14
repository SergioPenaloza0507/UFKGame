// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SerializeData(){
	var data_save = {
		hi_score : global.hi_score
	}
	
	var json = json_stringify(data_save);
	var buffer = buffer_create(string_byte_length(json) + 1, buffer_fixed, 1);
	buffer_write(buffer, buffer_string, json);
	buffer_save(buffer, "saveData.save");
	buffer_delete(buffer);
	show_debug_message("Game Saved! " + json);
}

function DeserializeData(){
	if(file_exists("saveData.save")){
		var buffer = buffer_load("saveData.save");
		var str = buffer_read(buffer, buffer_string);
		var loadData = json_parse(str);
		global.hi_score = loadData.hi_score;
	}
	else{
		show_debug_message("First time game, setting default");
		global.hi_score = 0;
	}
}