//
//  ViewController.m
//  magiBall8
//
//  Created by Silveira, Felipe - 01 on 10/13/14.
//  Copyright (c) 2014 Fsilveira. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSMutableArray *imagesAnswerArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self initializeStrings];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)canBecomeFirstResponder {
    return YES;
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self resignFirstResponder];
    [super viewWillDisappear:animated];
}


- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake)
    {
        int r= arc4random_uniform(20);
        _answersImg.image = [UIImage imageNamed:imagesAnswerArray[r]];
        _answersImg.center = CGPointMake(_answersImg.center.x , _answersImg.center.y +5);
        _answersImg.center = CGPointMake(_answersImg.center.x , _answersImg.center.y -5);

    }
}



-(void)initializeStrings{
    imagesAnswerArray = [[NSMutableArray alloc] initWithCapacity:20];
    imagesAnswerArray[0]=@"It is certain.png";
    imagesAnswerArray[1]=@"It is decidedly so.png";
    imagesAnswerArray[2]=@"Without a doubt.png";
    imagesAnswerArray[3]=@"Yes, definitely.png";
    imagesAnswerArray[4]=@"You may rely on it.png";
    imagesAnswerArray[5]=@"As I see it, yes.png";
    imagesAnswerArray[6]=@"Most Likely.png";
    imagesAnswerArray[7]=@"Outlook good.png";
    imagesAnswerArray[8]=@"Yes.png";
    imagesAnswerArray[9]=@"Signs point to yes.png";
    imagesAnswerArray[10]=@"Reply hazy try again.png";
    imagesAnswerArray[11]=@"Ask again later.png";
    imagesAnswerArray[12]=@"Better not tell you now.png";
    imagesAnswerArray[13]=@"Cannot predict now.png";
    imagesAnswerArray[14]=@"Concetrate and ask again.png";
    imagesAnswerArray[15]=@"Don't count on it.png";
    imagesAnswerArray[16]=@"My reply is no.png";
    imagesAnswerArray[17]=@"My sources say no.png";
    imagesAnswerArray[18]=@"Outlook not so good.png";
    imagesAnswerArray[19]=@"Very doubful.png";
}
@end
