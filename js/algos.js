/*
Longest Word Function
input: array of words
output: string of longest word
-split array in half (add nil for odd number?)
-loop through arrays, comparing each, and adding the higher value to new array
-repeat until the array is size 1 (or the first element in array B is nil?)
-return a string equal to the value of the remaining array
*/

function BiggestString (stringArray) {
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
	function CompareArrays(arrayA,arrayB){
		biggerArray = [];
		for (var i = 0; i < arrayA.length; i++){
			if (arrayA[i].length >= arrayB[i].length) {
				biggerArray.push (arrayA[i]);
			}
			else {
				biggerArray.push (arrayB[i]);
			}
		}
		return biggerArray;
	}
	return CompareArrays(SplitArray(stringArray)[0],SplitArray(stringArray)[1]);
}

sampleArray = ["a","bb","cccc","dddd","eee","fffff"];
sampleArray2 = ["a","b","c","d","e"];

console.log(BiggestString(sampleArray));
// console.log(BiggestString(sampleArray2));

