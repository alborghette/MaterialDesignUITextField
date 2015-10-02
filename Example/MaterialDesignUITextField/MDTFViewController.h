//
//  MDTFViewController.h
//  MaterialDesignUITextField
//
//  Created by murilo.alborghette on 09/29/2015.
//  Copyright (c) 2015 murilo.alborghette. All rights reserved.
//
@import UIKit;
#import "MDTFTextField.h"

@interface MDTFViewController : UIViewController<MDTFTextFieldDelegate>

@property (weak, nonatomic) IBOutlet MDTFTextField *mdTextField1;

@property (weak, nonatomic) IBOutlet MDTFTextField *mdTextField2;

@property (weak, nonatomic) IBOutlet MDTFTextField *mdTextField3;

@property (weak, nonatomic) IBOutlet MDTFTextField *mdTextField4;
@end
