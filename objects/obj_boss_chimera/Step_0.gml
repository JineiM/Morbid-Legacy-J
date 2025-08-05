/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 24FFD240
/// @DnDArgument : "x" "-10"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_player_cat"
/// @DnDSaveInfo : "object" "obj_player_cat"
var l24FFD240_0 = instance_place(x + -10, y + 0, [obj_player_cat]);if ((l24FFD240_0 > 0)){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5F8C04D0
	/// @DnDParent : 24FFD240
	/// @DnDArgument : "steps" "2*60"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 2*60);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 319CB0CE
	/// @DnDParent : 24FFD240
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_chimera_attack"
	/// @DnDSaveInfo : "spriteind" "spr_chimera_attack"
	sprite_index = spr_chimera_attack;
	image_index += 0;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 554E9A26
else{	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 463865F5
	/// @DnDParent : 554E9A26
	/// @DnDArgument : "x" "-10"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_player_cat"
	/// @DnDSaveInfo : "object" "obj_player_cat"
	var l463865F5_0 = instance_place(x + -10, y + 0, [obj_player_cat]);if ((l463865F5_0 > 0)){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6C2C40D1
		/// @DnDApplyTo : other
		/// @DnDParent : 463865F5
		with(other) instance_destroy();}}