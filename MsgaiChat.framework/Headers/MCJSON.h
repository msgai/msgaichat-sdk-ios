//
//  MCJSON.h
//  MsgaiChat
//
//  Copyright © 2018 MSGAI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MCJSON : NSObject

+ (nonnull instancetype)withObject:(nullable id <NSCopying>)object;
+ (nonnull instancetype)withData:(nullable NSData *)data;

// Pass through the branches.
- (nonnull instancetype)objectForKeyedSubscript:(nonnull id)key;
- (nonnull instancetype)objectAtIndexedSubscript:(NSUInteger)index;

- (nullable id)object;

@property (nonatomic, readonly) BOOL exists;

// Values.
// TODO: Properties `object` and `currentObject` should be moved
// to header. This will allow to create custom value parsers
// for any class.

@property (nonatomic, readonly, nullable) NSArray<MCJSON *> *JSONArray;

@property (nonatomic, readonly, nullable) NSDictionary *dictionary;
@property (nonatomic, readonly, nonnull) NSDictionary *dictionaryValue;

@property (nonatomic, readonly, nullable) NSArray *array;
@property (nonatomic, readonly, nonnull) NSArray *arrayValue;

@property (nonatomic, readonly, nullable) NSString *string;
@property (nonatomic, readonly, nonnull) NSString *stringValue;

@property (nonatomic, readonly, nullable) NSString *forceToString;
@property (nonatomic, readonly, nonnull) NSString *forceToStringValue;

@property (nonatomic, readonly, nullable) NSURL *URL;

@property (nonatomic, readonly, nullable) NSNumber *number;
@property (nonatomic, readonly, nonnull) NSNumber *numberValue;

@property (nonatomic, readonly) NSInteger integerValue;
@property (nonatomic, readonly) NSUInteger unsignedIntegerValue;
@property (nonatomic, readonly) BOOL boolValue;
@property (nonatomic, readonly) double doubleValue;
@property (nonatomic, readonly) float floatValue;

@end
