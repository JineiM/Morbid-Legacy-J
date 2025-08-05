/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2E68D8B9
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "spr_enemy_acid"
/// @DnDSaveInfo : "spriteind" "spr_enemy_acid"
sprite_index = spr_enemy_acid;
image_index += 0;

/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 0600744C
room_restart();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 78D78E96
/// @DnDArgument : "var" "obj_boss_chimera"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "1"
if(!(obj_boss_chimera == 1)){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 00F1636F
	/// @DnDParent : 78D78E96
	instance_destroy();}