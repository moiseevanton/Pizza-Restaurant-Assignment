//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            NSString *sizeAsString = commandWords[0];
            NSMutableArray *toppings = [[NSMutableArray alloc] initWithArray:commandWords];
            [toppings removeObjectAtIndex:0];
            Pizza *ourPizza = nil;
            if ([sizeAsString isEqualToString:@"small"]) {
                ourPizza = [restaurantKitchen makePizzaWithSize:small toppings:toppings];
            } else if ([sizeAsString isEqualToString:@"medium"]) {
                ourPizza = [restaurantKitchen makePizzaWithSize:medium toppings:toppings];
            } else if ([sizeAsString isEqualToString:@"large"]) {
                ourPizza = [restaurantKitchen makePizzaWithSize:large toppings:toppings];
            }
            
        }

    }
    return 0;
}

