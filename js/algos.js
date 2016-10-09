/*PSEUDOCODE: RELEASE 0 ------------------->
Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
Create a counter that loops through each item in the array.
For each of these items, we need to find the length of chracters for each.
As the counter goes through each item, look for the longest phrase or word.
The longest word is compared to the next in the index, and if it is shorter, gets replaced. Keeps iterating through till the end until the longest is left.
return the longest phrase or word to the console.
*/

/*RELEASE 0:FUNCTION ------------------->*/
function findLongest(array){
var longestWord = " ";
for(var i = 0; i < array.length; i++){
	if(array[i].length > longestWord.length){
		longestWord = array[i];
	}

}
	return longestWord;
}

/*PSEUDOCODE: RELEASE 1 ------------------->
Write a function that takes two objects and checks to see if the objects share 
at least one key value pair.
create a boolean statement that compares the key value pairs of two hashy-type data
structures. 
If at least one of the key/value pairs from each object match, return a true statement.
*/

//RELEASE 1:FUNCTION ------------------->
function match_hashy(object1, object2) {
  var match = false;
  for (var i in object1) {
     if (object2.hasOwnProperty(i)) {
      if (object1[i] == object2[i]) {
         match = true;
        }
      }
    }
    console.log(match);
  }


 /*PSEUDOCODE: RELEASE 2 ------------------->
Write a function that takes an integer for length, and builds and returns
an array of strings of the given length.
The functions needs to take an integer argument.
using the alphabet return random strings equaling the integer.
create a variable that has all letters in it,
create an array to hold all strings
create counter that runs until number is met
make variable where word will be stored
create a random number variable using Math.floor and random
create a counter that goes up to 10 which runs through random letters
push the random alphabet string into word.
word is pushed to word array
loop restarts
*/

//RELEASE 2:FUNCTION ------------------->
function newWords(num){
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var wordArray = [];
  for (o = 0; o < num; o++) { 
  	var word = "";
  	var randNum = Math.floor((Math.random()*10) +1);
  	 for (var j = 0; j < randNum; j++){
    word += alphabet[Math.floor(Math.random()* alphabet.length)];
  }
  wordArray.push(word)
}
return(wordArray);
}
/* RELEASE 0: DRIVER CODE */

// var wordArray = ['monkey','harold','bobbit','turkey and chicken','sandwich'];

// findLongest(wordArray)


/* RELEASE 1: DRIVER CODE */

// var hashyType1 = {name: "Darboo", favphrase: "Kentucky Fried Rice"};
// var hashyType2 = {name: "Darboo Jr.", favphrase: "Kentucky Fried Rice"};

// match_hashy(hashyType1,hashyType2);

// var newHashy = {name: "Katinka", favphrase:"Better out that in, I alway say!"};
// var newHashy2 = {name: "Crosby", favphrase:"Insignias... Insignias"};

// match_hashy(newHashy, newHashy2);

/* RELEASE 2: DRIVER CODE */
	// newWords(2);
	// newWords(3);


for (i = 0; i < 10; i++){
	var newArray = newWords(Math.floor((Math.random()*10) +1));
	console.log("");
	console.log("Array Number " + (i + 1 ) + " is:" + newArray);
	console.log("The longest object in the array is:" + findLongest(newArray));
	console.log("");
}
	