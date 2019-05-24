///@args (text,xPos,yPos,alignment)

var longestLine = 0;
var boxText = argument[0];
var boxX = argument[1];
var boxY = argument[2];
var textAlign = argument[3];
var lineCount = 0;

//first, lets determine which text line is the longest
var currentLine = 0;
for (var char = 0;char < string_length(boxText);char++){
	var currentChar = string_char_at(boxText,char+1);
	if (currentChar != "#"){
		currentLine += GetCharacterWidth(currentChar)+1;
		if (currentLine > longestLine){
			longestLine = currentLine;
		}
	} else{
		lineCount++;
		currentLine = 0;
	}
}

var boxWidth = longestLine + 10;
var boxHeight = lineCount * 10 + 5;

draw_set_color(c_black);
draw_rectangle(boxX-boxWidth/2,boxY-boxHeight/2,boxX+boxWidth/2,boxY+boxHeight/2,0);

draw_set_color(c_white);
draw_rectangle(boxX-boxWidth/2,boxY-boxHeight/2,boxX+boxWidth/2,boxY+boxHeight/2,1);

var textX = boxX-boxWidth/2+5;
var textY = boxY-boxHeight/2+5;

var readPosition = 1;
for (var line = 0; line < lineCount; line++){
	var currentTextLine = "";
	var currentChar = "";
	var lineLength = 0;
	while (currentChar != "#"){
		currentChar = string_char_at(boxText,readPosition);
		lineLength+= GetCharacterWidth(currentChar)+1;
		currentTextLine += currentChar;
		readPosition ++;
	}
	var xOffset = 0;
	switch (textAlign){
		case ALIGNMENT.center:
			xOffset = abs(longestLine-lineLength)/2;
		break;
		case ALIGNMENT.right:
			xOffset = abs(longestLine-lineLength);
		break;
	}
	DrawText(currentTextLine,textX+xOffset,textY);
	textY +=10;
	
	
}

