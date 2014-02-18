//
//  NdUncaughtExceptionHandler.h
//  report
//
//  Created by crazypoo on 14-1-21.
//  Copyright (c) 2014年 crazypoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NdUncaughtExceptionHandler : NSObject

+ (void)setDefaultHandler;
+ (NSUncaughtExceptionHandler *)getHandler;
+ (void)TakeException:(NSException *) exception;

@end
