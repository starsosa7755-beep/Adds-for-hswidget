#import "HSWStudioWidgetViewController.h"

@implementation HSWStudioWidgetViewController

+ (HSWidgetSize)minimumSize {
    return HSWidgetSizeMake(2, 2);
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor colorWithWhite:0.96 alpha:1.0];

    UILabel *title = [[UILabel alloc] init];
    title.text = @"HSWidgets Studio";
    title.font = [UIFont boldSystemFontOfSize:17.0];
    title.textColor = [UIColor colorWithWhite:0.12 alpha:1.0];
    title.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:title];

    UILabel *subtitle = [[UILabel alloc] init];
    subtitle.text = @"Create Widget";
    subtitle.font = [UIFont systemFontOfSize:12.0];
    subtitle.textColor = [UIColor colorWithWhite:0.38 alpha:1.0];
    subtitle.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:subtitle];

    UIView *canvas = [[UIView alloc] init];
    canvas.backgroundColor = [UIColor whiteColor];
    canvas.layer.cornerRadius = 12.0;
    canvas.layer.borderWidth = 1.0;
    canvas.layer.borderColor = [UIColor colorWithWhite:0.86 alpha:1.0].CGColor;
    canvas.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:canvas];

    UILabel *sample = [[UILabel alloc] init];
    sample.text = @"Your widget\nwill appear here";
    sample.numberOfLines = 2;
    sample.textAlignment = NSTextAlignmentCenter;
    sample.font = [UIFont systemFontOfSize:15.0 weight:UIFontWeightMedium];
    sample.textColor = [UIColor colorWithWhite:0.25 alpha:1.0];
    sample.translatesAutoresizingMaskIntoConstraints = NO;
    [canvas addSubview:sample];

    UILabel *status = [[UILabel alloc] init];
    status.text = @"Editor foundation • v0.1.0";
    status.font = [UIFont systemFontOfSize:10.0];
    status.textColor = [UIColor colorWithWhite:0.48 alpha:1.0];
    status.textAlignment = NSTextAlignmentCenter;
    status.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:status];

    [NSLayoutConstraint activateConstraints:@[
        [title.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:10.0],
        [title.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:12.0],
        [title.trailingAnchor constraintLessThanOrEqualToAnchor:self.view.trailingAnchor constant:-12.0],

        [subtitle.topAnchor constraintEqualToAnchor:title.bottomAnchor constant:2.0],
        [subtitle.leadingAnchor constraintEqualToAnchor:title.leadingAnchor],

        [canvas.topAnchor constraintEqualToAnchor:subtitle.bottomAnchor constant:9.0],
        [canvas.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:10.0],
        [canvas.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-10.0],
        [canvas.bottomAnchor constraintEqualToAnchor:status.topAnchor constant:-7.0],

        [sample.centerXAnchor constraintEqualToAnchor:canvas.centerXAnchor],
        [sample.centerYAnchor constraintEqualToAnchor:canvas.centerYAnchor],

        [status.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:6.0],
        [status.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-6.0],
        [status.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-7.0]
    ]];
}

@end
