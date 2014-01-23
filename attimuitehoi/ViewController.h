//
//  ViewController.h
//  attimuitehoi
//
//  Created by 山脇　僚太 on 14/01/23.
//  Copyright (c) 2014年 univercity of kitakyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelOne;

- (IBAction)resetbotton:(id)sender;
- (IBAction)ue:(id)sender;
- (IBAction)migi:(id)sender;
- (IBAction)hidari:(id)sender;
- (IBAction)sita:(id)sender;
- (IBAction)gu:(id)sender;
- (IBAction)tyoki:(id)sender;
- (IBAction)pa:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *gubotton;
@property (weak, nonatomic) IBOutlet UIButton *chokibotton;
@property (weak, nonatomic) IBOutlet UIButton *pabotton;
@property (weak, nonatomic) IBOutlet UIButton *uebotton;
@property (weak, nonatomic) IBOutlet UIButton *migibotton;
@property (weak, nonatomic) IBOutlet UIButton *hidaribotton;
@property (weak, nonatomic) IBOutlet UIButton *sitabotton;

- (void)enemy;
- (void)janken;
- (void)win;
- (void)lose;
- (void)draw;
- (void)attimuite;

@end
