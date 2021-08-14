/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var enemy = choose(asteroid,gato);
instance_create_layer(random_range(16, room_width-16), -16, layer, enemy);
alarm[0] = random_range((room_speed*2), (room_speed*5));