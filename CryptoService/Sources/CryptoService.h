//
//  CryptoService.h
//  Pods
//
//  Created by Dzmitry Machalau on 28/02/2017.
//
//

#ifndef CryptoService_h
#define CryptoService_h

#import <Foundation/Foundation.h>

@interface CryptoService : NSObject

- (NSString *)hashPassword:(NSString *)password;

@end


#endif /* CryptoService_h */
