//
//  FISSentence.h
//  objc-fissentence
//
//  Created by Flatiron School on 6/11/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISSentence : NSObject


//Anytime you declare properties or methods into the header file of the class, they are PUBLIC BY DEFAULT!!
//REMEMBER THAT!!!
@property (nonatomic, strong, readonly) NSString* sentence;
//THE READONLY IS A PROPERTY THAT CANNOT BE ALTERED BUT READ ONLY, HENCE READONLY!! 
@property (nonatomic, strong) NSMutableArray* words;
@property (nonatomic, strong) NSString* punctuation;

-(void)addWord:(NSString*)word;

-(void)addWords: (NSArray*)words withPunctuation:(NSString*)punctuation;

-(void)removeWordAtIndex: (NSUInteger)index;

-(void)insertWord: (NSString*)word atIndex:(NSUInteger)index;

-(void)replacePunctuationWithPunctuation:(NSString*)punctuation;

-(void)replaceWordAtIndex:(NSUInteger)index withWord:(NSString*)word;

@end
