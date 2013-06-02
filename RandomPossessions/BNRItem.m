//
//  BNRItem.m
//  RandomPossessions
//
//  Created by Joseph Berman on 5/23/13.
//  Copyright (c) 2013 Joseph Berman. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem





- (id)initWithName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber
{
    //call suprecalss's designated initializer
    self = [super init];
    
    if (self){
        //Give the instance variables initial values
        [self setItemName:name];
        [self setValueInDollars:value];
        [self setSerialNumber:sNumber];
        dateCreated = [[NSDate alloc] init];
    }
    
    return self;
    
}

- (id)initWithName:(NSString *)name
{
    return [self initWithName:name
                valueInDollars:0
                 serialNumber:@""];
}

- (id)init
{
    return [self initWithName:@"Item" valueInDollars:0 serialNumber:@""];
}


//itemName getter
- (NSString *)itemName
{
    return itemName;
}

//itemName setter
- (void)setItemName:(NSString *)str
{
    itemName = str;
}


- (NSString *)serialNumber
{
    return serialNumber;
}

- (void)setSerialNumber:(NSString *)str
{
    serialNumber  = str;
}

- (int)valueInDollars
{
    return valueInDollars;
}

- (void)setValueInDollars:(int)i
{
    valueInDollars = i;
}



- (NSDate *)dateCreated
{
    return dateCreated;
}


- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc]initWithFormat:@"%@ (%@): Worth %d, recorded on %@",
                                   itemName, serialNumber,valueInDollars, dateCreated];
    
    
    return descriptionString;
}


+(id)randomItem;
{
    
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy",@"Rusty",@"Shiny",nil];
    
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear",@"Spork",@"Mac",nil];
    
    //Get the index of a random adjective/noun from the lists
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];

    NSInteger nounIndex = rand() % [randomNounList count];

    NSString *randomName = [NSString stringWithFormat:@"%@,%@", [randomAdjectiveList objectAtIndex:adjectiveIndex], [randomNounList objectAtIndex:nounIndex]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
         '0' + rand() % 10,
        'A' + rand() % 26,
         '0' + rand() % 10,
        'A' + rand() % 26,
         '0' + rand() % 10];
    
    BNRItem *newItem = [[self alloc] initWithName:randomName valueInDollars:randomValue serialNumber:randomSerialNumber];
    
    return newItem;
}




@end
