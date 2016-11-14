//
//  RONumberFilter.m
//  POWER
//
//  This App has been generated using IBM Mobile UI Builder
//

#import "RONumberFilter.h"
#import "NSNumber+RO.h"

@implementation RONumberFilter

- (instancetype)initWithFieldName:(NSString *)fieldName value:(NSNumber *)value {
    
    self = [super init];
    if (self) {
        _fieldName = fieldName;
        _fieldValue = value;
    }
    return self;
}

+ (instancetype)filterWithFieldName:(NSString *)fieldName value:(NSNumber *)value {
    
    return [[self alloc] initWithFieldName:fieldName value:value];
}

- (NSString *)getQueryString {
    
    if (_fieldName == nil || _fieldValue == nil) {
        return nil;
    }
    
    return [NSString stringWithFormat:@"\"%@\":{\"$eq\":%@}", _fieldName, [_fieldValue ro_stringValue]];
}

- (BOOL)applyFilter:(NSObject *)value {
    
    if (_fieldValue == nil || ![value isKindOfClass:[NSNumber class]]) {
        return YES;
    }
    
    if ([_fieldValue isEqualToNumber:(NSNumber *)value]) {
        return YES;
    }
    
    return NO;
}

@end
