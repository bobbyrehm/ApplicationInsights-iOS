#import "MSAIInternal.h"
#import "MSAIOrderedDictionary.h"
#import "Constants.h"

/// Data contract class for type Internal.
@implementation MSAIInternal

///
/// Adds all members of this class to a dictionary
///
- (MSAIOrderedDictionary *)serializeToDictionary {
  MSAIOrderedDictionary *dict = [super serializeToDictionary];
  [dict setObject:kSDKVersion forKey:@"ai.internal.sdkVersion"];
  
  if (self.agentVersion != nil) {
    [dict setObject:self.agentVersion forKey:@"ai.internal.agentVersion"];
  }
  return dict;
}

#pragma mark - NSCoding

- (instancetype)initWithCoder:(NSCoder *)coder {
  self = [super init];
  if(self) {
    _agentVersion = [coder decodeObjectForKey:@"self.agentVersion"];
  }

  return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
  [coder encodeObject:self.agentVersion forKey:@"self.agentVersion"];
}


@end
