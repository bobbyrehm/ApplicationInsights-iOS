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
  if (self.sdkVersion != nil) {
      [dict setObject:self.sdkVersion forKey:@"ai.internal.sdkVersion"];
  }
  if (self.agentVersion != nil) {
    [dict setObject:self.agentVersion forKey:@"ai.internal.agentVersion"];
  }
  return dict;
}

#pragma mark - NSCoding

- (instancetype)initWithCoder:(NSCoder *)coder {
  self = [super init];
  if(self) {
    _sdkVersion = [coder decodeObjectForKey:@"self.sdkVersion"];
    _agentVersion = [coder decodeObjectForKey:@"self.agentVersion"];
  }

  return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
  [coder encodeObject:self.sdkVersion forKey:@"self.sdkVersion"];
  [coder encodeObject:self.agentVersion forKey:@"self.agentVersion"];
}


@end
