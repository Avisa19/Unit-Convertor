//
//  ViewController.m
//  Unit-Convertor
//
//  Created by Avisa Poshtkouhi on 7/15/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputFiield;



@end

@implementation ViewController
- (IBAction)updateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    [buf appendString: @"Clicked"];
    self.outputFiield.text = buf;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
