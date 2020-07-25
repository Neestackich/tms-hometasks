import UIKit

struct Passport {
    let number: String
    let series: String
}

struct PassportFacoty {
    func generatePassport(_ _number: String, _ _series: String) -> Passport? {
        if let numberIntVal = Int(_number), let seriesIntVal = Int(_series) {
            if numberIntVal >= 0 && numberIntVal <= 9999999 && seriesIntVal >= 0 && seriesIntVal <= 9999 {
                return Passport(number: "", series: "")
            }
        }
        
        return nil
    }
}

class Human {
    let name: String
    var age: Int
    var isWalking: Bool
    var passport: Passport?
    
    convenience init() {
        self.init("NoName", 0, false)
    }
    
    init(_ name: String, _ age: Int, _ isWalking: Bool) {
        self.name = name
        self.age = age
        self.isWalking = isWalking
    }
    
    func getInfo() {
        print("Name: \(name)\nAge: \(age)\nIs walking currently: \(isWalking)")
    }
    
    func walk() {
        if isWalking {
            isWalking = false
            print("Stationary")
        } else {
            isWalking = true
            print("Walking")
        }
    }
}
