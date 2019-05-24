enum DIR{
	up,
	right,
	down,
	left
}
enum CTRL{
	upHeld,
	upPressed,
	rightHeld,
	rightPressed,
	downHeld,
	downPressed,
	leftHeld,
	leftPressed,
	action1Held,
	action1Pressed,
	action2Held,
	action2Pressed,
	startPressed,
	selectPressed
}
enum PLAYERSTATE{
	standing,
	running,
	jumping,
	falling,
	areaSwitch,
	dead
}
enum PARTICLE{
	whitepixel,
	sprite
}
enum ALIGNMENT{
	left,
	center,
	right
}
enum MENU{
	start,
	options,
	newgame //only shown if a save game exists, asking the player to overwrite the save
}
enum COLOR{
	darkR,
	darkG,
	darkB,
	lightR,
	lightG,
	lightB
}
enum COLORTHEME{
	grey,
	bw,
	death
}