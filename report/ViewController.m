//
//  ViewController.m
//  report
//
//  Created by crazypoo on 14-1-21.
//  Copyright (c) 2014年 crazypoo. All rights reserved.
//

#import "ViewController.h"
#import "NdUncaughtExceptionHandler.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    @try {
        UIButton *lol = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        [lol addTarget:self action:@selector(lollol) forControlEvents:UIControlEventTouchUpInside];
        lol.backgroundColor = [UIColor redColor];
        [self.view addSubview:lol];
    }
    @catch (NSException *exception) {
        [NdUncaughtExceptionHandler TakeException:exception];
    }
    @finally {
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
