//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Qingbo ZHANG on 13-3-18.
//  Copyright (c) 2013年 Qingbo ZHANG. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)ChangeGreeting:(id)sender;

@end

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ChangeGreeting:(id)sender {
    self.userName  = self.textField.text;
    NSString *nameString = self.userName;
    if([nameString length] == 0) {
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc ] initWithFormat:@"Hello,%@!",nameString];
    self.label.text = greeting;



}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if(theTextField==self.textField){
        [theTextField resignFirstResponder];
    }
    return YES ;
    
}
@end
