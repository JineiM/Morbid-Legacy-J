/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 21EBB8C3
/// @DnDComment : original $(13_10)
/// @DnDArgument : "expr" "keyboard_check(vk_right)-keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"
move_x = keyboard_check(vk_right)-keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 023CCE4F
/// @DnDArgument : "expr" "move_x*walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x*walk_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1782E57B
/// @DnDComment : if we are on the ground or within the trees$(13_10)
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l1782E57B_0 = instance_place(x + 0, y + 2, [collision_tilemap]);if ((l1782E57B_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B334D43
	/// @DnDParent : 1782E57B
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 36DDB22A
	/// @DnDParent : 1782E57B
	var l36DDB22A_0;l36DDB22A_0 = keyboard_check_pressed(vk_space);if (l36DDB22A_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17528D1D
		/// @DnDParent : 36DDB22A
		/// @DnDArgument : "var" "jumpboost"
		if(jumpboost == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6D07EA8D
			/// @DnDParent : 17528D1D
			/// @DnDArgument : "expr" "-jump_speed"
			/// @DnDArgument : "var" "move_y"
			move_y = -jump_speed;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17FC2A1C
		/// @DnDParent : 36DDB22A
		/// @DnDArgument : "var" "jumpboost"
		/// @DnDArgument : "value" "1"
		if(jumpboost == 1){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 45BF326E
			/// @DnDParent : 17FC2A1C
			/// @DnDArgument : "expr" "-jump_speed*2"
			/// @DnDArgument : "var" "move_y"
			move_y = -jump_speed*2;}}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7FE1EB27
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 78227469
	/// @DnDParent : 7FE1EB27
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 18A0F900
		/// @DnDParent : 78227469
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "move_y"
		move_y = 1;}}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7DCC62F9
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_deathzone"
var l7DCC62F9_0 = instance_place(x + 0, y + 2, [collision_deathzone]);if ((l7DCC62F9_0 > 0)){	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 34842F63
	/// @DnDParent : 7DCC62F9
	room_restart();}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 7A231F73
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "collision_tilemap"
move_and_collide(move_x, move_y, collision_tilemap,4,0,0,walk_speed,jump_speed);