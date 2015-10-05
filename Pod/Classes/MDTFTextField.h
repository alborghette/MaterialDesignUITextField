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


/*!
 *  @brief  TextField container color
 */
@property (nonatomic) IBInspectable UIColor *viewBackgroundColor;

/*!
 *  @brief  Font family
 */
@property (nonatomic) IBInspectable NSString *fontFamily;


/*!
 *  @brief  Placeholder text
 */
@property (nonatomic) IBInspectable NSString *placeholderText;

/*!
 *  @brief  Color to set placeholder when the field is empty
 */
@property (nonatomic) IBInspectable UIColor *nonEditedColorPlaceholder;

/*!
 *  @brief  Color to set placeholder when the field is in editing
 */
@property (nonatomic) IBInspectable UIColor *editColorPlaceholder;

/*!
 *  @brief  Color to set placeholder when the field contain text
 */
@property (nonatomic) IBInspectable UIColor *editedColorPlaceholder;

/*!
 *  @brief  Color to set placeholder when the field is setted error style
 */
@property (nonatomic) IBInspectable UIColor *errorColorPlaceholder;

/*!
 *  @brief  Color to set text field when the field is empty
 */
@property (nonatomic) IBInspectable UIColor *nonEditedColorTextField;

/*!
 *  @brief  Color to set text field when the field is in editing
 */
@property (nonatomic) IBInspectable UIColor *editColorTextField;

/*!
 *  @brief  Color to set text field when the field contain text
 */
@property (nonatomic) IBInspectable UIColor *editedColorTextField;

/*!
 *  @brief  Color to set text field when the field is setted error style
 */
@property (nonatomic) IBInspectable UIColor *errorColorTextField;

/*!
 *  @brief  Color to set underline when the field is empty
 */
@property (nonatomic) IBInspectable UIColor *nonEditedColorUnderline;

/*!
 *  @brief  Color to set underline when the field is in editing
 */
@property (nonatomic) IBInspectable UIColor *editColorUnderline;

/*!
 *  @brief  Color to set underline when the field contain text
 */
@property (nonatomic) IBInspectable UIColor *editedColorUnderline;

/*!
 *  @brief  Color to set underline when the field is setted error style
 */
@property (nonatomic) IBInspectable UIColor *errorColorUnderline;

/*!
 *  @brief  Text to set in error label
 */
@property (nonatomic) IBInspectable NSString *errorText;

/*!
 *  @brief  Color to set error message
 */
@property (nonatomic) IBInspectable UIColor *errorMessageColor;

/*!
 *  @brief  Font size to set error message
 */
@property (nonatomic) IBInspectable CGFloat errorFontSize;

/*!
 *  @brief  Font size to set placeholder
 */
@property (nonatomic) IBInspectable CGFloat placeholderFontSize;

/*!
 *  @brief  Font size to set text field
 */
@property (nonatomic) IBInspectable CGFloat textFieldFontSize;


/*!
 *  @brief  <#Description#>
 */
- (void)setEditingStyle;

/*!
 *  @brief  <#Description#>
 */
- (void)setFinishEditStyle;

/*!
 *  @brief  <#Description#>
 */
- (void)setErrorStyle;

/*!
 *  @brief  <#Description#>
 *
 *  @param message <#message description#>
 */
- (void)setErrorStyleWithMessage:(NSString *)message;

@end



@protocol MDTFTextFieldDelegate <NSObject>
@optional
- (void)mdtfTextFieldShouldBeginEditing:(MDTFTextField *)textField;
@optional
- (void)mdtfTextFieldDidEndEditing:(MDTFTextField *)textField;

@end
