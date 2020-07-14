import UIKit

//ч-з цикл
var result: Int = 1;

for numberToCalc in 1...10 {
    for member in 1...numberToCalc {
        result *= member;
        
        if(member == numberToCalc) {
            print("Факториал числа \(numberToCalc): \(result)");
            
            result = 1;
        }
    }
}

print(String(repeating: "-", count: 50));

//ч-з ф-цию
func factorial(_ numberToCalc: Int) -> Int {
    var result: Int = numberToCalc;
    
    if result != 1 {
        result *= factorial(result - 1);
    }
    
    return result;
}

for numberToCalc in 1...10 {
    print("Факториал числа \(numberToCalc): \(factorial(numberToCalc))");
}
