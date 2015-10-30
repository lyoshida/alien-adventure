//
//  XORCipherKeySearch.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func xorCipherKeySearch(encryptedString: [UInt8]) -> UInt8 {

        var key: UInt8 = 0
        
        for x in Range<UInt8>(0...254) {
            
            var decrypted = [UInt8]()
            
            for character in encryptedString {
                decrypted.append(character ^ x)
            }
            
            if let decryptedString = String(bytes: decrypted,
                encoding: NSUTF8StringEncoding) where decryptedString == "udacity" {
                    key = x
            }
        }
        
        return key
    }
}
