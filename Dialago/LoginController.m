//
//  LoginController.m
//  Dialago
//
//  Created by max myers on 10/17/14.
//  Copyright (c) 2014 MaxMyers. All rights reserved.
//

#import "LoginController.h"
#import <Parse/Parse.h>
@interface LoginController ()<UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *UserNameField;
@property (weak, nonatomic) IBOutlet UITextField *PasswordTextField;

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"LoggedIn"];
    
    /*
    BOOL LoggedIn = [self CheckIfLoggedIn];
    if (LoggedIn) {
        [self performSegueWithIdentifier:@"MainScreen" sender:self];
    }

    */
   // [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"LoggedIn"];
    // Do any additional setup after loading the view.
}

-(void)AddMainViewController
{
    

}
- (IBAction)LoginPressed:(UIButton *)sender {
    
    [self performSegueWithIdentifier:@"Login" sender:self];      
    /*
    
    NSString *userName =  self.UserNameField.text;
    
    NSString *password = self.PasswordTextField.text;
    
    [PFUser logInWithUsernameInBackground:password password:userName block:^(PFUser *user, NSError *error) {
    
        if (user) {
                               // Do stuff after successful login.
        } else {
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Login Failed" message:@"Please Re-enter Username And Password" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
            [alert show];
            self.UserNameField.text=nil;
            self.PasswordTextField.text=nil;
        }
        }];
    */
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
}


-(void)viewDidAppear:(BOOL)animated
{
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)CheckIfLoggedIn
{
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    BOOL LoggedIn = [defaults objectForKey:@"LoggedIn"];
    
    return LoggedIn;
    
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
