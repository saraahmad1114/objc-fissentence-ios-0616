//
//  FISSentence.m
//  objc-fissentence
//
//  Created by Flatiron School on 6/11/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISSentence.h"

@interface FISSentence ()

@property (nonatomic, strong, readwrite) NSString* sentence;
//By declaring this method here, this makes it private!!

@end

@implementation FISSentence
//DONE
-(void)assembleSentence
{
    self.sentence = [self.words componentsJoinedByString:@" "];
    self.sentence = [self.sentence stringByAppendingString:self.punctuation]; 
}
//DONE
-(BOOL)validWord:(NSString*)word
{
    if (!([word length]== 0 || [word containsString:@" "] || (word == nil)))
    {
        return YES;
    }
    return NO;
}
//DONE
-(BOOL)validPunctuation:(NSString*)punctuation
{
    NSArray *newArray = @[@".", @"?", @"!", @",",@";", @":", @"—"];
    if ([newArray containsObject:punctuation] && ![punctuation containsString:@" "] && ![punctuation containsString:@""])
    {
        return YES;
    }
    return NO;
}
//Done
-(BOOL)validIndex:(NSUInteger)index
{
    if(index < [self.words count])
    {
        return YES;
    }
    return NO;
}
//Done
-(void)addWord:(NSString*)word
{
    if ([self validWord:word])
    {
        [self.words addObject:word];
    }
    [self assembleSentence];
}
//DONE!!!
-(void)addWords: (NSArray*)words withPunctuation:(NSString*)punctuation
{
        if ([words count] > 0 && words != nil )
        {
            for(NSUInteger i = 0; i < [words count];i++)
            {
            if([self validWord:words[i]])
                {
                    [self.words addObject:words[i]];
                }
            }
        }
        else
        {
            return;
        }
    NSArray *newArray = @[@".", @"?", @"!", @",",@";", @":", @"—"];
    for (NSUInteger m = 0; m < [newArray count]; m++)
    {
        if ([self validPunctuation:punctuation])
        {
            self.punctuation = punctuation;
        }
        else
        {
            return;
        }
    }
    [self assembleSentence];
}
//DONE
-(void)removeWordAtIndex: (NSUInteger)index
{
    if([self validIndex:index])
    {
        [self.words removeObjectAtIndex:index];
    }
    [self assembleSentence];
}
//DONE
-(void)insertWord: (NSString*)word atIndex:(NSUInteger)index
{
    if([self validWord:word] && [self validIndex:index])
    {
        [self.words insertObject:word atIndex:index];
    }
    [self assembleSentence];
}
//DONE
-(void)replacePunctuationWithPunctuation:(NSString*)punctuation
{
    if([self validPunctuation:punctuation])
    {
        self.punctuation = punctuation;
    }
    [self assembleSentence];

}
//DONE
-(void)replaceWordAtIndex:(NSUInteger)index withWord:(NSString*)word
{
    if([self validIndex:index] && [self validWord:word])
    {
        [self.words replaceObjectAtIndex:index withObject:word];
    }
    [self assembleSentence];
}
@end
