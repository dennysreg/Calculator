//
//  ViewController.h
//  Calculator
//
//  Created by Dennys Regalado Díaz on 12/11/11.
//  Copyright (c) 2011 Home. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface ViewController : UIViewController
{
    IBOutlet UILabel *display; 
    CalculatorBrain *brain;
    BOOL userIsInTheMiddleOfTypingANumber;
    BOOL isAlreadyADot;
    
}

- (IBAction)digitPressed:(UIButton *)sender;
- (IBAction)operationPressed:(UIButton *)sender;

@end
