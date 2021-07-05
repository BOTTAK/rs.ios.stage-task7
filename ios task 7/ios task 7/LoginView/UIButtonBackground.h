//
//  UIButtonBackground.h
//  ios task 7
//
//  Created by Василий Пенькевич on 5.07.21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (BackgoundColor)

- (void)setBackgroundColor:(UIColor *)color forState:(UIControlState)state;

@end

NS_ASSUME_NONNULL_END
