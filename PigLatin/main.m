//
//  main.m
//  PigLatin
//
//  Created by naomi schettini on 2016-09-09.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString* oneString = @"I dream of donkeys all day long";
        NSString* donkeyPigLatin = [oneString stringByPigLatinization];
        NSLog(@"%@",donkeyPigLatin);
        
    }
    return 0;
}
