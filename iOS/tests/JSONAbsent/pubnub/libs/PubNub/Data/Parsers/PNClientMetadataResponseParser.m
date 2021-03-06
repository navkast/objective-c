/**

 @author Sergey Mamontov
 @version 3.6.0
 @copyright © 2009-13 PubNub Inc.

 */

#import "PNClientMetadataResponseParser.h"
#import "PNResponse+Protected.h"
#import "PNClient+Protected.h"


// ARC check
#if !__has_feature(objc_arc)
#error PubNub client metadata request response parser must be built with ARC.
// You can turn on ARC for only PubNub files by adding '-fobjc-arc' to the build phase for each of its files.
#endif


#pragma mark Private interface declaration

@interface PNClientMetadataResponseParser ()


#pragma mark - Properties

/**
 Refrence on \b PNClient instance which will store client information.
 */
@property (nonatomic, strong) PNClient *client;

#pragma mark -


@end


#pragma mark - Public interface implementation

@implementation PNClientMetadataResponseParser


#pragma mark - Class methods

+ (id)parserForResponse:(PNResponse *)response {

    NSAssert1(0, @"%s SHOULD BE CALLED ONLY FROM PARENT CLASS", __PRETTY_FUNCTION__);


    return nil;
}


#pragma mark - Instance methods

- (id)initWithResponse:(PNResponse *)response {

    // Check whether initialization successful or not
    if ((self = [super init])) {

        NSDictionary *responseData = response.response;
        self.client = response.additionalData;
        self.client.data = responseData;
    }


    return self;
}

- (id)parsedData {

    return self.client;
}

#pragma mark -


@end
