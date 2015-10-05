//
//  MDTFViewController.m
//  MaterialDesignUITextField
//
//  Created by murilo.alborghette on 09/29/2015.
//  Copyright (c) 2015 murilo.alborghette. All rights reserved.
//

#import "MDTFViewController.h"

@implementation MDTFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [_mdTextField1 setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)mdtfTextFieldShouldBeginEditing:(MDTFTextField *)textField {
    [textField setEditingStyle];
}

- (void)mdtfTextFieldDidEndEditing:(MDTFTextField *)textField {
    [textField setErrorStyle];
}

@end
