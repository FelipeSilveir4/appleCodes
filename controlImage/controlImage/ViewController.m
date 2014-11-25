//
//  ViewController.m
//  controlImage
//
//  Created by Silveira, Felipe - 01 on 10/22/14.
//  Copyright (c) 2014 Fsilveira. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (IBAction)imageChosen:(id)sender {
    
    switch (_imageChooser.selectedSegmentIndex) {
        case 0:
            _imageOne.image = [UIImage imageNamed: @"image1.png"];
            _imageTwo.image = [UIImage imageNamed: @"image2.png"];
            break;
        case 1:
            _imageOne.image = [UIImage imageNamed: @"image3.png"];
            _imageTwo.image = [UIImage imageNamed: @"image4.png"];
            break;
        case 2:
            _imageOne.image = [UIImage imageNamed: @"image5.png"];
            _imageTwo.image = [UIImage imageNamed: @"image6.png"];
            break;
            
        default:
            break;
    }

    
}
- (IBAction)sliderChanged:(id)sender {
    _imageOne.alpha = _valueSlider.value;
    _stepCounter.value = _valueSlider.value;
    if (_stepCounter.value == 1) {
        _lblMostrando.text = @"Comics";
    }else if (_stepCounter.value == 0){
        _lblMostrando.text = @"Movie";
    }

}
- (IBAction)switchChanged:(id)sender {
    if (_firstSwitch.on) {
        _imageOne.hidden = NO;
        _imageTwo.hidden = NO;
        _lblState.text = @"ON";
        

    }
    else{
        _imageOne.hidden = YES;
        _imageTwo.hidden = YES;
        _lblState.text = @"OFF";
        
    }
}

- (IBAction)stepChanged:(id)sender {
     _imageOne.alpha = _stepCounter.value;
    _valueSlider.value = _stepCounter.value;
    if (_valueSlider.value == 1) {
        _lblMostrando.text = @"Comic";
    }else if (_valueSlider.value == 0){
        _lblMostrando.text = @"Movie";
    }

}
@end
