//
//  ViewController.h
//  MetrixTestApp
//
//  Created by Matin on 9/16/20.
//  Copyright © 2020 Metrix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *userIdLabel;
@property (strong, nonatomic) IBOutlet UIButton *btnGetAttribution;
@property (strong, nonatomic) IBOutlet UIButton *btnSendEvent;
@property (strong, nonatomic) IBOutlet UIButton *btnSendRevenue;


@end

