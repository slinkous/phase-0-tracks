// Reverse Function
// Reads each character of a string from end to beginning and adds each character to a new string until it has iterated as many times as the length of the original string. Then it returns that string. 

function reverse(aString){
	var reversedString = "";
	for (var i = (aString.length -1); i >= 0; i--){
		reversedString += aString[i];
	}
	return reversedString;
}

console.log(reverse("vacuum"));

var turnAround = reverse("brighteyes");

if (reverse("polarity") == "ytiralop") {
	console.log("Success! You reversed the polarity.")
}
else {
	console.log("Something isn't working here.")
}