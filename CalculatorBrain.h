//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Dennys Regalado Díaz on 12/11/11.
//  Copyright (c) 2011 Home. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject
{
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
    double memory;
}

- (void) setOperand:(double)anOperand;
- (double) performOperation:(NSString *) operation;
@end
