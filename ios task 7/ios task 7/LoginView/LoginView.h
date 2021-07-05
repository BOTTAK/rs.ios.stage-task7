//
//  LoginView.h
//  ios task 7
//
//  Created by Василий Пенькевич on 5.07.21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginView : UIView
@property (weak, nonatomic) IBOutlet UILabel *passCodeLB;
-(void)resetState;

@end

NS_ASSUME_NONNULL_END

