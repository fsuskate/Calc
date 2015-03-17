//
//  ViewController.m
//  Calc
//
//  Created by Francisco Surroca on 11/14/13.
//  Copyright (c) 2013 Francisco Surroca. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)buttonDigitPressed:(id)sender
{
    currentNumber = currentNumber * 10 + (float)[sender tag];
    calcScreen.text = [NSString stringWithFormat:@"%.2f", currentNumber];
}

-(IBAction)buttonOperationPressed:(id)sender
{
    if (currentOperation == 0)
    {
        result = currentNumber;
    }
    else
    {
        switch (currentOperation)
        {
            case 1:
                result = result + currentNumber;
                break;
            case 2:
                result = result - currentNumber;
                break;
            case 3:
                result = result * currentNumber;
                break;
            case 4:
                result = result / currentNumber;
                break;
            case 5:
                result = 0;
                break;
        }
    }
    
    currentNumber = 0;
    calcScreen.text = [NSString stringWithFormat:@"%.2f", result];
    if ([sender tag] == 0)
    {
        result = 0;
    }
    currentOperation = [sender tag];
    
}

-(IBAction)cancelInput
{
    currentNumber = 0;
    calcScreen.text = @"0";
}

-(IBAction)cancelOperation
{
    currentNumber = 0;
    calcScreen.text = @"0";
    currentNumber = 0;
}

- (void)viewDidLoad
{
    NSArray *subViews = self.view.subviews;
    
    for (UIView *subview in subViews)
    {
        if ([subview isKindOfClass:[UIButton class]])
        {
            CALayer *layer = subview.layer;
            [layer setMasksToBounds:YES];
            [layer setCornerRadius:10.0f];
        }
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
