//
//  ViewController.m
//  MetrixTestApp
//
//  Created by Matin on 9/16/20.
//  Copyright © 2020 Metrix. All rights reserved.
//

#import "ViewController.h"
#import <MetrixSdk/MetrixSdk.h>
#import <MetrixSdk/MXCurrency.h>

@interface ViewController ()

@end

@implementation ViewController

                            
- (void)viewDidLoad {
    [super viewDidLoad];
    
     // Do any additional setup after loading the view.
    NSString *mxid = [Metrix mxid];
    NSString *prefix = @"Metrix UserId: ";
    self.userIdLabel.text = [NSString stringWithFormat:@"%@%@", prefix, mxid];
}

- (IBAction)btnSendEvent:(id)sender {
        NSMutableDictionary *myAttributes = [[NSMutableDictionary alloc] init];
        NSMutableDictionary *myMetrics = [[NSMutableDictionary alloc] init];
        myAttributes[@"first_name"] = @"Ali";
        myAttributes[@"last_name"] = @"Bagheri";
        myAttributes[@"manufacturer"] = @"Nike";
        myAttributes[@"product_name"] = @"shirt";
        myAttributes[@"type"] = @"sport";
        myAttributes[@"size"] = @"large";
        MXCustomEvent *event = [MXCustomEvent newEvent:@"msdok" attributes:myAttributes metrics:myMetrics];
        [Metrix trackCustomEvent:event];
}

- (IBAction)sendRevenueClick:(id)sender {
    [Metrix trackRevenue:@"giaoj" withValue:@12000 currency:IRR orderId:@"myOrderId"];
}

- (IBAction)getAttributionClick:(id)sender {
    [Metrix requestAttribution];
}


@end
