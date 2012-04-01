//
//  Created by stran on 3/27/12.
//
//


#import "ControlsViewController.h"


@implementation ControlsViewController {

}

- (void)loadView {
    [super loadView];

    self.title = @"Controls";
    self.view.backgroundColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];

    CGFloat width = 200;
    CGFloat height = 30;

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    button.accessibilityIdentifier = @"Button";
    button.frame = CGRectMake(100, 100, width, height);
    [self.view addSubview:button];

    UISwitch *switchControl = [[UISwitch alloc] initWithFrame:CGRectMake(400, 100, width, height)];
    switchControl.accessibilityIdentifier = @"Switch";
    [self.view addSubview:switchControl];

    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(100, 200, width, height)];
    slider.accessibilityIdentifier = @"Slider";
    slider.minimumValue = 0;
    slider.maximumValue = 100;
    slider.value = 70;
    [self.view addSubview:slider];

    UIProgressView *progress = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleBar];
    progress.accessibilityIdentifier = @"Progress";
    progress.progress = 0.5;
    progress.frame = CGRectMake(400, 200, width, height);
    [self.view addSubview:progress];

    UIStepper *stepper = [[UIStepper alloc] initWithFrame:CGRectMake(100, 300, width, height)];
    stepper.accessibilityIdentifier = @"Stepper";
    [self.view addSubview:stepper];

    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:
                                                                                     @"One",
                                                                                     @"Two",
                                                                                     @"Three",
                                                                                     nil]];
    segmentedControl.segmentedControlStyle = UISegmentedControlStyleBar;
    segmentedControl.frame = CGRectMake(400, 300, width, height);
    [self.view addSubview:segmentedControl];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

@end