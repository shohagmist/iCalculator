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
    firstOperand = NULL;
    secondOperand = NULL;
    isOperatorPressed = FALSE;
    addPressed = minusPressed = FALSE;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clearButtonAction:(id)sender {
    _calculation.text = @"";
    isOperatorPressed = FALSE;
    firstOperand = NULL;
    secondOperand = NULL;
    addPressed = minusPressed = FALSE;

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
        secondOperand = NULL;
    }
    isOperatorPressed = TRUE;
    addPressed = TRUE;
    minusPressed = FALSE;
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
        secondOperand = NULL;
    }
    
    isOperatorPressed = TRUE;
    addPressed = FALSE;
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
@end
