//
//  CuppingListTableCell.h
//  Coffee
//
//  Created by Buford Taylor on 5/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IBTableViewCell.h"


@interface CuppingListTableCell : IBTableViewCell {
    
    IBOutlet UITextView* notesTextView;
    IBOutlet UIButton* notesButton;
    IBOutlet UITextField* nameTextField;
    IBOutlet UITextField* scoreTextField;
    
}
@property (nonatomic, retain) UITextView * notesTextView;
@property (nonatomic, retain) UIButton * notesButton;
@property (nonatomic, retain) UITextField * nameTextField;
@property (nonatomic, retain) UITextField * scoreTextField;


-(id) initWithReuseIdentifier:(NSString*)ri;

@end
