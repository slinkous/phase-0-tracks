var colors = ["blue", "green", "red", "purple"];
var horseNames = ["Cody", "Cheyenne", "Bubbles", "Macho"];

colors.push("yellow");
horseNames.push("Hawk");
console.log(colors, horseNames);


var horses = [];

for (var i = 0 ; i <= horseNames.length - 1; i++) {
	var horsey = {};
	horsey.name = horseNames[i];
	horsey.colors = colors[i];
	horses.push(horsey);
}
console.log(horses)

function Car(color, personality) {
	this.color = color;
	this.personality = personality;
	this.favoriteFood = "gasoline";

	this.driveCar = function driveCar(destination) {
		return "You have driven your " + this.personality + " " + this.color + " car to " + destination + ".";
	}
}


var personalities = ["angry", "joyful", "ornery", "grouchy", "tricksy"];
var cars = [];
for (var i = 0; i < colors.length; i++) {
	aCar = new Car(colors[i], personalities[i] )
	cars.push(aCar)
	}
//console.log(my_car.driveCar("Canadia"));

console.log(cars)

describe = "";
for (var i = 0; i < cars.length; i++) {
	describe += "You have a "+ cars[i].personality + " " + cars[i].color + " car who loves to eat " + cars[i].favoriteFood + ".";
	describe += "\n"
}
console.log(describe);