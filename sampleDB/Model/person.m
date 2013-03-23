//
//  people.m
//  sampleDB
//
//  Created by Htain Lin Shwe on 23/3/13.
//  Copyright (c) 2013 comquas. All rights reserved.
//

#import "person.h"
#import "db.h"

@interface person()

@end

@implementation person

-(id)initWithName:(NSString*)name AndNumber:(NSString*)number {
    self = [super init];
    if(self) {
        _name = name;
        _number = number;
    }
    return self;
}

+(NSArray*)getAllPeople {
    
    NSMutableArray* people = [[NSMutableArray alloc] init];
    
   FMResultSet* rs = [[db sharedClient].database executeQuery:@"SELECT * FROM people"];
    
    int _id = 0;
    NSString* name = @"";
    NSString* number = @"";
    
    while ([rs next]) {
        
        _id = [rs intForColumnIndex:0];
        name = [rs stringForColumnIndex:1];
        number = [rs stringForColumnIndex:2];
        NSDictionary* rsDict = @{@"id": [NSNumber numberWithInt:_id],@"name":name,@"number":number};
        [people addObject:rsDict];
    }
    
    return [NSArray arrayWithArray:people];
}

+(void)addNewPerson:(person*)newPerson {
    
    NSDictionary *argsDict = [NSDictionary dictionaryWithObjectsAndKeys:newPerson.name, @"name",newPerson.number,@"number", nil];

    [[db sharedClient].database executeUpdate:@"INSERT INTO people (name,number) VALUES (:name,:number)" withParameterDictionary:argsDict];
}

+(void)deletePersonAtID:(NSNumber*)person_id {
    
    NSDictionary *argsDict = [NSDictionary dictionaryWithObjectsAndKeys:person_id, @"id",nil];
    
    [[db sharedClient].database executeUpdate:@"DELETE FROM people WHERE id = :id" withParameterDictionary:argsDict];
    
}

@end
