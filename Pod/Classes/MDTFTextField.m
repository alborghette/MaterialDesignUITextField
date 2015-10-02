//
//  MDTextView.m
//  MaterialDesignUITextField
//
//  Created by Murilo Alborghette on 17/09/15.
//  Copyright © 2015 Murilo Alves Alborghette. All rights reserved.
//

#import "MDTFTextField.h"


@implementation MDTFTextField

NSString* const xibFileName = @"MDTFTextFieldView";

-(id)initWithCoder:(NSCoder *)aDecoder{
    if ((self = [super initWithCoder:aDecoder])) {
        MDTFTextField *loadedView = [[[NSBundle bundleForClass:self.classForCoder] loadNibNamed:xibFileName
                                                                                          owner:self
                                                                                        options:nil] firstObject];
        
        [self addSubview:loadedView];
        
        [loadedView setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        [self addConstraint:[self pin:loadedView attribute:NSLayoutAttributeTop]];
        [self addConstraint:[self pin:loadedView attribute:NSLayoutAttributeLeft]];
        [self addConstraint:[self pin:loadedView attribute:NSLayoutAttributeRight]];
        [self addConstraint:[self pin:loadedView attribute:NSLayoutAttributeBottom]];

        [self setDefaultValuesInInspectables];
    }
    return self;
}

- (NSLayoutConstraint *)pin:(id)item attribute:(NSLayoutAttribute)attibute {
    return [NSLayoutConstraint constraintWithItem:self
                                        attribute:attibute
                                        relatedBy:NSLayoutRelationEqual
                                           toItem:item
                                        attribute:attibute
                                       multiplier:1.0
                                         constant:0.0];
}

- (void)awakeFromNib {
    [self setValuesInComponents];
    [_txtField setDelegate:self];
}


- (void)setDefaultValuesInInspectables {
    
    UIColor *grayColor  = [UIColor colorWithRed:146.0f/255.0f green:146.0f/255.0f blue:146.0f/255.0f alpha:1.0f];
    UIColor *blueColor  = [UIColor colorWithRed:79.0f/255.0f green:169.0f/255.0f blue:241.0f/255.0f alpha:1.0f];
    UIColor *redColor   = [UIColor colorWithRed:220.0f/255.0f green:50.0f/255.0f blue:38.0f/255.0f alpha:1.0f];
    UIColor *blackColor = [UIColor colorWithRed:60.0f/255.0f green:60.0f/255.0f blue:60.0f/255.0f alpha:1.0f];
    
    _viewBackgroundColor = [UIColor clearColor];
    
    _fontFamily = @"Roboto-Regular";
    
    _nonEditedColorPlaceholder = grayColor;
    _editColorPlaceholder      = blueColor;
    _editedColorPlaceholder    = grayColor;
    _errorColorPlaceholder     = redColor;
    
    _nonEditedColorTextField = blackColor;
    _editColorTextField      = blackColor;
    _editedColorTextField    = blackColor;
    _errorColorTextField     = blackColor;
    
    _nonEditedColorUnderline = grayColor;
    _editColorUnderline      = blueColor;
    _editedColorUnderline    = grayColor;
    _errorColorUnderline     = redColor;
    
    _errorMessageColor = redColor;
    
    _placeholderText = @"LabelText";
    _errorText       = @"Error Message";
    
    _errorFontSize       = 12;
    _placeholderFontSize = 17;
    _textFieldFontSize   = 17;
}


- (void)setValuesInComponents {
    [self setBackgroundColor:_viewBackgroundColor];
    
    [_lblPlaceholderTextField setTextColor:_nonEditedColorPlaceholder];
    [_lblPlaceholderTextField setText:_placeholderText];
    [_lblPlaceholderTextField setFont:[UIFont fontWithName:_fontFamily size:_placeholderFontSize]];
    
    [_underlineText setBackgroundColor:_nonEditedColorUnderline];
    
    [_txtField setFont:[UIFont fontWithName:_fontFamily size:_placeholderFontSize]];
    [_txtField setTextColor:_nonEditedColorTextField];
    
    [_lblErrorMessage setTextColor:_errorMessageColor];
    //[_lblErrorMessage setFont:[UIFont fontWithName:_fontFamily size:_errorFontSize]];
    [_lblErrorMessage setText:_errorText];
    [_lblErrorMessage setHidden:YES];
    
    [_underlineText setTintColor:_nonEditedColorUnderline];
}


- (void)setEditingStyle {
    [_lblPlaceholderTextField setTextColor:_editColorPlaceholder];
    [_underlineText setBackgroundColor:_editColorUnderline];
}

- (void)setFinishEditStyle {
    [_lblPlaceholderTextField setTextColor:_editedColorPlaceholder];
    [_underlineText setBackgroundColor:_editedColorUnderline];
}

- (void)setErrorStyle {
    [_lblPlaceholderTextField setTextColor:_errorColorPlaceholder];
    [_underlineText setBackgroundColor:_errorColorUnderline];
    [_lblErrorMessage setHidden:NO];
}

- (void)setErrorStyleWithMessage:(NSString *)message {
    [_lblErrorMessage setText:message];
    [self setErrorStyle];
}

#pragma mark UITextField Delegates
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    [self placeholderLabelEffectMoveUp:YES];
    [self setEditingStyle];
    
    [_delegate mdtfTextFieldShouldBeginEditing:self];
    
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (!_txtField.text.length) {
        [self placeholderLabelEffectMoveUp:NO];
    }
    [self setFinishEditStyle];
    
    [_delegate mdtfTextFieldDidEndEditing:self];
}

#pragma mark animations events
/*!
 * @brief Internal Method. Show placeholder animation when the text field is focused.
 */
- (void)placeholderLabelEffectMoveUp:(BOOL)startEdit {
    
    CGFloat fontSize;
    CGFloat yPosition;
    
    if (startEdit) {
        if (_lblPlaceholderTextField.font.pointSize == 13) {
            return;
        }
        fontSize  = 13;
        yPosition = _lblPlaceholderTextField.frame.origin.y-22;
    } else {
        if (_lblPlaceholderTextField.font.pointSize == _placeholderFontSize) {
            return;
        }
        fontSize  = _placeholderFontSize;
        yPosition = _lblPlaceholderTextField.frame.origin.y+22;
    }
    
    [UIView animateWithDuration:0.2
                          delay:0
                        options: UIViewAnimationOptionCurveLinear
                     animations:^{
                         [_lblPlaceholderTextField setFont:[UIFont systemFontOfSize:fontSize]];
                         [_lblPlaceholderTextField setFrame:CGRectMake(_lblPlaceholderTextField.frame.origin.x,
                                                               yPosition,
                                                               _lblPlaceholderTextField.frame.size.width,
                                                               _lblPlaceholderTextField.frame.size.height)];
                     }
                     completion:nil];
}

@end
