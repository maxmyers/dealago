//
//  InstructionsController.m
//  Dialago
//
//  Created by max myers on 10/18/14.
//  Copyright (c) 2014 MaxMyers. All rights reserved.
//

#import "InstructionsController.h"
#import "RGBClass.h"
@interface InstructionsController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@end

@implementation InstructionsController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)takePicture:(UIButton *)sender {
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:NULL];
    
    
}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    
    UIImageView *imageView=[[UIImageView alloc]initWithImage:chosenImage];
    
    //[self.view addSubview:imageView];
    // self.imageView.image = chosenImage;
    
    
    [self AverageRGBColorsWithImage:chosenImage];
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
    NSLog(@"the count of it is %f %f",chosenImage.size.width,chosenImage.size.height);
    
}

-(void)AverageRGBColorsWithImage:(UIImage*)image
{
    
    NSMutableArray*arrayToAverageColors = [[NSMutableArray alloc]init];
    
    for (int i=300; i<340; i++) {
        for (int j=300; j<340; j++) {
            
            NSLog(@"hit this");
            UIColor *colorAtPoint = [RGBClass getRGBAsFromImage:image atX:i andY:j count:1];
            if (colorAtPoint) {
                [arrayToAverageColors addObject:colorAtPoint];
            }
            
        }
    }
    
    float redSum = 0;
    
    float greenSum = 0;
    
    float blueSum = 0;
    
    
    for (UIColor*COLOR in arrayToAverageColors) {
        
        CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha =0.0;
        
        BOOL conversionToRGBWentOk =[COLOR getRed:&red green:&green blue:&blue alpha:&alpha];
        
        if (conversionToRGBWentOk) {
            NSLog(@"it is ok %f %f %f %f", red, green, blue, alpha);
            redSum+=red;
            greenSum+=green;
            blueSum+=blue;
        }
    }
    
    

    
    float GoodRGBValue = (-0.000001633380790622140000000000*(self.HoursSinceLastMeal*self.HoursSinceLastMeal*self.HoursSinceLastMeal*self.HoursSinceLastMeal*self.HoursSinceLastMeal*self.HoursSinceLastMeal)) - (0.000605416937077052000000000000*(self.HoursSinceLastMeal*self.HoursSinceLastMeal*self.HoursSinceLastMeal*self.HoursSinceLastMeal*self.HoursSinceLastMeal))+ (0.025238144623855900000000000000*(self.HoursSinceLastMeal*self.HoursSinceLastMeal*self.HoursSinceLastMeal*self.HoursSinceLastMeal))- (0.322356199156786000000000000000*(self.HoursSinceLastMeal*self.HoursSinceLastMeal*self.HoursSinceLastMeal)) + (1.288405019779400000000000000000*(self.HoursSinceLastMeal*self.HoursSinceLastMeal)) + (0.283559559089582000000000000000*(self.HoursSinceLastMeal)) + 105.354486930062000000000000000000;
    
    
    NSLog(@"the rgb value is %f",GoodRGBValue);
    
    
    

    
    
    
    float RedAverage = redSum/1600;
    
    float GreenAverage = greenSum/1600;
    
    float BlueAverage = blueSum/1600;
    
    float MyAverageRGB = ((RedAverage+GreenAverage+BlueAverage)/3)*255;
    
    
    
    NSString *message=@"Both tests showed favorable results.  It looks like you should be feeling better, congrats!";
    
    if (GoodRGBValue>MyAverageRGB) {
        
        float Value = (GoodRGBValue-MyAverageRGB)/GoodRGBValue;
        
        NSLog(@"this valudddd is %f",Value);
        
        
     
        
        if (Value>.05) {
            

            /*
            NSString *OkMessage = @"One of your tests came back negative.  Stay hydrated and try again in a couple of hours.  If you’re not feeling well, you should call your doctor.";
            */
           message = @"It seems that your test results came back negative.  If you’re a high-risk patient, we have contacted your physician for a check up to prevent your condition from worsening.";
            
            

        }
        
    }
    
    
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Result" message:message delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    
    [alert show];
    
    
    
    
}
@end
