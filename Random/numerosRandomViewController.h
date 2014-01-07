//
//  numerosRandomViewController.h
//  Random
//
//  Created by Helber Weslley Catarina on 02/01/14.
//  Copyright (c) 2014 Helber Weslley Catarina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface numerosRandomViewController : UIViewController {
    UITextField *intervaloInicial;
    UITextField *intervaloFinal;
    NSMutableArray *numerosSorteados;
    int quantosSorteados;
}

-(IBAction)backgroundTap:(id)sender;
-(IBAction)numeroAleatorio;

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, retain) IBOutlet UITextField *intervaloInicial;
@property (nonatomic, retain) IBOutlet UITextField *intervaloFinal;

@end
