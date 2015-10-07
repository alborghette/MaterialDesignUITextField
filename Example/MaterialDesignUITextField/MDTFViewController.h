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

@property (weak, nonatomic) IBOutlet MDTFTextField *mdtfEmail;

@property (weak, nonatomic) IBOutlet MDTFTextField *mdtfName;
@end
