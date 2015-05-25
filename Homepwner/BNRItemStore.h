//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Matthew Bradberry on 5/21/15.
//  Copyright (c) 2015 Macobr. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject

@property(nonatomic, readonly, copy) NSArray *allItems;

+(instancetype)sharedStore;
-(BNRItem *)createItem;
-(void)removeItem:(BNRItem *)item;
-(void)moveItemAtIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex;

@end
