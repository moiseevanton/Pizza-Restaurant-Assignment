//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Anton Moiseev on 2016-05-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CheeryManager.h"

@class DeliveryCar;

@protocol deliveryServiceDelegate <NSObject>

- (void)deliverPizza:(Pizza *)pizza;

@end

@interface DeliveryService : NSObject <cheeryManagerDelegate>

@property (nonatomic, strong) id<deliveryServiceDelegate> car;

@property NSMutableArray *allPizzas;

@end
