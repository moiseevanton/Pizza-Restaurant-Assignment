//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Anton Moiseev on 2016-05-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    return YES;
    
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    
    return YES;
    
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    
    NSLog(@"Your pizza is ready! Enjoy!");
    [self.delegate deliverPizza:pizza];
    
}

@end
