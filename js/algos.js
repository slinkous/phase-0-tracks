/*
Longest Word Function
input: array of words
output: string of longest word
-split array in half (add nil for odd number?)
-loop through arrays, comparing each, and adding the higher value to new array
-repeat until the array is size 1 (or the first element in array B is nil?)
-return a string equal to the value of the remaining array
*/

function BiggestString (string_array) {
	function SplitArray(anArray) {
		var arrayA =[];
		var arrayB =[];
		arrayA = anArray.slice (0,(anArray.length/2));
		arrayB = anArray.slice ((anArray.length/2));
		if ( (anArray.length % 2) != 0) {
			arrayA.push(null);
		}
		splitArray = [arrayA, arrayB];
		return splitArray;
	}
	return SplitArray(string_array)
}

sampleArray = ["a","b","c","d","e","f"];
sampleArray2 = ["a","b","c","d","e"];

console.log(BiggestString(sampleArray));
console.log(BiggestString(sampleArray2));

