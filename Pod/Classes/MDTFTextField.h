//
//  MDTextView.h
//  MaterialDesignUITextField
//
//  Created by Murilo Alborghette on 17/09/15.
//  Copyright © 2015 Murilo Alves Alborghette. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MDTFTextFieldDelegate;
@interface MDTFTextField : UIView<UITextFieldDelegate>

@property (strong, nonatomic) id<MDTFTextFieldDelegate>delegate;

@property (strong, nonatomic) IBOutlet MDTFTextField *container;

/*!
 *  @brief  Error Message Label
 */
@property (weak, nonatomic) IBOutlet UILabel *lblErrorMessage;

/*!
 *  @brief  Text Field
 */
@property (weak, nonatomic) IBOutlet UITextField *txtField;

/*!
 *  @brief  Text Field Label
 */
@property (weak, nonatomic) IBOutlet UILabel *lblPlaceholderTextField;

/*!
 *  @brief  Underline in Text Field
 */
@property (weak, nonatomic) IBOutlet UIView *underlineText;


- (void)setEditingStyle;
- (void)setFinishEditStyle;
- (void)setErrorStyle;
- (void)setErrorStyleWithMessage:(NSString *)message;

@property (nonatomic) IBInspectable UIColor *viewBackgroundColor;

@property (nonatomic) IBInspectable NSString *fontFamily;

@property (nonatomic) IBInspectable NSString *placeholderText;
@property (nonatomic) IBInspectable UIColor *nonEditedColorPlaceholder;
@property (nonatomic) IBInspectable UIColor *editColorPlaceholder;
@property (nonatomic) IBInspectable UIColor *editedColorPlaceholder;
@property (nonatomic) IBInspectable UIColor *errorColorPlaceholder;

@property (nonatomic) IBInspectable UIColor *nonEditedColorTextField;
@property (nonatomic) IBInspectable UIColor *editColorTextField;
@property (nonatomic) IBInspectable UIColor *editedColorTextField;
@property (nonatomic) IBInspectable UIColor *errorColorTextField;

@property (nonatomic) IBInspectable UIColor *nonEditedColorUnderline;
@property (nonatomic) IBInspectable UIColor *editColorUnderline;
@property (nonatomic) IBInspectable UIColor *editedColorUnderline;
@property (nonatomic) IBInspectable UIColor *errorColorUnderline;

@property (nonatomic) IBInspectable NSString *errorText;
@property (nonatomic) IBInspectable UIColor *errorMessageColor;

@property (nonatomic) IBInspectable CGFloat errorFontSize;
@property (nonatomic) IBInspectable CGFloat placeholderFontSize;
@property (nonatomic) IBInspectable CGFloat textFieldFontSize;


@end

@protocol MDTFTextFieldDelegate <NSObject>

@optional
- (void)mdtfTextFieldShouldBeginEditing:(MDTFTextField *)textField;
@optional
- (void)mdtfTextFieldDidEndEditing:(MDTFTextField *)textField;

@end
