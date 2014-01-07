//
//  telaInicialViewController.m
//  Random
//
//  Created by Helber Weslley Catarina on 02/01/14.
//  Copyright (c) 2014 Helber Weslley Catarina. All rights reserved.
//

#import "telaInicialViewController.h"
#import "numerosRandomViewController.h"
#import "nomesRandomViewController.h"

@interface telaInicialViewController ()

@end

@implementation telaInicialViewController

-(IBAction)abrirNumerosRandom {
    numerosRandomViewController *numerosRandom = [[numerosRandomViewController alloc] init];
    [self.navigationController pushViewController:numerosRandom animated:YES];
}

-(IBAction)abrirNomesRandom {
    nomesRandomViewController *nomesRandom = [[nomesRandomViewController alloc] init];
    [self.navigationController pushViewController:nomesRandom animated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Random";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
