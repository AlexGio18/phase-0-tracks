var colors = ["teal", "fuschia", "jade", "tangerine"]

var horseNames = ["Ed", "Silver", "Bojack", "Seabiscuit"]


colors.push("lavender");

horseNames.push("Lucky");

//console.log(colors);

var horseColors = {}

for (var i = 0; i < horseNames.length; i++){
	horseColors[horseNames[i]] = colors[i];
}

console.log(horseColors);