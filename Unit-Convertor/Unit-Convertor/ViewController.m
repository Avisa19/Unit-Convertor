//
//  ViewController.m
//  Unit-Convertor
//
//  Created by Avisa Poshtkouhi on 7/15/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

#import "ViewController.h"

// Define Unit Two function
double convertUnitOneToUnitTwo(double unitOneValue) {
    double unitTwoValue;
    unitTwoValue = 10 * unitOneValue + 2;
    return unitTwoValue;
}

// Define Unit Three function
double convertUnitOneToUnitThree(double unitOneValue) {
    double unitThreeValue;
    unitThreeValue = 20 * unitOneValue + 4;
    return unitThreeValue;
}

// Define Unit Four Function
double convertUnitOneToUnitFour(double unitOneValue) {
    double unitFourValue;
    unitFourValue = 40 * unitOneValue + 8;
    return unitFourValue;
}

@interface ViewController ()

// Declare Variables, Properties
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputFiield;



@end

@implementation ViewController
- (IBAction)updateButton:(id)sender {

    // Declare variables
    NSMutableString *buf = [NSMutableString new];
    double userInput = [self.inputField.text doubleValue];
    
    // Write a conversion function
    if (self.segmentController.selectedSegmentIndex == 0) {
        double unitTwoValue = convertUnitOneToUnitTwo(userInput);
        [buf appendString: [@(unitTwoValue) stringValue]];
    } else if (self.segmentController.selectedSegmentIndex == 1) {
        double unitThreeValue = convertUnitOneToUnitThree(userInput);
        [buf appendString:[@(unitThreeValue) stringValue]];
    } else {
        double unitFourValue = convertUnitOneToUnitFour(userInput);
        [buf appendString:[@(unitFourValue) stringValue]];
    }
    
    self.outputFiield.text = buf;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
