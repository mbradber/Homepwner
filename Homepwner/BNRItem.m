#import "BNRItem.h"
#include <stdlib.h>

@implementation BNRItem

-(instancetype) initWithItemName:(NSString *)name valueInDollars:(int)value andSerial:(NSString *)sNumber{
    if(self = [super init])
    {
        _itemName = name;
        _valueInDollars = value;
        _serialNumber = sNumber;
        _dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}

-(instancetype) initWithItemName:(NSString *)name{
    return [self initWithItemName:name valueInDollars:0 andSerial:@""];
}

-(instancetype)init{
    return [self initWithItemName:@"Item"];
}

-(NSString *) description{
    NSString *descString = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    
    return descString;
}

+(instancetype) randomItem{
    NSArray *randomAdjectiveList = @[@"Fluffy", @"Rusty", @"Shiny"];
    NSArray *randomNounList = @[@"Bear", @"Spork", @"Mac"];
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    
    int randomValue = arc4random() % 100;
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", [randomAdjectiveList objectAtIndex:adjectiveIndex], [randomNounList objectAtIndex:nounIndex]];
    NSString *randomSerialNUmber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10,
                                    'A' + arc4random() % 26,
                                    '0' + arc4random() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue andSerial:randomSerialNUmber];
    return newItem;
}

@end
