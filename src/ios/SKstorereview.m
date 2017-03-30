//
//  SKStoreReview​.h
//  SKStore​Review​Plugin
//
//  Created by Omar Ben brahim on 28/3/17.
//  Copyright © 2017 Omar Ben brahim. All rights reserved.
//

#import "SKstorereview.h"
#import <StoreKit/StoreKit.h>

@interface SKstorereview (){
    
}


@end



@implementation SKstorereview


- (void)viewDidLoad {

}

- (void)requestReview:(CDVInvokedUrlCommand*)command
{
    [SKStoreReviewController requestReview];
}


@end
