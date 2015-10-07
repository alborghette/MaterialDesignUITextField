//
//  MDTFViewController.m
//  MaterialDesignUITextField
//
//  Created by murilo.alborghette on 09/29/2015.
//  Copyright (c) 2015 murilo.alborghette. All rights reserved.
//

#import "MDTFViewController.h"
#import "NSString+EmailValidation.h"

@implementation MDTFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [_mdtfEmail setDelegate:self];
    [_mdtfName setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)mdtfTextFieldDidEndEditing:(MDTFTextField *)textField {
    if (textField == _mdtfEmail && ![textField.txtField.text isValidEmail]) {
        [textField setErrorStyle];
    }
}

@end
