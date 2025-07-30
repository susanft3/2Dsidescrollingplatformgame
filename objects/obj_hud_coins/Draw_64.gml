/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0A0A6289
/// @DnDComment : this is a null check. It checks if there's$(13_10)no player object because otherwise if the $(13_10)player object wasn't created in runtime yet,$(13_10)we'd crash. 
/// @DnDArgument : "obj" "obj_player "
/// @DnDArgument : "not" "1"
var l0A0A6289_0 = false;l0A0A6289_0 = instance_exists(obj_player );if(!l0A0A6289_0){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 621B88A5
	/// @DnDParent : 0A0A6289
	exit;}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 07D4E09E
/// @DnDComment : draws this coin object itself to show $(13_10)the coin image.  
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 64EA411D
/// @DnDArgument : "font" "font_opensans"
/// @DnDSaveInfo : "font" "font_opensans"
draw_set_font(font_opensans);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0BEEC938
/// @DnDComment : Draw the text with font set above. $(13_10)Relative checked so these coordinates $(13_10)are based from the sprite's origin. 
/// @DnDArgument : "x" "30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-15"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Coins.""
/// @DnDArgument : "var" "obj_player.coins "
draw_text(x + 30, y + -15, string("Coins.") + string(obj_player.coins ));