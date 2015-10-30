//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        
        var items: [Int] = []
        
        if let datafileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist") {
        
            let data = NSArray(contentsOfURL: datafileURL)
            
            for item in data! {
                
                var name: String?
                var carbonAge: Int?
                
                if let item = item as? NSDictionary {
                    if let itemName = item["Name"] as? String {
                        name = itemName                    }
                    
                    if let historicalData = item["HistoricalData"] as? [String: AnyObject] {
                        if let itemCarbonAge = historicalData["CarbonAge"] as? Int {
                            carbonAge = itemCarbonAge
                        }
                    }
                    
                    if name!.lowercaseString.containsString("laser") && carbonAge < 30 {
                        print("\(name) with age \(carbonAge) is banned")
                        items.append(item["ItemID"] as! Int)
                    } else {
                        print("\(name) with age \(carbonAge) kept")
                    }
                    
                }
                
            }
            print(items)
            
        }
        return items
    }
}

