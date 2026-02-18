/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 06C3EE11
/// @DnDArgument : "key" "vk_up"
var l06C3EE11_0;l06C3EE11_0 = keyboard_check(vk_up);if (l06C3EE11_0){	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 00EB373D
	/// @DnDParent : 06C3EE11
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "0.1"
	motion_add(image_angle, 0.1);}