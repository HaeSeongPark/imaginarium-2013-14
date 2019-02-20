//
//  ViewController.m
//  imaginarium
//
//  Created by rhino Q on 20/02/2019.
//  Copyright © 2019 rhino Q. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]) {
        ImageViewController *ivc = (ImageViewController *)segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"https://homepages.cae.wisc.edu/~ece533/images/%@.png", segue.identifier]];
        ivc.title = segue.identifier;
    }
}

@end
