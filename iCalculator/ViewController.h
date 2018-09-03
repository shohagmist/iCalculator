//
//  ViewController.h
//  iCalculator
//
//  Created by Admin on 11/8/18.
//  Copyright © 2018 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSString* firstOperand;
    NSString* secondOperand;
    bool isOperatorPressed;
    
    bool addPressed;
    bool minusPressed;
}

@property (weak, nonatomic) IBOutlet UILabel *calculation;
- (IBAction)clearButtonAction:(id)sender;
- (IBAction)plusOperatorPressed:(id)sender;
- (IBAction)minusOperatorPressed:(id)sender;
- (IBAction)equalButtonAction:(id)sender;
- (IBAction)numericButtonPressed:(UIButton*)sender;

@end

