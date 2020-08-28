=begin
===== PROBLEM =====
What will line 9 log to the console and why?

/*0*/ let greeting = ["Hello"];
/*1*/
/*2*/ const test = arr => {
/*3*/ arr = ["ByeBye"];
/*4*/ arr.push("World!");
/*5*/ return arr;
/*6*/ }
/*7*/
/*8*/ test(greeting);
/*9*/ console.log(greeting);
=end

=begin
===== SOLUTION =====
It will log `["Hello"]` to the console.
When we call the function `test` on line 8, the parameter `arr` references the same array as the variable `greeting`. 
When `arr` is re-assigned on line 3, it no longer references the same array as the variable 'greeting'.
Mutating changes called on `arr` no longer affect the array `greeting` references, since `arr` now references another array.
Therefore, calling console.log on line 9 will print the array `["Hello"]` unchanged.

=end