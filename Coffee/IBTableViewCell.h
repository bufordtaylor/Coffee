//
//  IBTableViewCell.h
//  Coffee
//
//  Created by Buford Taylor on 5/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

/*
Notes:
- Makes sure in the nib you link cellView outlet to the UIView in the nib!
- If doing a grouped table cell, then set the background to clear in IB.

*/

#import <UIKit/UIKit.h>


@interface IBTableViewCell : UITableViewCell {
    UIView* cellView;
}

@property (nonatomic, retain) IBOutlet UIView* cellView;


- (id)initWithCellNib:(NSString*)nibName reuseIdentifier:(NSString *)reuseIdentifier;

@end
