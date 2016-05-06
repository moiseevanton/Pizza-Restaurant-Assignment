//
//  CheeryManager.h
//  PizzaRestaurant
//
//  Created by Anton Moiseev on 2016-05-06.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

@protocol cheeryManagerDelegate <NSObject>

- (void)deliverPizza:(Pizza *)pizza;

@end

@interface CheeryManager : NSObject <KitchenDelegate>

@property id<cheeryManagerDelegate> delegate;

@end
