//
//  AnchoviesManager.m
//  PizzaRestaurant
//
//  Created by Anton Moiseev on 2016-05-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "AnchoviesManager.h"

@implementation AnchoviesManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    if ([toppings containsObject:@"anchovies"]) {
        
        NSLog(@"Ewwww! Anchovies!");
        return NO;
        
    } else {
        
        return YES;
        
    }
    
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    
    return NO;
    
}

@end
