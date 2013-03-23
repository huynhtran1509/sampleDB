//
//  db.h
//  sampleDB
//
//  Created by Htain Lin Shwe on 23/3/13.
//  Copyright (c) 2013 comquas. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
#import "FMResultSet.h"
@interface db : NSObject
@property (nonatomic,strong) FMDatabase* database;

+(NSString*)dbpath;

+(BOOL)isCopied;
+(db*)sharedClient;
+(void)setup;

@end
