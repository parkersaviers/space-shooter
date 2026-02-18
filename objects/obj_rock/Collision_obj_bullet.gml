/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4888CAEC
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 711A7860
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
effect_create_above(0, x + 0, y + 0, 1, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 0078F405
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27823776
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_rock_big"
if(sprite_index == spr_rock_big){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 796CF175
	/// @DnDParent : 27823776
	/// @DnDArgument : "spriteind" "spr_rock_small"
	/// @DnDSaveInfo : "spriteind" "spr_rock_small"
	sprite_index = spr_rock_small;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4928498E
	/// @DnDParent : 27823776
	/// @DnDArgument : "function" "instance_copy"
	/// @DnDArgument : "arg" "true"
	instance_copy(true);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0FEC323B
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52089A59
	/// @DnDParent : 0FEC323B
	/// @DnDArgument : "var" "instance_number(obj_rock)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "12"
	if(instance_number(obj_rock) < 12){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1E35A378
		/// @DnDParent : 52089A59
		/// @DnDArgument : "spriteind" "spr_rock_big"
		/// @DnDSaveInfo : "spriteind" "spr_rock_big"
		sprite_index = spr_rock_big;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BECA09B
		/// @DnDParent : 52089A59
		/// @DnDArgument : "expr" "-100"
		/// @DnDArgument : "var" "x"
		x = -100;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0DE1AEB5
	/// @DnDParent : 0FEC323B
	else{	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 261979DE
		/// @DnDParent : 0DE1AEB5
		instance_destroy();}}