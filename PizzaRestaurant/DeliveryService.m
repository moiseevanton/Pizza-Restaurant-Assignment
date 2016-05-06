//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Anton Moiseev on 2016-05-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"

@implementation DeliveryService

- (instancetype) init {
    
    self = [super init];
    
    if (self) {
        _allPizzas = [[NSMutableArray alloc] init];
        _car = [[DeliveryCar alloc] init];
    }
    return self;
}

- (void)deliverPizza:(Pizza *)pizza {
    
    if (pizza.size == small) {
        
        NSString *str = [pizza.toppings componentsJoinedByString:@" "];
        
        str = [@"small " stringByAppendingString:str];
        
        [self.allPizzas addObject:str];
        [self.car deliverPizza:pizza];
        
    } else if (pizza.size == medium) {
        
        NSString *str = [pizza.toppings componentsJoinedByString:@" "];
        
        str = [@"medium " stringByAppendingString:str];
        
        [self.allPizzas addObject:str];
        [self.car deliverPizza:pizza];
        
    } else if (pizza.size == large) {
        
        NSString *str = [pizza.toppings componentsJoinedByString:@" "];
        
        str = [@"large " stringByAppendingString:str];
        
        [self.allPizzas addObject:str];
        [self.car deliverPizza:pizza];
        
    }
    
}

@end
