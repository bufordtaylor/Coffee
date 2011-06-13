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


#define degreesToRadians(x) (M_PI * x / 180.0)
#define RGB(r, g, b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];

#define k94 [UIColor colorWithRed:0.521569 green:0.768627 blue:0.254902 alpha:1]
#define k93 [UIColor colorWithRed:0.949020 green:0.396078 blue:0.133333 alpha:1]
#define k92 [UIColor colorWithRed:0.180392 green:0.772549 blue:0.956863 alpha:1]
#define k91 [UIColor colorWithRed:0.925490 green:0.000000 blue:0.549020 alpha:1]
#define k90 [UIColor colorWithRed:1.000000 green:0.980392 blue:0.729412 alpha:1]
#define k1 [UIColor colorWithRed:0.831373 green:0.780392 blue:0.000000 alpha:1]
#define k2 [UIColor colorWithRed:0.815686 green:0.764706 blue:0.000000 alpha:1]
#define k3 [UIColor colorWithRed:0.796078 green:0.749020 blue:0.000000 alpha:1]
#define k4 [UIColor colorWithRed:0.780392 green:0.733333 blue:0.000000 alpha:1]
#define k5 [UIColor colorWithRed:0.764706 green:0.717647 blue:0.000000 alpha:1]
#define k6 [UIColor colorWithRed:0.745098 green:0.701961 blue:0.000000 alpha:1]
#define k7 [UIColor colorWithRed:0.725490 green:0.682353 blue:0.000000 alpha:1]
#define k8 [UIColor colorWithRed:0.709804 green:0.670588 blue:0.000000 alpha:1]
#define k9 [UIColor colorWithRed:0.694118 green:0.654902 blue:0.000000 alpha:1]
#define k10 [UIColor colorWithRed:0.674510 green:0.639216 blue:0.000000 alpha:1]
#define k11 [UIColor colorWithRed:0.658824 green:0.623529 blue:0.000000 alpha:1]
#define k12 [UIColor colorWithRed:0.643137 green:0.607843 blue:0.000000 alpha:1]
#define k13 [UIColor colorWithRed:0.619608 green:0.043137 blue:0.058824 alpha:1]
#define k14 [UIColor colorWithRed:0.631373 green:0.047059 blue:0.066667 alpha:1]
#define k15 [UIColor colorWithRed:0.647059 green:0.054902 blue:0.070588 alpha:1]
#define k16 [UIColor colorWithRed:0.662745 green:0.058824 blue:0.078431 alpha:1]
#define k17 [UIColor colorWithRed:0.674510 green:0.062745 blue:0.082353 alpha:1]
#define k18 [UIColor colorWithRed:0.694118 green:0.066667 blue:0.086275 alpha:1]
#define k19 [UIColor colorWithRed:0.709804 green:0.070588 blue:0.094118 alpha:1]
#define k20 [UIColor colorWithRed:0.725490 green:0.074510 blue:0.098039 alpha:1]
#define k21 [UIColor colorWithRed:0.741176 green:0.078431 blue:0.101961 alpha:1]
#define k22 [UIColor colorWithRed:0.752941 green:0.082353 blue:0.105882 alpha:1]
#define k23 [UIColor colorWithRed:0.768627 green:0.086275 blue:0.109804 alpha:1]
#define k24 [UIColor colorWithRed:0.784314 green:0.086275 blue:0.113725 alpha:1]
#define k25 [UIColor colorWithRed:0.666667 green:0.650980 blue:0.494118 alpha:1]
#define k26 [UIColor colorWithRed:0.635294 green:0.619608 blue:0.470588 alpha:1]
#define k27 [UIColor colorWithRed:0.603922 green:0.592157 blue:0.447059 alpha:1]
#define k28 [UIColor colorWithRed:0.568627 green:0.556863 blue:0.423529 alpha:1]
#define k29 [UIColor colorWithRed:0.541176 green:0.529412 blue:0.400000 alpha:1]
#define k30 [UIColor colorWithRed:0.509804 green:0.498039 blue:0.376471 alpha:1]
#define k31 [UIColor colorWithRed:0.482353 green:0.474510 blue:0.356863 alpha:1]
#define k32 [UIColor colorWithRed:0.450980 green:0.443137 blue:0.333333 alpha:1]
#define k33 [UIColor colorWithRed:0.419608 green:0.407843 blue:0.305882 alpha:1]
#define k34 [UIColor colorWithRed:0.384314 green:0.376471 blue:0.278431 alpha:1]
#define k35 [UIColor colorWithRed:0.349020 green:0.341176 blue:0.250980 alpha:1]
#define k36 [UIColor colorWithRed:0.313726 green:0.305882 blue:0.223529 alpha:1]
#define k37 [UIColor colorWithRed:0.933333 green:0.870588 blue:0.000000 alpha:1]
#define k38 [UIColor colorWithRed:0.917647 green:0.854902 blue:0.000000 alpha:1]
#define k39 [UIColor colorWithRed:0.898039 green:0.839216 blue:0.000000 alpha:1]
#define k40 [UIColor colorWithRed:0.882353 green:0.823529 blue:0.000000 alpha:1]
#define k41 [UIColor colorWithRed:0.862745 green:0.807843 blue:0.000000 alpha:1]
#define k42 [UIColor colorWithRed:0.847059 green:0.796078 blue:0.000000 alpha:1]
#define k43 [UIColor colorWithRed:0.800000 green:0.090196 blue:0.117647 alpha:1]
#define k44 [UIColor colorWithRed:0.807843 green:0.094118 blue:0.121569 alpha:1]
#define k45 [UIColor colorWithRed:0.811765 green:0.094118 blue:0.121569 alpha:1]
#define k46 [UIColor colorWithRed:0.827451 green:0.094118 blue:0.125490 alpha:1]
#define k47 [UIColor colorWithRed:0.847059 green:0.098039 blue:0.129412 alpha:1]
#define k48 [UIColor colorWithRed:0.858824 green:0.101961 blue:0.129412 alpha:1]
#define k49 [UIColor colorWithRed:0.870588 green:0.843137 blue:0.631373 alpha:1]
#define k50 [UIColor colorWithRed:0.835294 green:0.811765 blue:0.611765 alpha:1]
#define k51 [UIColor colorWithRed:0.803922 green:0.780392 blue:0.588235 alpha:1]
#define k52 [UIColor colorWithRed:0.768627 green:0.749020 blue:0.564706 alpha:1]
#define k53 [UIColor colorWithRed:0.733333 green:0.713726 blue:0.541176 alpha:1]
#define k54 [UIColor colorWithRed:0.698039 green:0.682353 blue:0.517647 alpha:1]
#define k55 [UIColor colorWithRed:0.803922 green:0.000000 blue:0.478431 alpha:1]
#define k56 [UIColor colorWithRed:0.768627 green:0.000000 blue:0.458824 alpha:1]
#define k57 [UIColor colorWithRed:0.729412 green:0.000000 blue:0.435294 alpha:1]
#define k58 [UIColor colorWithRed:0.694118 green:0.000000 blue:0.411765 alpha:1]
#define k59 [UIColor colorWithRed:0.137255 green:0.588235 blue:0.725490 alpha:1]
#define k60 [UIColor colorWithRed:0.145098 green:0.615686 blue:0.760784 alpha:1]
#define k61 [UIColor colorWithRed:0.156863 green:0.647059 blue:0.800000 alpha:1]
#define k62 [UIColor colorWithRed:0.164706 green:0.674510 blue:0.835294 alpha:1]
#define k63 [UIColor colorWithRed:0.976471 green:0.615686 blue:0.109804 alpha:1]
#define k64 [UIColor colorWithRed:0.988235 green:0.686275 blue:0.090196 alpha:1]
#define k65 [UIColor colorWithRed:1.000000 green:0.760784 blue:0.054902 alpha:1]
#define k66 [UIColor colorWithRed:1.000000 green:0.835294 blue:0.000000 alpha:1]
#define k67 [UIColor colorWithRed:0.290196 green:0.470588 blue:0.137255 alpha:1]
#define k68 [UIColor colorWithRed:0.329412 green:0.517647 blue:0.156863 alpha:1]
#define k69 [UIColor colorWithRed:0.364706 green:0.564706 blue:0.176471 alpha:1]
#define k70 [UIColor colorWithRed:0.407843 green:0.619608 blue:0.200000 alpha:1]
#define k71 [UIColor colorWithRed:0.952941 green:0.886275 blue:0.000000 alpha:1]
#define k72 [UIColor colorWithRed:0.968627 green:0.901961 blue:0.000000 alpha:1]
#define k73 [UIColor colorWithRed:0.988235 green:0.917647 blue:0.000000 alpha:1]
#define k74 [UIColor colorWithRed:0.874510 green:0.101961 blue:0.133333 alpha:1]
#define k75 [UIColor colorWithRed:0.890196 green:0.105882 blue:0.137255 alpha:1]
#define k76 [UIColor colorWithRed:0.905882 green:0.109804 blue:0.137255 alpha:1]
#define k77 [UIColor colorWithRed:0.972549 green:0.937255 blue:0.698039 alpha:1]
#define k78 [UIColor colorWithRed:0.937255 green:0.905882 blue:0.678431 alpha:1]
#define k79 [UIColor colorWithRed:0.901961 green:0.874510 blue:0.654902 alpha:1]
#define k80 [UIColor colorWithRed:0.843137 green:0.000000 blue:0.501961 alpha:1]
#define k81 [UIColor colorWithRed:0.878431 green:0.000000 blue:0.521569 alpha:1]
#define k82 [UIColor colorWithRed:0.168627 green:0.705882 blue:0.874510 alpha:1]
#define k83 [UIColor colorWithRed:0.172549 green:0.733333 blue:0.909804 alpha:1]
#define k84 [UIColor colorWithRed:0.956863 green:0.474510 blue:0.125490 alpha:1]
#define k85 [UIColor colorWithRed:0.964706 green:0.545098 blue:0.121569 alpha:1]
#define k86 [UIColor colorWithRed:0.447059 green:0.666667 blue:0.215686 alpha:1]
#define k87 [UIColor colorWithRed:0.482353 green:0.713726 blue:0.235294 alpha:1]
#define k88 [UIColor colorWithRed:1.000000 green:0.941176 blue:0.000000 alpha:1]
#define k89 [UIColor colorWithRed:0.929412 green:0.109804 blue:0.141176 alpha:1]

#import "CoffeeModels.h"
#import "Services.h"
#import "CoffeeCoreData.h"

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

-(id) initWithCoder:(NSCoder *)aDecoder {
    
    if (self == [super initWithCoder:aDecoder]) {
        [aButton addTarget:self action:@selector(balls:) forControlEvents:UIControlEventTouchDown];
        
    }
    return self;
}

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
    if([self colorCompare:color constColor:k1]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Coffee Blossom", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k2]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Tea Rose", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k3]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Cardamon Caraway", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k4]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Coriander Seeds", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k5]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Lemon", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k6]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Apple", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k7]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Apricot", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k8]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Blackberry", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k9]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Onion", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k10]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Garlic", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k11]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Cucumber", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k12]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Garden Peas", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k13]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Roasted Peanuts", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k14]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Walnuts", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k15]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Balsamic Rice", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k16]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Toast", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k17]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Roasted Hazelnut", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k18]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Roasted Almond", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k19]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Honey", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k20]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Maple Syrup", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k21]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Bakers", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k22]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Dark Chocolate", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k23]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Swiss", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k24]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Butter", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k25]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Piney", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k26]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Black Current-like", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k27]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Camphoric", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k28]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Cineolic", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k29]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Cedar", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k30]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Pepper", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k31]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Clove", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k32]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Thyme", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k33]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Tarry Tobacco", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k34]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Pipe Tobacco", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k35]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Burned", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k36]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Charred", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k37]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Floral", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k38]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Fragrant", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k39]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Citrus", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k40]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Berry-like", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k41]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Alliaceous", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k42]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Leguminous", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k43]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Nut-like", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k44]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Malt-like", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k45]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Candy-like", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k46]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Syrup-like", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k47]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Chocolate-like", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k48]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Vanilla-like", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k49]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Turpeny", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k50]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Medicinal", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k51]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Warming", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k52]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Pungent", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k53]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Smoky", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k54]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Ashy", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k55]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Creosol", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k56]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Phenolic", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k57]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Caustic", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k58]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Alkaline", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k59]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Astringent", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k60]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Rough", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k61]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Neutral", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k62]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Soft", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k63]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Delicate", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k64]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Mild", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k65]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Nippy", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k66]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Piquant", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k67]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Tangy", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k68]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Tart", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k69]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Hard", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k70]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Acrid", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k71]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Flowery", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k72]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Fruity", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k73]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Herby", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k74]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Nutty", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k75]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Carmelly", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k76]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Chocolately", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k77]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Resinous", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k78]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Spicy", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k79]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Carbony", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k80]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Pungent", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k81]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Harsh", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k82]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Sharp", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k83]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Bland", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k84]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Mellow", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k85]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Acidy", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k86]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Winey", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k87]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Soury", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k88]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Enzymatic", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    if([self colorCompare:color constColor:k89]){
        NSArray* array = [NSArray arrayWithObjects:aTextView.text, @"Sugar Browning", nil];
        aTextView.text = [array componentsJoinedByString:@"   "];
    }
    

//    NSLog(@" %@", pixelColor );
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
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
    
//    CoffeeCoreData* dataSource = [(CoffeeAppDelegate*)[[UIApplication sharedApplication] delegate] dataSource];
//    Wheels* wheel = [Wheels createInContext:dataSource.managedObjectContext];
//    wheel.position = [NSNumber numberWithInt:89];
//    wheel.wheel_group = [NSNumber numberWithInt:1];
//    wheel.red = [NSNumber numberWithFloat:0.929412];
//    wheel.blue = [NSNumber numberWithFloat:0.141176];
//    wheel.green = [NSNumber numberWithFloat:0.109804];
//    wheel.name = @"Sugar Browning";
//    [dataSource.managedObjectContext save];
    
    l1.transform = CGAffineTransformMakeRotation( degreesToRadians(270) );
    l2.transform = CGAffineTransformMakeRotation( degreesToRadians(278) );
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
