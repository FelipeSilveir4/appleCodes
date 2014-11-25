//
//  ViewController.h
//  controlImage
//
//  Created by Silveira, Felipe - 01 on 10/22/14.
//  Copyright (c) 2014 Fsilveira. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)imageChosen:(id)sender;
@property (strong, nonatomic) IBOutlet UISegmentedControl *imageChooser;
@property (strong, nonatomic) IBOutlet UIImageView *imageOne;
@property (strong, nonatomic) IBOutlet UIImageView *imageTwo;
@property (strong, nonatomic) IBOutlet UISlider *valueSlider;
- (IBAction)sliderChanged:(id)sender;
@property (strong, nonatomic) IBOutlet UIStepper *stepCounter;
- (IBAction)switchChanged:(id)sender;
@property (strong, nonatomic) IBOutlet UISwitch *firstSwitch;
@property (strong, nonatomic) IBOutlet UILabel *lblState;
@property (strong, nonatomic) IBOutlet UILabel *lblMostrando;

- (IBAction)stepChanged:(id)sender;
@end
