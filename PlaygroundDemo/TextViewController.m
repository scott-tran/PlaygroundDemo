//
//  Created by stran on 3/27/12.
//
//


#import "TextViewController.h"


@implementation TextViewController {

}

- (void)loadView {
    [super loadView];

    self.title = @"Text";
    self.view.backgroundColor = [UIColor colorWithRed:222/255.0f green:222/255.0f blue:222/255.0f alpha:1.0f];

    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 400, 30)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:textField];

    UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(100, 200, 400, 100)];
    textView.font = [UIFont systemFontOfSize:17];
    textView.text = @"To activate/deactivate playground, tap and hold with 2 fingers.";
    [self.view addSubview:textView];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

@end