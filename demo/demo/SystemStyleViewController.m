//
//  SystemStyleViewController.m
//  demo
//
//  Created by 吴星辰 on 2017/10/16.
//  Copyright © 2017年 吴星辰. All rights reserved.
//

#import "SystemStyleViewController.h"

#import <EBBannerView.h>

@implementation SystemStyleViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    //
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(bannerDidClick:) name:EBBannerViewDidClickNotification object:nil];
}

-(void)bannerDidClick:(NSNotification*)noti{
    //... = noti.object
}

- (IBAction)buttonPressed:(UIButton*)sender {
    switch (sender.tag) {
        case 0:
//⭐️1.current system style (当前系统样式)
            [EBBannerView showWithContent:@"aaaa"];
            break;
        case 1:
        {
//⭐️2.iOS 9 style with short text (iOS 9 样式/少量文字)
            EBBannerView *banner = [EBBannerView bannerViewWithStyle:EBBannerViewStyleiOS9];
            banner.content = @"MINE eye hath played the painter and hath stelled";
            //banner.object = ...
            [banner show];
        }
            break;
        case 2:
        {
//⭐️3.iOS 9 style with long text (iOS 9 样式/大量文字)
            EBBannerView *banner = [EBBannerView bannerViewWithStyle:EBBannerViewStyleiOS9];
            banner.content = @"MINE eye hath played the painter and hath stelled Thy beauty's form in table of my heart;My body is the frame wherein 'tis held,And perspective it is best painter's art.For through the painter must you see his skillTo fine where your true image pictured lies,Which in my bosom's shop is hanging still,That hath his windows glazèd with thine eyes.";
            [banner show];
        }
            break;
        case 3:
        {
//⭐️4.iOS 10 style (iOS 10 样式)
            EBBannerView *banner = [EBBannerView bannerViewWithStyle:10];
            banner.content = @"ios 10 style";
            [banner show];
        }
            break;
        case 4:
        {
//⭐️5.iOS 11 style (iOS 11 样式)
            EBBannerView *banner = [EBBannerView bannerViewWithStyle:EBBannerViewStyleiOS11];
            banner.icon = [UIImage imageNamed:@"icon"];
            banner.title = @"custom title";
            banner.content = @"ios 11 style";
            banner.date = @"2017 10 19";
            [banner show];
        }
            break;
            break;
        default:
            break;
    }
}


@end



@interface CALayer(EB)
@end
@implementation CALayer(EB)
-(void)setBorderUIColor:(UIColor*)uicolor{
    self.borderColor = uicolor.CGColor;
}
@end
