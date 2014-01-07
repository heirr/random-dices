//
//  objetoSorteado.h
//  Random
//
//  Created by Helber Weslley Catarina on 03/01/14.
//  Copyright (c) 2014 Helber Weslley Catarina. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface objetoSorteado : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *description;

-(objetoSorteado *) initWithName:(NSString *)n description:(NSString *)d;


@end
