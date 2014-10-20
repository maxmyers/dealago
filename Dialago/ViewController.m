//
//  ViewController.m
//  Dialago
//
//  Created by max myers on 10/17/14.
//  Copyright (c) 2014 MaxMyers. All rights reserved.
//

#import "ViewController.h"
#import <ImageIO/ImageIO.h>
#import <CoreGraphics/CoreGraphics.h>
#import "RGBClass.h"
#import "InstructionsController.h"
@interface ViewController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIPickerViewDataSource,UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *PickerView;

@property (nonatomic,strong)NSMutableArray *arrayOfTimes;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arrayOfTimes=[[NSMutableArray alloc]init];
    [self.arrayOfTimes addObject:@"1 Hour"];
    [self.arrayOfTimes addObject:@"2 Hours"];
    [self.arrayOfTimes addObject:@"3 Hours"];
    [self.arrayOfTimes addObject:@"4 Hours"];
    [self.arrayOfTimes addObject:@"5 Hours"];
    [self.arrayOfTimes addObject:@"6 Hours"];
    [self.arrayOfTimes addObject:@"7 Hours"];
    [self.arrayOfTimes addObject:@"8 Hours"];
    [self.arrayOfTimes addObject:@"9 Hours"];
    [self.arrayOfTimes addObject:@"10 Hours"];
    [self.arrayOfTimes addObject:@"11 Hours"];
    [self.arrayOfTimes addObject:@"12 Hours"];
    [self.arrayOfTimes addObject:@"13 Hours"];
    [self.arrayOfTimes addObject:@"14 Hours"];
    [self.arrayOfTimes addObject:@"15 Hours"];
    [self.arrayOfTimes addObject:@"16 Hours"];
    [self.arrayOfTimes addObject:@"17 Hours"];
    [self.arrayOfTimes addObject:@"18 Hours"];
    [self.arrayOfTimes addObject:@"19 Hours"];
    [self.arrayOfTimes addObject:@"20 Hours"];
    [self.arrayOfTimes addObject:@"21 Hours"];
    [self.arrayOfTimes addObject:@"22 Hours"];
    [self.arrayOfTimes addObject:@"23 Hours"];
    [self.arrayOfTimes addObject:@"24 Hours"];
    
    
   
}



- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 24;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}



- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
    
    
    
    return [self.arrayOfTimes objectAtIndex:row];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    InstructionsController *destination=(InstructionsController*)[segue destinationViewController];
    
    int Number = [self.PickerView selectedRowInComponent:0];
    
    Number+=1;
    
    destination.HoursSinceLastMeal=Number;
    
    
}





@end
