//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    
    if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        
        if ([self.delegate kitchenShouldUpgradeOrder:self]) {
            
            Pizza *p = [[Pizza alloc] initWithPizzaSize:large toppings:toppings];
            
            if([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                
                [self.delegate kitchenDidMakePizza:p];
                
            }
            return p;
        } else {
            
            Pizza *p = [[Pizza alloc] initWithPizzaSize:size toppings:toppings];
            return p;
            
        }
        
    } else {
        
        return nil;
        
    }
}

@end
