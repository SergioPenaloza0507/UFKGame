/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
text_high_score = "High score: " + string(global.hi_score);
text_score = "Score: " + string(global.score);
draw_set_font(puntajes)
draw_set_color(text_color);
draw_text(750,30, text_high_score);
draw_text(1050,30, text_score)