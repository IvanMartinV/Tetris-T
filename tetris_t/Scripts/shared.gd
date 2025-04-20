extends Node

enum T1{
	cel_1, cel_2_h, cel_3_h, cel_3_c, I, O, T, J, L, S, Z
}


var cells = {
	T1.cel_1: [Vector2(0, 0)],
	#-------------------------------------------------------------------
	T1.cel_2_h: [Vector2(0, 0), Vector2(1, 0)],
	#-------------------------------------------------------------------
	T1.cel_3_h: [Vector2(-1, 0), Vector2(0, 0), Vector2(1, 0)],
	#-------------------------------------------------------------------
	T1.cel_3_c: [Vector2(-1, 0), Vector2(0, 0), Vector2(0, 1)],
	#-------------------------------------------------------------------

	T1.I: [Vector2(-1, 0), Vector2(0, 0), Vector2(1, 0), Vector2(2, 0)],
	#-------------------------------------------------------------------
	T1.J: [Vector2(-1, 1), Vector2(-1, 0), Vector2(0,0), Vector2(1, 0 )],
	#-------------------------------------------------------------------
	T1.L: [Vector2(1,1), Vector2(-1, 0), Vector2(0,0), Vector2(1,0)],
	#-------------------------------------------------------------------
	T1.O: [Vector2(0,1), Vector2(1,1), Vector2(0,0), Vector2(1,0)],
	#-------------------------------------------------------------------
	T1.S: [Vector2(0,1), Vector2(1,1), Vector2(-1, 0), Vector2(0,0)],
	#-------------------------------------------------------------------
	T1.T: [Vector2(0,1), Vector2(-1, 0), Vector2(0,0), Vector2(1,0)],
	#-------------------------------------------------------------------
	T1.Z: [Vector2(-1, 1), Vector2(0, 1), Vector2(0,0), Vector2(1, 0)]
}

var wall_kicks_i = [
	[Vector2(0,0), Vector2(-2,0), Vector2(1,0), Vector2(-2,-1), Vector2(1,2)],
	[Vector2(0,0), Vector2(2,0), Vector2(-1, 0), Vector2(2,1), Vector2(-1, -2)],
	[Vector2(0,0), Vector2(-1, 0), Vector2(2,0), Vector2(-1,2), Vector2(2, -1)],
	[Vector2(0,0), Vector2(1,0), Vector2(-2, 0), Vector2(1, -2), Vector2(-2, 1)],
	[Vector2(0,0), Vector2(2,0), Vector2(-1, 0), Vector2(2,1), Vector2(-1, -2)],
	[Vector2(0,0), Vector2(-2,0), Vector2(1, 0), Vector2(-2, -1), Vector2(1, 2)],
	[Vector2(0,0), Vector2(1,0), Vector2(-2,0), Vector2(1, -2), Vector2(-2,1)],
	[Vector2(0,0), Vector2(-1, 0), Vector2(2, 0), Vector2(-1,2), Vector2(2, -1)]
]

var wall_kicks_jlostz = [
	[Vector2(0,0), Vector2(-1,0), Vector2(-1,1), Vector2(0,-2), Vector2(-1, -2)],
	[Vector2(0,0), Vector2(1,0), Vector2(1, -1), Vector2(0,2), Vector2(1, 2)],
	[Vector2(0,0), Vector2(1, 0), Vector2(1,-1), Vector2(0,2), Vector2(1, 2)],
	[Vector2(0,0), Vector2(-1,0), Vector2(-1, 1), Vector2(0, -2), Vector2(-1, -2)],
	[Vector2(0,0), Vector2(1,0), Vector2(1, 1), Vector2(0,-2), Vector2(1, -2)],
	[Vector2(0,0), Vector2(-1,0), Vector2(-1, -1), Vector2(0, 2), Vector2(-1, 2)],
	[Vector2(0,0), Vector2(-1,0), Vector2(-1,-1), Vector2(0, 2), Vector2(-1, 2)],
	[Vector2(0,0), Vector2(1, 0), Vector2(1, 1), Vector2(0,-2), Vector2(1, -2)]
]

#var data = {
#	T1.I: preload("res://Resources/i_piece_data.tres"),
#	T1.J: preload("res://Resources/j_piece_data.tres"),
#	T1.L: preload("res://Resources/l_piece_data.tres"),
#	T1.O: preload("res://Resources/o_piece_data.tres"),
#	T1.S: preload("res://Resources/s_piece_data.tres"),
#	T1.T: preload("res://Resources/t_piece_data.tres"),
#	T1.Z: preload("res://Resources/z_piece_data.tres")
#}

var clockwise_rotation_matrix = [Vector2(0, -1), Vector2(1, 0)]
var counter_clockwise_rotation_matrix = [Vector2(0,1), Vector2(-1, 0)]
