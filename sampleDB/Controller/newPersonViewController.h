//
//  newPersonViewController.h
//  sampleDB
//
//  Created by Htain Lin Shwe on 24/3/13.
//  Copyright (c) 2013 comquas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface newPersonViewController : UIViewController <UITextFieldDelegate>
@property (nonatomic,assign) IBOutlet UITextField* txtName;
@property (nonatomic,assign) IBOutlet UITextField* txtNumber;
-(IBAction)addNewPerson:(id)sender;
@end
