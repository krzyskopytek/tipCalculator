//
//  ViewController.m
//  tipCalculator
//
//  Created by Krzysztof Kopytek on 2016-05-13.
//  Copyright © 2016 Krzysztof Kopytek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tipAmountLabel.text = @"";
    self.tipPercentageTextField.text = @"15";
    
}




- (IBAction)calculateTip:(id)sender {

    float tip = [self.billAmountTextField.text integerValue];
    tip = tip*[self.tipPercentageTextField.text integerValue]/100;
    if(tip < 0.01) self.tipAmountLabel.text = @"Inproper input";
    else self.tipAmountLabel.text = [NSString stringWithFormat:@"%.2f", tip];
    
}

@end
