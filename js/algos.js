/*
Release 0: Longest Word Function

(borrowing from the sorting methods )
input: array of words
output: string of longest word
-split array in half (add nil for odd number?)
-loop through arrays, comparing each, and adding the higher value to new array
-repeat until the array is size 1 (or the first element in array B is nil?)
-return a string equal to the value of the remaining array
*/

function BiggestString (stringArray) {
	//returns an array of two arrays, inserting an empty string so that they are the same length
	function SplitArray(anArray) {
		var arrayA =[];
		var arrayB =[];
		arrayA = anArray.slice (0,(anArray.length/2));
		arrayB = anArray.slice ((anArray.length/2));
		if ( (anArray.length % 2) != 0) {
			arrayA.push("");
		}
		splitArray = [arrayA, arrayB];
		return splitArray;
	}
	//returns an array with the higher value between the same position of each array
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
	do {
		testArrays = SplitArray(stringArray);
		stringArray = CompareArrays(testArrays[0], testArrays[1]);
	}while (testArrays[0][0] != "")

	longestString = stringArray[0];
	return longestString;
}

/*
Release 1: Key-Value Match
input: two objects
output: boolean
1. Make two arrays of the string names of the key values of each object
2. Iterate through each value of one array looking for a match in the second
3. Set a value initialized as false to true if a match is found
*/

function KeyMatch (object1, object2){
	function GetKeys (object1){
		objArray =[]
		for (var prop in object1) {
    if (object1.hasOwnProperty(prop)) {
        objArray.push(prop);
      }
    }
    return objArray;
	}
	keyArray1 = GetKeys(object1);
	keyArray2 = GetKeys(object2);
	foundMatch = false;

	//loop to search for matches

	for (var i = 0; i < keyArray1.length; i++){
		for(var j = 0; j < keyArray2.length; j++) {
			if ( keyArray1[i] == keyArray2[j]){
				foundMatch = true;
				break;
			}
		}
	}
	return foundMatch;
}


// Driver Code
sampleArray = ["a","bb","cccc","dd","e","fffff"];
sampleArray2 = ["aaaaa","bb","ccccccc","d","e"];
sampleObject1 ={name:"Bernard", language:"English"};
sampleObject2 = {language: "Swahili", age: 35}

// console.log(BiggestString(sampleArray));
// console.log(BiggestString(sampleArray2));
console.log(KeyMatch(sampleObject1, sampleObject2));
