//
//  objetoSorteado.m
//  Random
//
//  Created by Helber Weslley Catarina on 03/01/14.
//  Copyright (c) 2014 Helber Weslley Catarina. All rights reserved.
//

#import "objetoSorteado.h"

@implementation objetoSorteado

@synthesize name, description;

- (objetoSorteado *) initWithName:(NSString *)n description:(NSString *)d
{
    if ( ! [self init] )
    {
        return nil;
    }
    
    self.name = n;
    self.description = d;
    
    return self;
}

@end
