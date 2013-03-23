//
//  people.h
//  sampleDB
//
//  Created by Htain Lin Shwe on 23/3/13.
//  Copyright (c) 2013 comquas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface person : NSObject
@property (nonatomic,strong) NSString* name;
@property (nonatomic,strong) NSString* number;

-(id)initWithName:(NSString*)name AndNumber:(NSString*)number;
+(NSArray*)getAllPeople;
+(void)addNewPerson:(person*)newPerson;
+(void)deletePersonAtID:(NSNumber*)person_id;
@end
