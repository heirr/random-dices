//
//  numerosRandomViewController.m
//  Random
//
//  Created by Helber Weslley Catarina on 02/01/14.
//  Copyright (c) 2014 Helber Weslley Catarina. All rights reserved.
//

#import "numerosRandomViewController.h"
#import "objetoSorteado.h"

@interface numerosRandomViewController ()

@end

@implementation numerosRandomViewController

@synthesize intervaloFinal, intervaloInicial, tableView;

- (IBAction)numeroAleatorio {
    [intervaloFinal resignFirstResponder];
    quantosSorteados++;
    int final = [intervaloFinal.text intValue];
    int inicial = [intervaloInicial.text intValue];
    int teste = (arc4random() % (final - inicial) + inicial) ;
    
    NSString *strName = [NSString stringWithFormat:@"%d", teste];
    NSString *strDesc = [NSString stringWithFormat:@"%d", quantosSorteados];
    
    objetoSorteado *obj = [[objetoSorteado alloc] initWithName:strName description:strDesc];
    
    [numerosSorteados addObject:obj];
    [tableView reloadData];
    
    // NSString *str = [NSString stringWithFormat:@"%d", teste];
    //[label setText:[NSString stringWithFormat:@"%d", arc4random() % 10 + 1]];
    //label.text = str;
}

-(IBAction)backgroundTap:(id)sender {
    [intervaloInicial resignFirstResponder];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return numerosSorteados.count;
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
    
    objetoSorteado *obj = [numerosSorteados objectAtIndex:[indexPath row]];
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
    self.title = @"Números Aleatórios";
    numerosSorteados = [[NSMutableArray alloc] init];
    quantosSorteados = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
