//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Dennys Regalado Díaz on 12/11/11.
//  Copyright (c) 2011 Home. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain
- (void) setOperand:(double)anOperand
{
    operand = anOperand;
}

- (void) performWaitingOperation
{
    if([@"+" isEqual:waitingOperation])
        operand = waitingOperand + operand;
    else if ([@"*" isEqual:waitingOperation])
        operand = waitingOperand * operand;
    else if ([@"-" isEqual:waitingOperation])
        operand = waitingOperand - operand;
    else if ([@"/" isEqual:waitingOperation])
    {
        if(operand)
            operand = waitingOperand / operand;
    }
}
- (double) performOperation:(NSString *) operation
{
    if ([operation isEqual:@"sqrt"])
        operand = sqrt(operand);
    else if([operation isEqual:@"sin"])
        operand =sin(operand);
    else if([operation isEqual:@"cos"])
        operand =cos(operand);
    else if([operation isEqual:@"1/x"])
    {
        if(operand)
            operand = 1/operand;
    }
    else if([operation isEqual:@"Str"])
        memory = operand;
    else if([operation isEqual:@"Rec"])
        operand = memory;
    else if([operation isEqual:@"M+"])
        operand += memory;
    else if([operation isEqual:@"C"])
    {
        waitingOperand = 0;
        operand = 0;
        memory = 0;
    }else if([operation isEqual:@"Pi"])
        operand = M_PI;
    else if([@"+/-" isEqual:operation])
    {
        operand = - operand;
    }else
    {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    return operand;
}
@end
