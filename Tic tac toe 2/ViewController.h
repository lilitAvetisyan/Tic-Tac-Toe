//
//  ViewController.h
//  Tic tac toe 2
//
//  Created by Lilit Avetisyan on 9/16/15.
//  Copyright (c) 2015 Lilit Avetisyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Logiic.h"
@interface ViewController : UIViewController
@property int player;
- (IBAction)reset: (id) sender;
@property (weak, nonatomic) IBOutlet UILabel *labelText;
@property (strong, nonatomic) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet UIButton *button2;
@property (strong, nonatomic) IBOutlet UIButton *button3;
@property (strong, nonatomic) IBOutlet UIButton *button4;
@property (strong, nonatomic) IBOutlet UIButton *button5;
@property (strong, nonatomic) IBOutlet UIButton *button6;
@property (strong, nonatomic) IBOutlet UIButton *button7;
@property (strong, nonatomic) IBOutlet UIButton *button8;
@property (strong, nonatomic) IBOutlet UIButton *button9;


@end

