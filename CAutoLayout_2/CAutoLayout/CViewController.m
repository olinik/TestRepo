//
//  CViewController.m
//  CAutoLayout
//
//  Created by Vasyl Boyarchuk on 1/4/14.
//  Copyright (c) 2014 Vasyl Boyarchuk. All rights reserved.
//

#import "CViewController.h"

@interface CViewController ()
@property(weak, nonatomic) IBOutlet UIButton *btn1;
@property(nonatomic,strong) IBOutlet UIView *v1;
@property(nonatomic,strong) IBOutlet UIView *v2;
@end

@implementation CViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.v1 = [[UIView alloc] initWithFrame:CGRectMake(50, 10, 12, 12)];
    self.v1.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.v1];
    
    self.v1.translatesAutoresizingMaskIntoConstraints = NO;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)viewWillLayoutSubviews
//{
//    [super viewWillLayoutSubviews];
//    
//    NSLog(@"subviews: %@",self.view.subviews);
//}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    NSLog(@"%s subviews: %@",__PRETTY_FUNCTION__,self.view.subviews);
}
@end
