//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "AnchoviesManager.h"
#import "CheeryManager.h"
#import "DeliveryService.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];

        AnchoviesManager *anchoviesManager = [[AnchoviesManager alloc] init];
        
        CheeryManager *cheeryManager = [[CheeryManager alloc] init];
        
        DeliveryService *service = [[DeliveryService alloc] init];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"Please pick your pizza size and toppings:");
            
            
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
            
            NSLog(@"Pick your manager (enter one of two: anchoviesManager, cheeryManager) or no manager at all (enter: no).");
            
            NSLog(@"> ");
            char str2[100];
            fgets (str2, 100, stdin);
            
            NSString *inputString2 = [[NSString alloc] initWithUTF8String:str2];
            inputString2 = [inputString2 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString2);
            
            if ([inputString2 isEqualToString:@"anchoviesManager"]) {
                
                restaurantKitchen.delegate = anchoviesManager;
                
            } else if ([inputString2 isEqualToString:@"cheeryManager"]) {
                
                restaurantKitchen.delegate = cheeryManager;
                cheeryManager.delegate = service;
                
            } else if ([inputString2 isEqualToString:@"no"]) {
                
            }
            
            Pizza *yourPizza = nil;
            if ([sizeAsString isEqualToString:@"small"]) {
                yourPizza = [restaurantKitchen makePizzaWithSize:small toppings:toppings];
            } else if ([sizeAsString isEqualToString:@"medium"]) {
                yourPizza = [restaurantKitchen makePizzaWithSize:medium toppings:toppings];
            } else if ([sizeAsString isEqualToString:@"large"]) {
                yourPizza = [restaurantKitchen makePizzaWithSize:large toppings:toppings];
            }
            NSLog(@"%@",service.allPizzas[0]);
        }

    }
    return 0;
}

