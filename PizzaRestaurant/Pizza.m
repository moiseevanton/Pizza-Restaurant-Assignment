//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Anton Moiseev on 2016-05-05.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@interface Pizza()

@property (nonatomic, readwrite) PizzaSize size;

@property (nonatomic, readwrite) NSArray *toppings;

@end

@implementation Pizza

-(instancetype)init {
    return [self initWithPizzaSize:small toppings:[NSArray new]];
}

-(instancetype)initWithPizzaSize:(PizzaSize)ps toppings:(NSArray *)tp {
    
    self = [super init];
    
    if (self) {
        
        _size = ps;
        _toppings = tp;
        
    }
    return self;
}


@end
