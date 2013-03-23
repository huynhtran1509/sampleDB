//
//  newPersonViewController.m
//  sampleDB
//
//  Created by Htain Lin Shwe on 24/3/13.
//  Copyright (c) 2013 comquas. All rights reserved.
//

#import "newPersonViewController.h"
#import "person.h"
@interface newPersonViewController ()

@end

@implementation newPersonViewController

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
    self.title = @"Add New";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

-(IBAction)addNewPerson:(id)sender {
    
    person* pp = [[person alloc] initWithName:self.txtName.text AndNumber:self.txtNumber.text];
    
    [person addNewPerson:pp];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
