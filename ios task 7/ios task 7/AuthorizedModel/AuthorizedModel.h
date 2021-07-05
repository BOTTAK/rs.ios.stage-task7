//
//  AuthorizedModel.h
//  ios task 7
//
//  Created by Василий Пенькевич on 5.07.21.
//

#import <Foundation/Foundation.h>



typedef NSArray AuthorizationMessages;

typedef NS_ENUM(NSInteger, AppAuthorizationMessage) {
    AppAuthorizationStatusLogin,
    AppAuthorizationStatusPassword,
    AppAuthorizationStatusOk
};


@interface AuthorizationModel : NSObject

+(AuthorizationMessages*)authorizeWithLogin:(NSString*)login andPassword:(NSString*)password;
+(BOOL)checkPinCode:(NSString*)code;

@end
