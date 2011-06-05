//
//  ScalePopoverPicker.h
//  Coffee
//
//  Created by Buford Taylor on 4/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ScalePopoverPickerDelegate
- (void)valueSelected:(NSString *)val referenceSender:(id)sender;
@end


@interface ScalePopoverPicker : UIViewController {
    id<ScalePopoverPickerDelegate> _delegate;
    
}

@property (nonatomic, assign) id<ScalePopoverPickerDelegate> delegate;
@end
