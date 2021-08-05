
import Foundation

extension String {
  
  func removingExtraSpaces() -> String {
    
        var finalString = ""
        let space = " "
        var previousCharacter = space

        self.forEach { character in
            let currentCharacter = String(character)
            
            if !(previousCharacter == space && currentCharacter == previousCharacter) {
                finalString.append(currentCharacter)
            }
            previousCharacter = currentCharacter
        }
        return finalString
    }
}

/// Usage
let name = "           Umer             Khan"
// we can remove spaces from start and end of the string using this approach
let nameWithoutSpaces = name.trimmingCharacters(in: .whitespaces)
print(nameWithoutSpaces) // output: "Umer            Khan"

// extension usage, no extra spaces anymore
let nameWithoutExtraSpaces = name.removingExtraSpaces()
print(nameWithoutExtraSpaces) // output: "Umer Khan"


