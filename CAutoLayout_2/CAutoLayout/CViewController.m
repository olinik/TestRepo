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
    //self.v2.translatesAutoresizingMaskIntoConstraints = NO;
    
//    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem: self.v1
//                                                              attribute: NSLayoutAttributeLeading
//                                                              relatedBy: NSLayoutRelationEqual
//                                                                 toItem: self.view
//                                                              attribute: NSLayoutAttributeLeading
//                                                             multiplier: 1.0f
//                                                               constant: 25.0f
//                                  ];
//    
//    NSLayoutConstraint *right = [NSLayoutConstraint constraintWithItem: self.v1
//                                                              attribute: NSLayoutAttributeTrailing
//                                                              relatedBy: NSLayoutRelationEqual
//                                                                 toItem: self.view
//                                                              attribute: NSLayoutAttributeTrailing
//                                                             multiplier: 1.0f
//                                                               constant: 25.0f
//                                  ];
    
//    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem: self.v1
//                                                             attribute: NSLayoutAttributeWidth
//                                                             relatedBy: NSLayoutRelationEqual
//                                                                toItem: nil
//                                                             attribute: NSLayoutAttributeNotAnAttribute
//                                                            multiplier: 1
//                                                              constant: 100
//                                 ];
    
//    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem: self.v1
//                                                            attribute: NSLayoutAttributeLeading
//                                                            relatedBy: NSLayoutRelationEqual
//                                                               toItem: self.view
//                                                            attribute: NSLayoutAttributeLeading
//                                                           multiplier: 1.0f
//                                                             constant: 0.0f
//                                ];
//    
//    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem: self.v1
//                                                             attribute: NSLayoutAttributeWidth
//                                                             relatedBy: NSLayoutRelationEqual
//                                                                toItem: self.view
//                                                             attribute: NSLayoutAttributeWidth
//                                                            multiplier: 1.0
//                                                              constant: 0.0
//                                 ];
//    
//    NSLayoutConstraint *heigth = [NSLayoutConstraint constraintWithItem: self.v1
//                                                             attribute: NSLayoutAttributeHeight
//                                                             relatedBy: NSLayoutRelationEqual
//                                                                toItem: nil
//                                                             attribute: NSLayoutAttributeNotAnAttribute
//                                                            multiplier: 1
//                                                              constant: 100
//                                 ];
//    
//    
//    
//    //[self.view addConstraints:@[left,right]];
//    [self.view addConstraints:@[width,heigth,left]];
    
    UIView *v1 = self.v1;
    UIView *v2 = self.view;
    NSDictionary *views = NSDictionaryOfVariableBindings(v1,v2);
    //NSDictionary *metrics = NSDictionaryOfVariableBindings(nil);
    
    NSMutableArray *constraintsArr = [[NSMutableArray alloc] initWithCapacity:1];
    
    [constraintsArr addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[v1(100)]" options:0 metrics:nil views:views]];
    [constraintsArr addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[v1(==v2)]" options:0 metrics:nil views:views]];
    
    //[constraintsArr addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[v1]|" options:0 metrics:nil views:views]];
    //[constraintsArr addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[v1]|" options:0 metrics:nil views:views]];
    
    [self.view addConstraints:constraintsArr];
    
    NSLog(@"subviews: %@",self.view.subviews);
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
