//
//  ViewController.m
//  MetrixTestApp
//
//  Created by Matin on 9/16/20.
//  Copyright © 2020 Metrix. All rights reserved.
//

#import "ViewController.h"
@import Metrix;

@interface ViewController ()

@end

@implementation ViewController

                            
- (void)viewDidLoad {
    [super viewDidLoad];
    
     // Do any additional setup after loading the view.
}

- (IBAction)btnSendEvent:(id)sender {
    NSMutableDictionary *myAttributes = [[NSMutableDictionary alloc] init];
    myAttributes[@"first_name"] = @"Ali";
    myAttributes[@"last_name"] = @"Bagheri";
    myAttributes[@"manufacturer"] = @"Nike";
    myAttributes[@"product_name"] = @"shirt";
    myAttributes[@"type"] = @"sport";
    myAttributes[@"size"] = @"large";
    [MetrixClient newEventWithSlug: @"jqgjh" attributes:myAttributes];
    [MetrixClient newEventWithSlug: @"jqgjh"];
}

- (IBAction)sendRevenueClick:(id)sender {
    [MetrixClient newRevenueWithSlug: @"prfrn" revenue:124.0];
    [MetrixClient newRevenueWithSlug: @"prfrn" revenue: 12.6 currency: RevenueCurrencyUSD];
    [MetrixClient newRevenueWithSlug: @"prfrn" revenue: 32.6 orderId: @"someOrderId"];
    [MetrixClient newRevenueWithSlug: @"prfrn" revenue: 1244 currency: RevenueCurrencyEUR orderId: @"someOrderId2"];
}

@end
