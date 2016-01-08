//
//  ViewController.m
//  重力感应Demo
//
//  Created by qianfeng on 15/11/30.
//  Copyright (c) 2015年 wj. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor greenColor];
    NSLog(@"我改变了北影颜色");
    
}
-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSLog(@"开始摇动");
    //创建一个系统声音id
    SystemSoundID soundID;
    //读取本地音效资源
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)([NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"音效" ofType:@"caf"]]), &soundID);
    
    //添加震动效果
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    //播放短音效
    AudioServicesPlaySystemSound(soundID);
    
}
-(void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    NSLog(@"结束摇动");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
