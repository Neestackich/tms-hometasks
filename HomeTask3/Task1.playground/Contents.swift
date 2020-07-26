import UIKit

var passportsList: Dictionary<String, String> = [:]

struct Passport {
    let number: String
    let series: String
}

enum StructType {
    case Passport
    case Human
}

struct ElementFacoty {
    func elementSelection(option: StructType) -> Void {
        switch option {
        case .Passport:
            generatePassport("9999", "9999", "Pavel", "Petrov")
        case .Human:
            generateHuman("John", "Mc'O'Nill", 29, true)
        }
    }
    
    func generatePassport(_ number: String, _ series: String, _ name: String, _ surname: String) -> Passport? {
        if passportsList[number + series] == nil {
            if let numberIntVal = Int(number), let seriesIntVal = Int(series) {
                if numberIntVal >= 0 && numberIntVal <= 9999999 && seriesIntVal >= 0 && seriesIntVal <= 9999 {
                    passportsList[number + series] = name + " " + surname
                    
                    return Passport(number: "", series: "")
                }
            }
        }
        
        return nil
    }
    
    func generateHuman(_ name: String, _ surname: String, _ age: Int, _ status: Bool) -> Human {
        return Human(name, surname, age, status)
    }
}

class Human {
    let name: String
    let surname: String
    var age: Int
    var isWalking: Bool
    var passport: Passport?
    
    convenience init() {
        self.init("NoName", "NoSurname", 0, false)
    }
    
    init(_ name: String, _ surname: String, _ age: Int, _ isWalking: Bool) {
        self.name = name
        self.surname = surname
        self.age = age
        self.isWalking = isWalking
    }
    
    func getInfo() {
        print("Name: \(name)\nSurname: \(surname)\nAge: \(age)\nIs walking currently: \(isWalking)")
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

class SpiderMan: Human {
    var isShooting: Bool = false
    
    func webShot() {
        if isShooting {
            isShooting = false
            print("Пиу пиу")
        } else {
            isShooting = true
            print("Паутинка кончилась(9((")
        }
    }
    
    override func walk() {
        if isWalking {
            isWalking = false
            print("Сидит")
        } else {
            isWalking = true
            print("Ползет")
        }
    }
    
    override func getInfo() {
        print("Name: \(name)\nSurname: \(surname)\nAge: \(age)\nIs walking currently: \(isWalking)\nIs shooting currently: \(isShooting)")
    }
}

class Thor: Human {
    var weapon: String? = "Hummer"
    
    func weaponHit() {
        if let currentWeapon = weapon {
            print("Hit with a \(currentWeapon)")
        } else {
            print("Can't make a hit without any weapon")
        }
    }
    
    override func walk() {
        if isWalking {
            isWalking = false
            print("Walks")
        } else {
            isWalking = true
            print("Stays")
        }
    }
    
    override func getInfo() {
        print("Name: \(name)\nSurname: \(surname)\nAge: \(age)\nIs walking currently: \(isWalking)")
        if let currentWeapon = weapon {
            print("Has weapon: \(currentWeapon)")
        } else {
            print("Has no weapon")
        }
    }
}
