// Rotates a 2D vector counter clockwise
function rotate_2d(vector_2d, angle){
	deg2rad = 0.0174533;
	radians = deg2rad * angle;
	rotation_matrix = 
	[
		cos(radians), -sin(radians),
		sin(radians), cos(radians)
	];
	return mul_2d(rotation_matrix, vector_2d);
}

//multiplies 2x2 matrix with column vector 
function mul_2d(matrix, vector){
	ret = [
		dot_2d_vec([matrix[0], matrix[1]], vector), 
		dot_2d_vec([matrix[1], matrix[2]], vector)
	]; 
	return ret;
}

//dot product from two vectors
function dot_2d_vec(vector1, vector2){
	return vector1[0] * vector2[0] + vector1[1] * vector2[1];
}

//dot product with a vector and a scalar
function dot_2d(vector, scalar){
		return vector[0] * scalar + vector[1] * scalar;
}

//normalizes a vector
function normalize_2d(vector){
	length = length_2d(vector);
	if(length <= 0){
		return [0,0];	
	}
	return [vector[0] / length, vector[1] / length];
}

//gets length from a 2d vector
function length_2d(vector){
	return sqrt(power(vector[0],2) + power(vector[1],2));
}

//scales a 2d vector
function scale_2d(vector, scalar){
	return [vector[0] * scalar, vector[1] * scalar];	
}

//Adds a 2d vector to another
function add_2d(vector1, vector2){
	return [vector1[0] + vector2[0], vector1[1] + vector2[1]];
}

//Substract a 2D vector from another
function substract_2d(vector1, vector2){
	return [vector1[0] - vector2[0], vector1[1] - vector2[1]];
}