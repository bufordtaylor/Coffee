//
//  DescriptorsViewController.h
//  Coffee
//
//  Created by Buford Taylor on 5/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OBShapedButton;


@interface DescriptorsViewController : UIViewController <UITableViewDelegate> {
    
    OBShapedButton* aButton;
    UITextView* aTextView;
    UIButton* saveButton;
    UIButton* cancelButton;
}

@property (nonatomic, retain) IBOutlet OBShapedButton* aButton;
@property (nonatomic, retain) IBOutlet UITextView* aTextView;
@property (nonatomic, retain) IBOutlet UIButton* saveButton;
@property (nonatomic, retain) IBOutlet UIButton* cancelButton;

-(void)balls;
-(BOOL) sillyColorComparison:(CGFloat)red1 red2:(CGFloat)r2 green1:(CGFloat)g1 green2:(CGFloat)g2 blue1:(CGFloat)b1 blue2:(CGFloat)b2;
-(BOOL) colorCompare:(UIColor*)touchedColor constColor:(UIColor*)kColor;


@end
