
#import "RFTimerDemoViewController.h"
#import "RFUI.h"

@interface RFTimerDemoViewController ()
@end

@implementation RFTimerDemoViewController
RFUIInterfaceOrientationSupportDefault

- (void)viewDidLoad {
    [super viewDidLoad];

    self.countLabel.text = @"--";
}

- (IBAction)onStartStopButtonTapped:(UIButton *)sender {
    if (sender.selected) {
        [self.timer invalidate];
        self.timer = nil;
        self.countLabel.text = @"--";
        sender.selected = NO;
        self.pauseResumeButton.enabled = NO;
        self.pauseResumeButton.selected = NO;
    }
    else {
        @weakify(self);
        self.timer = [RFTimer scheduledTimerWithTimeInterval:1 repeats:YES fireBlock:^(RFTimer *timer, NSUInteger repeatCount) {
            @strongify(self);
            self.countLabel.text = [@(repeatCount) stringValue];
        }];
        sender.selected = YES;
        self.pauseResumeButton.enabled = YES;
    }
}

- (IBAction)onPauseResumeButtonTapped:(UIButton *)sender {
    sender.selected = !sender.selected;
    self.timer.suspended = sender.selected;
}

@end
