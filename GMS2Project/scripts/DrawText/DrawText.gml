///@args (text,xPos,yPos,alignment)
var text = argument[0];
var textBoxX = argument[1];
var textBoxY = argument[2];
var align = argument[3];
var str_length = string_length(text);
var charX = textBoxX;
var charY = textBoxY;
for (var char = 0; char < str_length;char++){
	var charToDraw = GetCharacterID(string_char_at(text,char+1));
	
	draw_sprite_part(s_characters,0,charToDraw*8,0,8,8,charX,charY);
	charX += GetCharacterWidth(string_char_at(text,char+1))+1;
}