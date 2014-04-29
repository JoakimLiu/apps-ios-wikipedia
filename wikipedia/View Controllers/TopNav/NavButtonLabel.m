//  Created by Monte Hurd on 4/27/14.
//  Copyright (c) 2013 Wikimedia Foundation. Provided under MIT-style license; please copy and modify!

#import "NavButtonLabel.h"

@implementation NavButtonLabel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.textAlignment = NSTextAlignmentCenter;
        self.adjustsFontSizeToFitWidth = YES;
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

-(void)setText:(NSString *)text
{
    NSDictionary *attributes =
    @{
      NSFontAttributeName: [UIFont fontWithName:@"WikiFont-Regular" size:34],
      NSForegroundColorAttributeName : [UIColor blackColor],
      NSBaselineOffsetAttributeName: @2
      };
    
    self.attributedText =
        [[NSAttributedString alloc] initWithString: text
                                        attributes: attributes];
}

@end