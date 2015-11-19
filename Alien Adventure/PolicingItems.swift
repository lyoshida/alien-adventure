//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {
        
        var errors: [UDPolicingError:Int] = [
            .NameContainsLaser: 0,
            .ItemFromCunia: 0,
            .ValueLessThan10: 0
        ]
        
        for item in inventory {
            do {
                try policingFilter(item)
            }
            catch UDPolicingError.NameContainsLaser {
                errors[.NameContainsLaser]! += 1
            }
            catch UDPolicingError.ItemFromCunia {
                errors[.ItemFromCunia]! += 1
            }
            catch UDPolicingError.ValueLessThan10 {
                errors[.ValueLessThan10]! += 1
            }
            catch {
                print("Undefined error.")
            }
        }
        
        return errors
    }    
}