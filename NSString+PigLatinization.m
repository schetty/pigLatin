//
//  NSString+PigLatinization.m
//  PigLatin
//
//  Created by naomi schettini on 2016-09-09.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "NSString+PigLatinization.h"

@implementation NSString (PigLatinization)




-(NSString *)stringByPigLatinization {
    
    NSArray *arrayOfStrings = [self componentsSeparatedByString:@" "];
    
    NSString *finalString = [[NSString alloc]init];
    
    for (NSString *word in arrayOfStrings) {
    
    NSCharacterSet* consonants = [NSCharacterSet characterSetWithCharactersInString:@"BbCcDdFfGgHhJjKkLlMmNnPpQqRrSsTtVvWwXxYyZz"];
    NSString* translateWord  = [[NSString alloc]init];
    
    translateWord = [[word stringByAppendingString:@"*"] stringByTrimmingCharactersInSet:consonants];
    translateWord = [translateWord stringByReplacingOccurrencesOfString:(@"*") withString:@""];
    NSString* incompleteWord = [word stringByReplacingOccurrencesOfString:(translateWord) withString:(@"")];
    
    finalString = [finalString stringByAppendingFormat:@" %@",  [NSString stringWithFormat:@"%@%@ay", translateWord, incompleteWord] ];
    
    }
    
    
    return finalString;
    
}

@end
