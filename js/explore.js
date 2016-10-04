/*PSEUDOCODE ----------------------------------------------------------->
Have a string input
create a reverse function with the string as the argument
create a new variable to store reverse string
have a for loop with 'i' equal to lenght of string
subtracts for each letter until 'i' is equal to 0
return the reverse string.
*/

// reverse a string of characters
function reverse(str) {
	var rts = '';
	for (var i = str.length -1 ; i >= 0; i--)
		rts += str[i];
	return rts;
}
reverse("hello!");

 if(1 == 1){
 	reverse("hello!")
 }