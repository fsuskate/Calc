//
//  ViewController.h
//  Calc
//
//  Created by Francisco Surroca on 11/14/13.
//  Copyright (c) 2013 Francisco Surroca. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    float result;
    IBOutlet UILabel *calcScreen;
    int currentOperation;
    float currentNumber;
}

-(IBAction)buttonDigitPressed:(id)sender;
-(IBAction)buttonOperationPressed:(id)sender;
-(IBAction)cancelInput;
-(IBAction)cancelOperation;

@end
