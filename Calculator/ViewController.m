//
//  ViewController.m
//  Calculator
//
//  Created by Dennys Regalado Díaz on 12/11/11.
//  Copyright (c) 2011 Home. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
- (CalculatorBrain *)brain
{
    if(!brain) brain = [[CalculatorBrain alloc] init];
    return brain;
}
- (IBAction)digitPressed:(UIButton *)sender
{
    NSString *digit = [[sender titleLabel] text];
    
    if([digit isEqual:@"."])
    {
        if(isAlreadyADot)
            return;
        isAlreadyADot = YES;
    }
        
     
        
        if(userIsInTheMiddleOfTypingANumber)
        {
            [display setText:[[display text] stringByAppendingString:digit]];
        }else{
            [display setText:digit];
            userIsInTheMiddleOfTypingANumber = YES;
        }
        
            
    
}
- (IBAction)operationPressed:(UIButton *)sender
{
    if(userIsInTheMiddleOfTypingANumber)
    {
        [[self brain] setOperand:[[display text] doubleValue]];
        userIsInTheMiddleOfTypingANumber = NO;
        isAlreadyADot = NO;
    }
    //NSLog(@"Esto es una prueba %@, numero %d.",@"printf",32);
    NSString *operation = [[sender titleLabel] text];
    double result = [[self brain] performOperation:operation];
    [display setText:[NSString stringWithFormat:@"%g",result]];
}
@end
