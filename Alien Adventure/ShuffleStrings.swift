//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
    
        // Checks if s1 is in the filtered string that contains only s1 chars. If s1 is found in the filtered string, it means it is still in the same order.
        
        
        
        if self.filterLettersFromString(s1, shuffledString: shuffle).containsString(s1) &&
            self.filterLettersFromString(s2, shuffledString: shuffle).containsString(s2) {
            return true
        } else {
            
            if s1 == "" && s2 == "" && shuffle == "" {
                return true
            } else {
                return false
            }
            
        }
        
    }
    
    // Helper function
    // Receives a parameter containing the letters to keep in the shuffledString.
    // It removes all other chars that are not included in the shuffledString.
    func filterLettersFromString(letters: String, shuffledString: String) -> String {
        
        var filteredString: String = ""
        
        for char in shuffledString.characters {
            if letters.containsString(String(char)) {
                filteredString += String(char)
            }
        }
        
        return filteredString
    }
}
