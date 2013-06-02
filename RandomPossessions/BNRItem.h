//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Joseph Berman on 5/23/13.
//  Copyright (c) 2013 Joseph Berman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

+ (id)randomItem;


- (id)initWithName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;

- (id)initWithName:(NSString *)name;

- (NSString *)itemName;
- (void)setItemName:(NSString *)str;

- (NSString *)serialNumber;
- (void)setSerialNumber:(NSString *)str;


- (int)valueInDollars;
- (void)setValueInDollars:(int)i;


- (NSDate *)dateCreated;


@end
