//
//  IBTableViewCell.m
//  Coffee
//
//  Created by Buford Taylor on 5/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "IBTableViewCell.h"


@implementation IBTableViewCell

@synthesize cellView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithCellNib:(NSString*)nibName reuseIdentifier:(NSString *)reuseIdentifier {
    if ((self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier])) {
		// XXX: do we have to do that thing where we set the identifier in the Xib to match the reuseidentifier?
		NSArray* tmp = [[NSBundle mainBundle] loadNibNamed:nibName owner:self options:NULL];
		if (!tmp) {
			[NSException raise:@"Unable to load nib" format:@"named '%@'.", nibName];
		}
	}
	[self.contentView addSubview:self.cellView];
	return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc
{
    [cellView release];
    [super dealloc];
}

@end