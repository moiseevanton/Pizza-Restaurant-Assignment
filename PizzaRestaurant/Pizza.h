//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Anton Moiseev on 2016-05-05.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    small,
    medium,
    large
    
} PizzaSize;

@interface Pizza : NSObject

@property PizzaSize size;

@property NSArray *toppings;

- (instancetype)initWithPizzaSize:(PizzaSize)ps toppings:(NSArray *)tp;

@end
