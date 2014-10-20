//
//  QuestionViewController.m
//  Dialago
//
//  Created by max myers on 10/18/14.
//  Copyright (c) 2014 MaxMyers. All rights reserved.
//

#import "QuestionViewController.h"

@interface QuestionViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *FirstQuestionSegment;
@property (weak, nonatomic) IBOutlet UISegmentedControl *SecondQuestionSegment;
@property (weak, nonatomic) IBOutlet UISegmentedControl *ThirdQuestionSegment;

@end

@implementation QuestionViewController
- (IBAction)FirstQuestionSubmitted:(UISegmentedControl *)sender {
}
- (IBAction)SecondQuestionSubmitted:(UISegmentedControl *)sender {
}
- (IBAction)ThirdQuestionSubmitted:(UISegmentedControl *)sender {
}
- (IBAction)FourthQuestionSubmitted:(UISegmentedControl *)sender {
}
- (IBAction)Submit:(UIButton *)sender {
    
    float TotalYes=0;
    if (self.FirstQuestionSegment.selectedSegmentIndex==0) {
        TotalYes+=1;
    }
    if (self.SecondQuestionSegment.selectedSegmentIndex==0) {
        TotalYes+=1;
    }
    if (self.FirstQuestionSegment.selectedSegmentIndex==0) {
        TotalYes+=1;
    }
    if (self.FirstQuestionSegment.selectedSegmentIndex==0) {
        TotalYes+=1;
    }
    
    
    [self performSegueWithIdentifier:@"MainScreen" sender:self];
    
    /*
    UIStoryboard *storybord = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *vc =[storybord instantiateViewControllerWithIdentifier:@"MainNavController"];
    
    [self addChildViewController:vc];
    [self.view addSubview:vc.view];
    [self didMoveToParentViewController:vc];
    */
    
   // MainNavController
    
}







- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
