//
//  ViewController.m
//  Tic tac toe 2
//
//  Created by Lilit Avetisyan on 9/16/15.
//  Copyright (c) 2015 Lilit Avetisyan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize player;
@synthesize labelText;
@synthesize button1, button2, button3, button4, button5, button6, button7, button8, button9;
- (void)viewDidLoad
{
    player = 1;// initially player 1 starts the game
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)playerTurn:(id)sender
{
    UIButton *pressedPart = (UIButton *)sender;
    [pressedPart setEnabled:NO];
    switch (player)
    {
        case 1:
            [pressedPart setTitle:@"X" forState:UIControlStateNormal];
            player = 2;
            break;
        case 2:
            [pressedPart setTitle:@"O" forState:UIControlStateNormal];
            player = 1;
            break;
        default:
            exit(0);
            break;
    }
    labelText.text = [NSString stringWithFormat:@"It is player %i turn", player];
    [self performSelector:@selector(checkForWin) withObject:nil afterDelay:0.5f];
}


- (void)checkForWin
{
    // Wins for X
    if ((([[button1 titleLabel]text] == [[button2 titleLabel]text]) && ([[button1 titleLabel]text] == [[button3 titleLabel]text]) && ([[[button1 titleLabel]text]  isEqualToString: @"X"])) ||
        (([[button4 titleLabel]text] == [[button5 titleLabel]text]) && ([[button4 titleLabel]text] == [[button6 titleLabel]text]) && ([[[button4 titleLabel]text]  isEqualToString: @"X"])) ||
        (([[button7 titleLabel]text] == [[button8 titleLabel]text]) && ([[button7 titleLabel]text] == [[button9 titleLabel]text]) && ([[[button7 titleLabel]text]  isEqualToString: @"X"])) ||
        (([[button1 titleLabel]text] == [[button5 titleLabel]text]) && ([[button1 titleLabel]text] == [[button9 titleLabel]text]) && ([[[button1 titleLabel]text]  isEqualToString: @"X"])) ||
        (([[button3 titleLabel]text] == [[button5 titleLabel]text]) && ([[button3 titleLabel]text] == [[button7 titleLabel]text]) && ([[[button3 titleLabel]text]  isEqualToString: @"X"])) ||
        (([[button1 titleLabel]text] == [[button4 titleLabel]text]) && ([[button1 titleLabel]text] == [[button7 titleLabel]text]) && ([[[button1 titleLabel]text]  isEqualToString: @"X"])) ||
        (([[button2 titleLabel]text] == [[button5 titleLabel]text]) && ([[button2 titleLabel]text] == [[button8 titleLabel]text]) && ([[[button2 titleLabel]text]  isEqualToString: @"X"])) ||
        (([[button3 titleLabel]text] == [[button6 titleLabel]text]) && ([[button3 titleLabel]text] == [[button9 titleLabel]text]) && ([[[button3 titleLabel]text]  isEqualToString: @"X"])))
    {
        
        button1.enabled = NO;
        button2.enabled = NO;
        button3.enabled = NO;
        button4.enabled = NO;
        button5.enabled = NO;
        button6.enabled = NO;
        button7.enabled = NO;
        button8.enabled = NO;
        button9.enabled = NO;
        
        UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"Congratulations"
                                                       message:@"X won"
                                                      delegate:nil
                                             cancelButtonTitle:@"OK"
                                             otherButtonTitles:nil];
        [alert show];
        [self performSelectorOnMainThread:@selector(reset:) withObject:self waitUntilDone:NO];
        
    }
// Wins for O
     else  if  ((([[button1 titleLabel]text] == [[button2 titleLabel]text]) && ([[button1 titleLabel]text] == [[button3 titleLabel]text]) && ([[[button1 titleLabel]text]  isEqualToString: @"O"])) ||
              (([[button4 titleLabel]text] == [[button5 titleLabel]text]) && ([[button4 titleLabel]text] == [[button6 titleLabel]text]) && ([[[button4 titleLabel]text]  isEqualToString: @"O"])) ||
              (([[button7 titleLabel]text] == [[button8 titleLabel]text]) && ([[button7 titleLabel]text] == [[button9 titleLabel]text]) && ([[[button7 titleLabel]text]  isEqualToString: @"O"])) ||
              (([[button1 titleLabel]text] == [[button5 titleLabel]text]) && ([[button1 titleLabel]text] == [[button9 titleLabel]text]) && ([[[button1 titleLabel]text]  isEqualToString: @"O"])) ||
              (([[button3 titleLabel]text] == [[button5 titleLabel]text]) && ([[button3 titleLabel]text] == [[button7 titleLabel]text]) && ([[[button3 titleLabel]text]  isEqualToString: @"O"])) ||
              (([[button1 titleLabel]text] == [[button4 titleLabel]text]) && ([[button1 titleLabel]text] == [[button7 titleLabel]text]) && ([[[button1 titleLabel]text]  isEqualToString: @"O"])) ||
              (([[button2 titleLabel]text] == [[button5 titleLabel]text]) && ([[button2 titleLabel]text] == [[button8 titleLabel]text]) && ([[[button2 titleLabel]text]  isEqualToString: @"O"])) ||
              (([[button3 titleLabel]text] == [[button6 titleLabel]text]) && ([[button3 titleLabel]text] == [[button9 titleLabel]text]) && ([[[button3 titleLabel]text]  isEqualToString: @"O"])))
    {
        
        button1.enabled = NO;
        button2.enabled = NO;
        button3.enabled = NO;
        button4.enabled = NO;
        button5.enabled = NO;
        button6.enabled = NO;
        button7.enabled = NO;
        button8.enabled = NO;
        button9.enabled = NO;

        UIAlertView* alert= [[UIAlertView alloc]initWithTitle:@"Congratulations"
                                                      message:@"O won"
                                                     delegate:nil
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil];
        [alert show];
        [self performSelectorOnMainThread:@selector(reset:) withObject:self waitUntilDone:NO];

    }
}

- (IBAction)reset: (id)sender
{
    player=1;
    [button1 setTitle:@" " forState:UIControlStateNormal];
    [button1 setEnabled:YES];
    [button2 setTitle:@" " forState:UIControlStateNormal];
    [button2 setEnabled:YES];
    [button3 setTitle:@" " forState:UIControlStateNormal];
    [button3 setEnabled:YES];
    [button4 setTitle:@" " forState:UIControlStateNormal];
    [button4 setEnabled:YES];
    [button5 setTitle:@" " forState:UIControlStateNormal];
    [button5 setEnabled:YES];
    [button6 setTitle:@" " forState:UIControlStateNormal];
    [button6 setEnabled:YES];
    [button7 setTitle:@" " forState:UIControlStateNormal];
    [button7 setEnabled:YES];
    [button8 setTitle:@" " forState:UIControlStateNormal];
    [button8 setEnabled:YES];
    [button9 setTitle:@" " forState:UIControlStateNormal];
    [button9 setEnabled:YES];
    labelText.text = [NSString stringWithFormat:@"It is player %i turn", player];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
