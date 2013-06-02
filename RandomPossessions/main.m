//
//  main.m
//  RandomPossessions
//
//  Created by Joseph Berman on 5/22/13.
//  Copyright (c) 2013 Joseph Berman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
            //Create a mutable arraay object, store its address in items variable
        NSMutableArray *items = [NSMutableArray new];
        
        
        

        
        for (int i = 0; i< 10; i++) {
            BNRItem *p = [BNRItem randomItem];
            [items addObject:p];
        }

        
      //  for (int i = 0; i< 10; i++) {
      //      NSLog(@"%@",[items objectAtIndex:i]);
      //  }
        

        for (BNRItem *item in items)
        {
            NSLog(@"%@",item);
            
        }

        
        items = nil;
        
    }
    return 0;
}

