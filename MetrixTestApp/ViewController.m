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
    [Metrix newEventWithSlug: @"qixcu" attributes:@{@"name": @"matin"}];
    [Metrix newEventWithSlug: @"qixcu"];
}

- (IBAction)sendRevenueClick:(id)sender {
    [Metrix newRevenueWithSlug: @"ubdya" revenue:124.0];
    [Metrix newRevenueWithSlug: @"ubdya" revenue: 12.6 currency: RevenueCurrencyUSD];
    [Metrix newRevenueWithSlug: @"ubdya" revenue: 32.6 orderId: @"someOrderId"];
    [Metrix newRevenueWithSlug: @"ubdya" revenue: 1244 currency: RevenueCurrencyEUR orderId: @"someOrderId2"];
}

- (IBAction)getAttributionClick:(id)sender {
}


@end
