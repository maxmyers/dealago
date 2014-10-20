//
//  SignUp.m
//  Dialago
//
//  Created by max myers on 10/18/14.
//  Copyright (c) 2014 MaxMyers. All rights reserved.
//

#import "SignUp.h"
#import <Parse/Parse.h>
@interface SignUp ()
@property (weak, nonatomic) IBOutlet UITextField *UserIDTextFIeld;
@property (weak, nonatomic) IBOutlet UITextField *PasswordTextField;

@end

@implementation SignUp

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Submit:(UIButton *)sender {
    
    [self performSegueWithIdentifier:@"DisplayQuestions" sender:self];
    /*
    PFUser *user = [PFUser user];
    user.username = self.UserIDTextFIeld.text;
    user.password = self.PasswordTextField.text;
    
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            
            NSLog(@"figureing out");
            NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
            
            [defaults setBool:YES forKey:@"LoggedIn"];
            [defaults synchronize];
            
            
            [self performSegueWithIdentifier:@"DisplayQuestions" sender:self];
            
        } else {
            NSString *errorString = [error userInfo][@"error"];
            // Show the errorString somewhere and let the user try again.
        }
    }];
    */
    
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
