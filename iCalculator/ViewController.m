//
//  ViewController.m
//  iCalculator
//
//  Created by Admin on 11/8/18.
//  Copyright © 2018 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initCalculator];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)initCalculator {
    firstOperand = NULL;
    secondOperand = NULL;
    isOperatorPressed = FALSE;
    _calculation.text = @"";
    addPressed = minusPressed = multPressed = dividePressed = FALSE;
    
    allowZero = FALSE;
    isDotPressed = TRUE;
    
}


- (IBAction)clearButtonAction:(id)sender {
    [self initCalculator];
}

- (IBAction)plusOperatorPressed:(id)sender {
    
    if(isOperatorPressed)
    {
        if(addPressed)
        {
            int r = [firstOperand intValue] + [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];
        }
        else if(minusPressed)
        {
            int r = [firstOperand intValue] - [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];
        }
        else if(multPressed)
        {
            int r = [firstOperand intValue] * [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];

        }
        else if(dividePressed)
        {
            int r = [firstOperand intValue] / [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];

        }
        secondOperand = NULL;
    }
    isOperatorPressed = TRUE;
    addPressed = TRUE;
    minusPressed = multPressed = dividePressed = FALSE;
}

- (IBAction)minusOperatorPressed:(id)sender {
    
    if(isOperatorPressed)
    {
        if(addPressed)
        {
            int r = [firstOperand intValue] + [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];
        }
        else if(minusPressed)
        {
            int r = [firstOperand intValue] - [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];
        }
        else if(multPressed)
        {
            int r = [firstOperand intValue] * [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];
            
        }
        else if(dividePressed)
        {
            int r = [firstOperand intValue] / [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];
            
        }
        secondOperand = NULL;
    }
    
    isOperatorPressed = TRUE;
    addPressed = multPressed = dividePressed = FALSE;
    minusPressed = TRUE;
}

- (IBAction)equalButtonAction:(id)sender {
    
    if(addPressed)
    {
        int r = [firstOperand intValue] + [secondOperand intValue];
        _calculation.text = [NSString stringWithFormat:@"%i",r];
    }
    else if(minusPressed)
    {
        int r = [firstOperand intValue] - [secondOperand intValue];
        _calculation.text = [NSString stringWithFormat:@"%i",r];
    }
    else if(multPressed)
    {
        int r = [firstOperand intValue] * [secondOperand intValue];
        _calculation.text = [NSString stringWithFormat:@"%i",r];
        
    }
    else if(dividePressed)
    {
        int r = [firstOperand intValue] / [secondOperand intValue];
        _calculation.text = [NSString stringWithFormat:@"%i",r];
    }

}

- (IBAction)numericButtonPressed:(UIButton *)sender{
    int tag = (int) sender.tag;
    
    if(isOperatorPressed == FALSE)
    {
        if(firstOperand == NULL)
        {
            firstOperand = [NSString stringWithFormat:@"%i", tag];
            _calculation.text = firstOperand;
        }
        else
        {
            firstOperand = [NSString stringWithFormat:@"%@%i", firstOperand, tag];
            _calculation.text = firstOperand;
        }
    }
    else
    {
        if(secondOperand == NULL)
        {
            secondOperand = [NSString stringWithFormat:@"%i", tag];
            _calculation.text = secondOperand;
        }
        else
        {
            secondOperand = [NSString stringWithFormat:@"%@%i", secondOperand, tag];
            _calculation.text = secondOperand;
        }
    }
    
}

- (IBAction)dotButtonPressed:(id)sender {
    if(!isDotPressed)
    {
        
    }
}

- (IBAction)multiplyOperatorPressed:(id)sender {
    
    if(isOperatorPressed)
    {
        if(addPressed)
        {
            int r = [firstOperand intValue] + [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];
        }
        else if(minusPressed)
        {
            int r = [firstOperand intValue] - [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];
        }
        else if(multPressed)
        {
            int r = [firstOperand intValue] * [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];
            
        }
        else if(dividePressed)
        {
            int r = [firstOperand intValue] / [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];
            
        }
        secondOperand = NULL;
    }
    
    isOperatorPressed = TRUE;
    addPressed = minusPressed = dividePressed = FALSE;
    multPressed = TRUE;
}

- (IBAction)divideOperatorPressed:(id)sender {
    if(isOperatorPressed)
    {
        if(addPressed)
        {
            int r = [firstOperand intValue] + [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];
        }
        else if(minusPressed)
        {
            int r = [firstOperand intValue] - [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];
        }
        else if(multPressed)
        {
            int r = [firstOperand intValue] * [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];
            
        }
        else if(dividePressed)
        {
            int r = [firstOperand intValue] / [secondOperand intValue];
            firstOperand = [NSString stringWithFormat:@"%i",r];
            _calculation.text = [NSString stringWithFormat:@"%i",r];
            
        }
        secondOperand = NULL;
    }
    
    isOperatorPressed = TRUE;
    addPressed = minusPressed = multPressed = FALSE;
    dividePressed = TRUE;

}

- (IBAction)backspacePressed:(id)sender {
}
- (IBAction)plusMinusOperatorPressed:(id)sender {
}
@end
