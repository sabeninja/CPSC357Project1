import UIKit

/*:
 **SECTION A, Sum of powers**
 * Shuntaro Abe
 * *CPSC 357 Project 1*
 */


/*:
Pseudo-code:
 * create a function that returns strings and 2 string inputs
 * create a variable called sum and set it to 0
 * create a for loop that loops from 1 to m (inclusive)
 * do the number we are looping to the power of n in a closure to demonstrate closures
 * add to result every loop
 * after the loops ends, return sum
 */



/*:
 This closure was added as it was required for Section A. It handles the part where we have to use exponents. In this case, we cast i and n as Doubles as it's required for the pow function, then we cast it as the int to return.
 * param i: That is the current number we are on and the base of the exponent
 * param n: That is the exponent we want to use from input parameters in sum_of_powers
 * return: an int representing the result of the exponent result
 */
let closure_power:(Int, Int) -> Int = { (i: Int, n: Int) in
    return Int(pow(Double(i), Double(n)))
}


/*:
 This function handles the loop to add and calculate the final sum of powers. We take the exponent, as well as the number we want to go as input, then call our previous closure. It addes each result to our sum variable.
 * param n: The exponent we want to use
 * param m: The number we want to iterate to
 * return: the sum of powers after calculation
 */
func sum_of_powers(n: Int, m: Int) -> Int {
    var sum = 0;
    for i in 1...m{
        sum += closure_power(i,n)
    }
    print(sum)
    return sum;
}

//Testing
sum_of_powers(n:2,m:5)


