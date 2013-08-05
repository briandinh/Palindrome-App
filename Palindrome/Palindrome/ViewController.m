//
//  ViewController.m
//  Palindrome
//
//  Created by Don Bora on 4/28/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UITextField *inputTextField;
    __weak IBOutlet UILabel *resultLabel;
    
    int result;
}
- (IBAction)check:(id)sender;

@end

@implementation ViewController

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

-(void)showIsPalindrone
{
    resultLabel.text = @"Is a palindrone!";
}

-(void)showIsNotPalindrone
{
    resultLabel.text = @"Is not a palindrone!";
}


-(const char*)getCharacterArray
{
    return [inputTextField.text UTF8String];
}


-(void)showResult
{
    resultLabel.text = [NSString stringWithFormat:@"%i", result];
}


-(void)checkForPalindrome
{
    const char* arrayOfCharacters = [self getCharacterArray];
    BOOL isPalindrome = YES;
    
    
    // Insert code in here to check the characters of the array for palindronishness
    int length = 0;
    //finds length of array
    
    while (arrayOfCharacters[length] != 0){
        length++;}
    
    int y = 0;
    int z = length -1;
    char s = ' ';
    
   // Checks for matching chars
    while (y<.5 * length) {
        //is the first and last character the same?
        //move in
        if (arrayOfCharacters[y]==arrayOfCharacters[z]){
            (y = y+1);
            (z = z-1);}
        //is the char a space?
        //move in
        else if (arrayOfCharacters[y]==s) {
            (y = y+1);
            continue;
        }
        else if (arrayOfCharacters[z]==s) {
            (y = z-1);
            continue;
        } else {
            isPalindrome=NO;
            break;
        }
    }
    
    if (isPalindrome) {
        [self showIsPalindrone];
    }
    else{
        [self showIsNotPalindrone];
    }
}


-(void)sumIntegers
{
    const char* arrayOfCharacters = [self getCharacterArray];
    
    //temporary array
    char temp[1];
    
    //length of array
    int length = 0;
    
    while (arrayOfCharacters[length] != 0){
        length++;}
    
    char c= ',';
    result = 0;
    
    //for loop
    for (int i = 0; i<length; i++) {
        
        //is it a comma?
        //add temp to result
        if (arrayOfCharacters[i]==c)  {
            result=result+atoi(temp);
        
        }
        //is it the last char?
        if (i==length-1) {
            result=result+atoi(&arrayOfCharacters[i]);
        }
        //Then place into temp
        temp[0]=arrayOfCharacters[i];
        
    }
    
    
    
    
    
    
    // parse out the commas, sum up the integers and assign the answer to the variable result
    // i.e.
    // result =
    //atoi
    
    
    [self showResult];
}

- (IBAction)check:(id)sender
{
   [self checkForPalindrome];
    
    // Uncomment the following line of code and comment out the previous line of code to run summation
    //[self sumIntegers];
}
@end
