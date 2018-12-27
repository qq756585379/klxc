//
//  YJHttpRequest.h
//  YJWeibo-oc
//
//  Created by sctto on 16/3/23.
//  Copyright © 2016年 sctto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YJHttpRequest : NSObject

+ (void)get:(NSString *)url params:(NSDictionary *)params success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;
+ (void)post:(NSString *)url params:(NSDictionary *)params success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;

//Creating an Upload Task
+ (void)createAnUploadTask:(NSString *)urlStr
                 imageData:(NSData *)imageData
             andParameters:(NSDictionary *)paramDic
                   success:(void (^)(id json))success
                   failure:(void (^)(NSError *error))failure;

@end
