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

// Release 2: Generate Random Data
// input: number of words to generate
// output: array of # strings of length 0 - 10

function MakeData (numberOfWords){
	aLongString = "Mass public education is one of the great achievements of American society. It has had many dimensions. One purpose was to prepare independent farmers for life as wage laborers who would tolerate what they regarded as virtual slavery. The coercive element did not pass without notice. Ralph Waldo Emerson observed that political leaders call for popular education because they fear that 'This country is filling up with thousands and millions of voters, and you must educate them to keep them from our throats.' But educated the right way: Limit their perspectives and understanding, discourage free and independent thought, and train them for obedience. The “vile maxim” and its implementation have regularly called forth resistance, which in turn evokes the same fears among the elite. Forty years ago there was deep concern that the population was breaking free of apathy and obedience. At the liberal internationalist extreme, the Trilateral Commission – the nongovernmental policy group from which the Carter Administration was largely drawn – issued stern warnings in 1975 that there is too much democracy, in part due to the failures of the institutions responsible for 'the indoctrination of the young.' On the right, an important 1971 memorandum by Lewis Powell, directed to the U.S. Chamber of Commerce, the main business lobby, wailed that radicals were taking over everything – universities, media, government, etc. – and called on the business community to use its economic power to reverse the attack on our prized way of life – which he knew well. As a lobbyist for the tobacco industry, he was quite familiar with the workings of the nanny state for the rich that he called 'the free market.'";
//long string length = 1708
	stringCollection = [];

	function MakeString (){
		randomStart = Math.floor(Math.random()*1700);
		randomStart += aLongString.slice(randomStart).indexOf(" ");
		appropriateLength = aLongString.slice(randomStart+1).indexOf(" ");
		newString = aLongString.substr(randomStart+1, appropriateLength);
		console.log(newString);
		return newString
	}
	function UniqueLength(aString){
			uniqueLength = false;
			for (var i = 0 ; i < stringCollection.length; i++){
				if (newString.length != stringCollection[i].length){
					uniqueLength = true;
				}
				else{
					console.log("not unique enough")
				}
			}
			return uniqueLength;
		}
	while (stringCollection.length < numberOfWords) {
		newString = MakeString();
		stringCollection.push(newString)
	}	
 return stringCollection;
}
console.log(MakeData(10));


// Driver Code
// sampleArray = ["a","bb","cccc","dd","e","fffff"];
// sampleArray2 = ["aaaaa","bb","ccccccc","d","e"];
// sampleObject1 ={name:"Bernard", language:"English"};
// sampleObject2 = {language: "Swahili", age: 35}

// console.log(BiggestString(sampleArray));
// console.log(BiggestString(sampleArray2));
// console.log(KeyMatch(sampleObject1, sampleObject2));
>>>>>>> da68a3ff5bc7ce39e43f6162426357ed7451471b
