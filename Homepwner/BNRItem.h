#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

@property (nonatomic) NSString *itemName;
@property (nonatomic) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic) NSDate *dateCreated;

-(instancetype) initWithItemName:(NSString *)name valueInDollars:(int)value andSerial:(NSString *)sNumber;
-(instancetype) initWithItemName:(NSString *)name;
+(instancetype) randomItem;

@end
