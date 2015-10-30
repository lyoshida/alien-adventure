//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity: Int] {
        var rarity: [UDItemRarity: Int] = [
            UDItemRarity.Common: 0,
            UDItemRarity.Uncommon: 0,
            UDItemRarity.Rare: 0,
            UDItemRarity.Legendary: 0
        ]
        
        for item in inventory {
            switch item.rarity {
            case .Common:
                rarity[.Common] = rarity[.Common]! + 1
            case .Uncommon:
                rarity[.Uncommon] = rarity[.Uncommon]! + 1
            case .Rare:
                rarity[.Rare] = rarity[.Rare]! + 1
            case.Legendary:
                rarity[.Legendary] = rarity[.Legendary]! + 1
            }
        }
        
        return rarity
    }
}
