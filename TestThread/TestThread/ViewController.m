//
//  ViewController.m
//  TestThread
//
//  Created by Lion on 14-4-12.
//  Copyright (c) 2014年 Lion. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    NSThread *downPic_Thread=[[NSThread alloc]initWithTarget:self selector:@selector(downloadImage:) object:@"http://image.tianjimedia.com/uploadImages/2013/073/YD1CV483P469_1000x500.jpg"];
//    [downPic_Thread start];
    
    [ NSThread  detachNewThreadSelector:@selector(downloadImage:) toTarget:self withObject:@"http://image.tianjimedia.com/uploadImages/2013/073/YD1CV483P469_1000x500.jpg"];
    
    [self dispatch];
}

-(void)dispatch
{

    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSURL * url = [NSURL URLWithString:@"http://www.big5.gog.com.cn/pic/0/11/52/32/11523201_806763.jpg"];
        NSData * data = [[NSData alloc]initWithContentsOfURL:url];
        UIImage *image = [[UIImage alloc]initWithData:data];
        if (data != nil) {
            dispatch_async(dispatch_get_main_queue(), ^{
                imgPic.image = image;
            });
        } 
    });

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)downloadImage:(NSString *) url{
    NSData *data = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:url]];
    UIImage *image = [[UIImage alloc]initWithData:data];
    if(image == nil){
        
    }else{
        [self performSelectorOnMainThread:@selector(updateUI:) withObject:image waitUntilDone:YES];
    }
}

-(void)updateUI:(UIImage*) image{
    imgPic.image=image;
}

@end
