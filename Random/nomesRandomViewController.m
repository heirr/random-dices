//
//  nomesRandomViewController.m
//  Random
//
//  Created by Helber Weslley Catarina on 07/01/14.
//  Copyright (c) 2014 Helber Weslley Catarina. All rights reserved.
//

#import "nomesRandomViewController.h"
#import "objetoSorteado.h"

@interface nomesRandomViewController ()

@end

@implementation nomesRandomViewController
@synthesize tf_nome,tableView;

-(IBAction)addNome {
    [tf_nome resignFirstResponder];
    NSString *nome = tf_nome.text;
    objetoSorteado *obj = [[objetoSorteado alloc] initWithName:nome description:nil];
    [nomesAdicionados addObject:obj];
    quantosAdicionados++;
}

-(IBAction)verNomes {
    
}

-(IBAction)sortear {
    int numRandom = (arc4random() % nomesAdicionados.count);
    objetoSorteado *obj = [nomesAdicionados objectAtIndex:numRandom];
    [nomesSorteados addObject:obj];
    [tableView reloadData];
    
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return nomesSorteados.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"Cell";
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellID];
    
    if ( cell == nil )
    {
        // Com StyleDefault, aparece só o título, sem a descrição
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        
        // Com StyleSubtitle, são mostrados título e descrição
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    objetoSorteado *obj = [nomesSorteados objectAtIndex:[indexPath row]];
    cell.textLabel.text = [obj name];
    cell.detailTextLabel.text = [obj description];
    
    // Adiciona imagem à célula
    //cell.imageView.image = [UIImage imageNamed:@"imagem.png"];
    
    return cell;
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
    quantosAdicionados = 0;
    nomesSorteados = [[NSMutableArray alloc] init];
    nomesAdicionados = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
