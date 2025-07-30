/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54E2BAAB
/// @DnDComment : original (no gamepad support) method$(13_10)$(13_10)1 would be pressing right$(13_10)-1 would be pressing left $(13_10)0 would be no input
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 76B7B087
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "move_x*walk_speed"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 39CDD3CE
/// @DnDArgument : "msg" "move_x"
show_debug_message(string(move_x));

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1561A01B
/// @DnDComment : if we are on the ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collission_tilemap"
var l1561A01B_0 = instance_place(x + 0, y + 2, [collission_tilemap]);if ((l1561A01B_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D55109E
	/// @DnDComment : reset y movement
	/// @DnDParent : 1561A01B
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 3AC52CAF
	/// @DnDDisabled : 1
	/// @DnDParent : 1561A01B
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37E17033
	/// @DnDDisabled : 1
	/// @DnDParent : 3AC52CAF
	/// @DnDArgument : "expr" "-jump_speed"
	/// @DnDArgument : "var" "move_y"

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 597F5A18
	/// @DnDComment : is there a wall?
	/// @DnDParent : 1561A01B
	/// @DnDArgument : "x" "x+(25*sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "collission_tilemap"
	var l597F5A18_0 = instance_place(x+(25*sign(move_x)), y + 0, [collission_tilemap]);if ((l597F5A18_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4C6C88F7
		/// @DnDComment : jump over it!
		/// @DnDParent : 597F5A18
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 17576003
	/// @DnDComment : is there a gap in the floor? 
	/// @DnDParent : 1561A01B
	/// @DnDArgument : "x" "x+(30*sign(move_x))"
	/// @DnDArgument : "y" "y+50"
	/// @DnDArgument : "object" "collission_tilemap"
	/// @DnDArgument : "not" "1"
	var l17576003_0 = instance_place(x+(30*sign(move_x)), y+50, [collission_tilemap]);if (!(l17576003_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 60E094D1
		/// @DnDComment : turn around for movement on x
		/// @DnDParent : 17576003
		/// @DnDArgument : "expr" "move_x*-1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x*-1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1423ED69
		/// @DnDComment : jump
		/// @DnDParent : 17576003
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 029A3EF8
/// @DnDComment : otherwise- if not on the ground
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38BBB1B5
	/// @DnDParent : 029A3EF8
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F54D55C
		/// @DnDComment : add gravity
		/// @DnDParent : 38BBB1B5
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;}}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 42D8EFD0
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collission_tilemap_death_zone"
var l42D8EFD0_0 = instance_place(x + 0, y + 2, [collission_tilemap_death_zone]);if ((l42D8EFD0_0 > 0)){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 31AA9ED7
	/// @DnDParent : 42D8EFD0
	instance_destroy();}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 4FC77E39
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "collission_tilemap"
move_and_collide(move_x, move_y, collission_tilemap,4,0,0,walk_speed,jump_speed);