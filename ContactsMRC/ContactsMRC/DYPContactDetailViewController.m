//
//  DYPContactDetailViewController.m
//  ContactsMRC
//
//  Created by Daniela Parra on 11/28/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "DYPContactDetailViewController.h"

@interface DYPContactDetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;
@property (retain, nonatomic) IBOutlet UITextView *addressTextView;

@end

@implementation DYPContactDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)save:(id)sender {
}

- (void)dealloc {
    [_nameTextField release];
    [_emailTextField release];
    [_phoneTextField release];
    [_addressTextView release];
    [super dealloc];
}
@end
