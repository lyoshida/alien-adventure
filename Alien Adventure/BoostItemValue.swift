//
//  BoostItemValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func boostItemValue(inventory: [UDItem]) -> [UDItem] {
        
        return inventory.map({
            var item = $0
            item.baseValue += 100
            
            return item
        })
        
    }
}