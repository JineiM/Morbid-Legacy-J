/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C5456A7
/// @DnDArgument : "var" "acid_attack"
/// @DnDArgument : "value" "1"
if(acid_attack == 1){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0FCC4314
	/// @DnDParent : 1C5456A7
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy_acid"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_acid"
	sprite_index = spr_enemy_acid;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0B305799
	/// @DnDApplyTo : {obj_player_cat}
	/// @DnDParent : 1C5456A7
	with(obj_player_cat) instance_destroy();}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 22A3E23A
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 562E622A
	/// @DnDParent : 22A3E23A
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "acid_attack"
	acid_attack += 0;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2D392509
	/// @DnDParent : 22A3E23A
	instance_destroy();}