//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        var oldestItem: UDItem? = inventory.first
        
        for item in inventory {
            if let planetOfOrigin = item.historicalData["PlanetOfOrigin"] where planetOfOrigin as! String == planet {
                if let carbonAge = item.historicalData["CarbonAge"] as! Int? {
                    if carbonAge > oldestItem?.historicalData["CarbonAge"] as! Int? {
                        oldestItem = item
                    }
                }
            }
        }
        
        return oldestItem
    }
    
}
