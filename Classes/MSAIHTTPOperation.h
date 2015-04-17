#import <Foundation/Foundation.h>

@class MSAIHTTPOperation;


/**
 * A typedefed block that can be used for MSAIHTTPOperation
 */
typedef void (^MSAINetworkCompletionBlock)(MSAIHTTPOperation * operation, NSData* data, NSError* error);

/**
* Subclass of NSOperation that is used for communication with the server.
*/

@interface MSAIHTTPOperation : NSOperation

+ (instancetype) operationWithRequest:(NSURLRequest *) urlRequest;

@property (nonatomic, readonly) NSURLRequest *URLRequest;

/**
* @param completionBlock block of type MSAINetworkCompletionBlock that will be called in case the MSAIHTTPOperation is not cancelled
*/
- (void) setCompletion:(MSAINetworkCompletionBlock) completionBlock onQueue:(dispatch_queue_t)queue;

@property (nonatomic, readonly) NSHTTPURLResponse *response;
@property (nonatomic, readonly) NSData *data;
@property (nonatomic, readonly) NSError *error;

@end
