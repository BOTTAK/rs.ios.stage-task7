//
//  SingInViewController.m
//  ios task 7
//  Created by Василий Пенькевич on 5.07.21.


#import "SignInViewController.h"
#import "AppColors.h"
#import "LoginView.h"
#import "AuthorizedModel.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LoginView *view = (LoginView*)[self view];
    
    
    [view addObserver:self forKeyPath:@"passCodeLB.text" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
    
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    LoginView *view = (LoginView*)[self view];

    
    if ([[change valueForKey:@"new"] length] == 6) {
        
        BOOL codeOk = [AuthorizationModel checkPinCode:[change valueForKey:@"new"]];
        
        if (codeOk) {
            
            [view.passCodeLB.superview.layer setBorderWidth:2];
            [view.passCodeLB.superview.layer setCornerRadius:10];
            [view.passCodeLB.superview.layer setBorderColor:AppColors.turquosieGreen.CGColor];
            
            UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Welcome"
                                                                           message:@"You are successfuly authorized!"
                                                                    preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Refresh" style:UIAlertActionStyleDestructive
                                                                  handler:^(UIAlertAction * action) {
                [view resetState];
            }];
            
            [alert addAction:defaultAction];
            [self presentViewController:alert animated:YES completion:nil];

        } else {
            [view.passCodeLB setText:@"_"];
            [view.passCodeLB.superview.layer setBorderWidth:2];
            [view.passCodeLB.superview.layer setCornerRadius:10];
            [view.passCodeLB.superview.layer setBorderColor:AppColors.venetianRed.CGColor];
        }
        
    }
}


@end
