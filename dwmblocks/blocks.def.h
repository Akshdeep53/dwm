//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"Temp (C/G): ", "printf '%s/%s\n' $(sensors | grep 'AMD TSI' | awk '{print $5}' | sed 's/+//') $(nvidia-smi | awk 'NR==10 {print $3}' | sed 's/C$/°C/')",	30,		0},
	{"Speicher: ", "free -h | awk '/^Speicher/ { print $3 }' | sed s/i//g",	30,		0},
	{"","/home/aksh/dwm/dwmblocks/scripts/volume.sh", 0, 11},
	{"", "date '+%b %d (%a) %I:%M%p'",					5,		0},
//	{"Home: ", "TZ='Asia/Calcutta' date +'%I:%M%p'",					5,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
