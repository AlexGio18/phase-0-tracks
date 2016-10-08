/*PSEUDOCODE: RELEASE 0 ------------------->
Write a function that takes an array of words or phrases and returns the longest word or phrase in the array.
Create a counter that loops through each item in the array.
For each of these items, we need to find the length of chracters for each.
As the counter goes through each item, look for the longest phrase or word.
The longest word is compared to the next in the index, and if it is shorter, gets replaced. Keeps iterating through till the end until the longest is left.
return the longest phrase or word to the console.
*/

function findLongest(array){
var longestWord = " ";
for(var i = 0; i < array.length; i++){
	if(array[i].length > longestWord.length){
		longestWord = array[i];
	}

}
	console.log(longestWord);
}

/* RELEASE 0: DRIVER CODE */

var wordArray = ['monkey','harold','bobbit','turkey and chicken','sandwich'];

findLongest(wordArray)

/*PSEUDOCODE: RELEASE 0 ------------------->
Write a function that takes two objects and checks to see if the objects share 
at least one key value pair.
create a boolean statement that compares the key value pairs of two hashy-type data
structures. 
If at least one of the key/value pairs from each object match, return a true statement.
*/
