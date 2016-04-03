//
//  ViewController.m
//  share
//
//  Created by Matthew McClure on 4/3/16.
/*
 thanks to:
 http://www.codingexplorer.com/add-sharing-to-your-app-via-uiactivityviewcontroller/
 */
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)share:(UIButton *)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)share:(UIButton *)sender {
    
    UIImage *image = [UIImage imageNamed:@"alice"];
    
    NSString *textToShare = @"Look at this awesome website for aspiring iOS Developers!";
    
    NSURL *myWebsite = [NSURL URLWithString:@"http://www.codingexplorer.com/"];
    
    NSArray *objectsToShare = @[textToShare, myWebsite, image];
    
    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:objectsToShare applicationActivities:nil];
    
    NSArray *excludeActivities = @[UIActivityTypeAirDrop,
                                   UIActivityTypePrint,
                                   UIActivityTypeAssignToContact,
                                   UIActivityTypeSaveToCameraRoll,
                                   UIActivityTypeAddToReadingList,
                                   UIActivityTypePostToFlickr,
                                   UIActivityTypePostToVimeo];
    
    activityVC.excludedActivityTypes = excludeActivities;
    
    [self presentViewController:activityVC animated:YES completion:nil];
    
}
@end
