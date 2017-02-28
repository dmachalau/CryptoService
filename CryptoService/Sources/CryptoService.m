//
//  CryptoService.m
//  Pods
//
//  Created by Dzmitry Machalau on 28/02/2017.
//
//

#import "CryptoService.h"

#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonCryptor.h>


@implementation CryptoService

- (NSString *)hashPassword:(NSString *)password {
    const char *s = [password cStringUsingEncoding:NSUTF8StringEncoding];
    
    NSData *keyData = [NSData dataWithBytes:s length:strlen(s)];
    
    uint8_t digest[CC_SHA512_DIGEST_LENGTH] = {0};
    
    CC_SHA512(keyData.bytes, (CC_LONG)keyData.length, digest);
    
    NSData *result =[NSData dataWithBytes:digest length:CC_SHA512_DIGEST_LENGTH];
    
    return [result base64EncodedStringWithOptions:0];
}

@end
