//
//  nomesRandomViewController.h
//  Random
//
//  Created by Helber Weslley Catarina on 07/01/14.
//  Copyright (c) 2014 Helber Weslley Catarina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface nomesRandomViewController : UIViewController {
    UITextField *tf_nome;
    NSMutableArray *nomesSorteados, *nomesAdicionados;
    int quantosAdicionados;
}

@property (nonatomic, retain) IBOutlet UITextField *tf_nome;
@property (nonatomic, strong) IBOutlet UITableView *tableView;

-(IBAction)addNome;
-(IBAction)verNomes;
-(IBAction)sortear;

@end
