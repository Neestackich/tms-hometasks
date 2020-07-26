import UIKit

func factorial(_ numberToCount: Int) -> Int {
    var result: Int = numberToCount;
    
    if(numberToCount != 1) {
        result *= factorial(numberToCount - 1);
    }
    
    return result;
}

print(factorial(3));
print(factorial(4));
print(factorial(5));
print(factorial(6));
