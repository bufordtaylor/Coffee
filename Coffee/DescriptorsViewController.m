//
//  DescriptorsViewController.m
//  Coffee
//
//  Created by Buford Taylor on 5/14/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DescriptorsViewController.h"
#import "OBShapedButton.h"
#import "UIImage+ColorAtPixel.h"

#define RGB(r, g, b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];

#define k94 [UIColor colorWithRed:0.521569 green:0.768627 blue:0.254902 alpha:1]
#define k93 [UIColor colorWithRed:0.949020 green:0.396078 blue:0.133333 alpha:1]
#define k92 [UIColor colorWithRed:0.180392 green:0.772549 blue:0.956863 alpha:1]
#define k91 [UIColor colorWithRed:0.925490 green:0.000000 blue:0.549020 alpha:1]
#define k90 [UIColor colorWithRed:1.000000 green:0.980392 blue:0.729412 alpha:1]

@implementation UIColor (Extensions)

+ (UIColor *)colorWithHueDegrees:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness {
    return [UIColor colorWithHue:(hue/360) saturation:saturation brightness:brightness alpha:1.0];
}

+ (UIColor *)aquaColor {
    return [UIColor colorWithHueDegrees:210 saturation:1.0 brightness:1.0];
}

+ (UIColor *)paleYellowColor {
    return [UIColor colorWithHueDegrees:60 saturation:0.2 brightness:1.0];
}

@end

@implementation DescriptorsViewController

@synthesize aButton, aTextView, cancelButton, saveButton;

-(BOOL) colorCompare:(UIColor*)touchedColor constColor:(UIColor*)kColor {
    
    CGFloat* components = CGColorGetComponents(touchedColor.CGColor);
    CGFloat* kcomponents = CGColorGetComponents(kColor.CGColor);
    int r1i = (int)(components[0]*100);
    
    //Debug for getting color values
    DLog(@"%f %f %f", components[0], components[1], components[2]);
    int r2i = (int)(kcomponents[0]*100);
    int g1i = (int)(components[1]*100);
    int g2i = (int)(kcomponents[1]*100);
    int b1i = (int)(components[2]*100);
    int b2i = (int)(kcomponents[2]*100);
    if ( r1i == r2i && g1i == g2i && b1i == b2i ) {
        DLog(@"r %d - %d", r1i, r2i);
        DLog(@"g %d - %d", g1i, g2i);
        DLog(@"b %d - %d", b1i, b2i);
        return TRUE;
    }
    return FALSE;
}

- (void) touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event {
	
	// We can't test the image's alpha channel if the button has no image. Fall back to super.
    UIImage *buttonImage = [aButton imageForState:UIControlStateNormal];
  
    UITouch* touch = [touches anyObject];
    CGPoint point = [touch locationInView:aButton]; //where image was tapped
    
    
    //Point lies outside our bounds
    BOOL superResult = [aButton pointInside:point withEvent:event];
    if (!superResult) {
        return;
    }
    
    // Correct point to take into account that the image does not have to be the same size
    // as the button. See https://github.com/ole/OBShapedButton/issues/1
    CGSize iSize = buttonImage.size;
    CGSize bSize = aButton.frame.size;
    point.x *= (bSize.width != 0) ? (iSize.width / bSize.width) : 1;
    point.y *= (bSize.height != 0) ? (iSize.height / bSize.height) : 1;
    

    
    CGColorRef pixelColor = [[buttonImage colorAtPixel:point] CGColor];
    UIColor* color = [UIColor colorWithCGColor:pixelColor];
    
    if([self colorCompare:color constColor:k94]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Sour", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k92]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Salt", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k91]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Bitter", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k93]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Sweet", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k90]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Dry Distillation", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    
//    NSLog(@" %@", pixelColor );
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
}

-(id) initWithCoder:(NSCoder *)aDecoder {
    
    if (self == [super initWithCoder:aDecoder]) {
        [aButton addTarget:self action:@selector(balls:) forControlEvents:UIControlEventTouchDown];
    }
    return self;
}

-(void)balls {
    DLog(@"Balls");
    
}
- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}


@end
