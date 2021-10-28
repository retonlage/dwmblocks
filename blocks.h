//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	// {"", "pomodoro_status", 					1, 0},
    // {"", "musicd _statusmessage",				1, 20 }, 
	{"", "vpn-status",							1, 0},
	{"", "networktraffic.sh",					1, 0},
	{"", "clock-status",						1, 0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = '|';
