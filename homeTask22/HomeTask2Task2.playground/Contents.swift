import UIKit

var stringToCheck: String = "Мама мыла раму";

func characterCount(_ line: String) -> (character: Character, times: Int) {
    var mostPopularCharacter: Character = "N";
    var timesOfRepeat: Int = 0;
    
    for character in line {
        var timesOfRepeatToCheck: Int = 0;
        
        for characterToCompare in line {
            if character == characterToCompare {
                timesOfRepeatToCheck += 1;
            }
        }
        
        if timesOfRepeatToCheck > timesOfRepeat {
            mostPopularCharacter = character;
            timesOfRepeat = timesOfRepeatToCheck;
        }
    }
    
    return (mostPopularCharacter, timesOfRepeat);
}

var result = characterCount(stringToCheck);
print("Символ: \(result.character)\nКоличество повторений: \(result.times)");
