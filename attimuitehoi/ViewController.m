//
//  ViewController.m
//  attimuitehoi
//
//  Created by 山脇　僚太 on 14/01/23.
//  Copyright (c) 2014年 univercity of kitakyu. All rights reserved.
//

#import "ViewController.h"
#define GU 0
#define CHOKI 1
#define PA 2


@interface ViewController (){
    int x;
    int e;
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.labelOne.text = @"じゃんけん・・・";
    self.uebotton.hidden = YES;
    self.migibotton.hidden = YES;
    self.sitabotton.hidden = YES;
    self.hidaribotton.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)resetbotton:(id)sender {
    self.labelOne.text = @"じゃんけん・・・";
    self.uebotton.hidden = YES;
    self.migibotton.hidden = YES;
    self.sitabotton.hidden = YES;
    self.hidaribotton.hidden = YES;
    self.gubotton.hidden = NO;
    self.chokibotton.hidden = NO;
    self.pabotton.hidden = NO;
    x = 0,e = 0;
}



- (IBAction)ue:(id)sender {
}

- (IBAction)migi:(id)sender {
}

- (IBAction)hidari:(id)sender {
}

- (IBAction)sita:(id)sender {
}

- (IBAction)gu:(id)sender {
    x = GU;
    
    [self janken];
}

- (IBAction)tyoki:(id)sender {
    x = CHOKI;
    [self janken];
}

- (IBAction)pa:(id)sender {
    x = PA;
    [self janken];
}

- (void)enemy{
    e = arc4random() % 3;
    
}

-(void)janken{
    [self enemy];
    
    if(x == e){
        [self draw];
}
    if(x==GU && e==CHOKI){
    [self win];
}
    if(x==CHOKI && e==PA){
    [self win];
}
    if(x==PA && e==GU){
        [self win];
    }
    
    if(x==GU && e==PA){
    [self lose];
}
    if(x==CHOKI && e==GU){
    [self lose];
}
    if(x==PA && e==CHOKI){
        [self lose];
}
}

- (void)win{
    self.uebotton.hidden = NO;
    self.migibotton.hidden = NO;
    self.sitabotton.hidden = NO;
    self.hidaribotton.hidden = NO;
    self.gubotton.hidden = YES;
    self.chokibotton.hidden = YES;
    self.pabotton.hidden = YES;
    self.labelOne.text = @"あっち向いて・・・";}

- (void)lose{
    self.labelOne.text = @"あっち向いて・・・";
    self.uebotton.hidden = NO;
    self.migibotton.hidden = NO;
    self.sitabotton.hidden = NO;
    self.hidaribotton.hidden = NO;
    self.gubotton.hidden = YES;
    self.chokibotton.hidden = YES;
    self.pabotton.hidden = YES;
}

- (void)draw{
    self.labelOne.text = @"じゃんけん・・・";
    self.uebotton.hidden = YES;
    self.migibotton.hidden = YES;
    self.sitabotton.hidden = YES;
    self.hidaribotton.hidden = YES;
    self.gubotton.hidden = NO;
    self.chokibotton.hidden = NO;
    self.pabotton.hidden = NO;
    x = 0,e = 0;
}

- (void)attimuite{
    
}
@end
