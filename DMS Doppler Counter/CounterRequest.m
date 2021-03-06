//
//  CounterRequest.m
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 10/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CounterRequest.h"

@implementation CounterRequest

+(void)saveInUserDefault:(NSMutableArray *)array{
    NSUserDefaults *storedDopplerValues = [NSUserDefaults standardUserDefaults];
    [storedDopplerValues setValue:array forKey:@"StoredValues"];
    [storedDopplerValues synchronize];
}

+(NSMutableArray*)getArrayOfUserDefault{
    return [[[NSUserDefaults standardUserDefaults] arrayForKey:@"StoredValues"]mutableCopy];
}

+(BOOL)recheableWIFI{
    NSString *URLString = [NSString stringWithContentsOfURL:[NSURL URLWithString:@"http://www.google.com"]];
    NSString *URLStringFace = [NSString stringWithContentsOfURL:[NSURL URLWithString:@"http://www.facebook.com"]];
    return ( URLString != NULL || URLStringFace != NULL) ? YES : NO;
}

+(void)start{
    
    
        dispatch_queue_t requestQueue = dispatch_queue_create("REQUEST", NULL);
        dispatch_async(requestQueue, ^{
            if([self recheableWIFI]){
                NSData *result = [self jsonPOSTDopplerRequest];
                NSError *error = nil;
                NSDictionary *rta = [NSJSONSerialization JSONObjectWithData:result options:NSJSONReadingMutableContainers error:&error];
                
                dispatch_sync(dispatch_get_main_queue(), ^{
                    if(error == nil){
                        NSMutableArray *ma = [rta valueForKey:@"d"];
                        NSLog(@"%@",ma);
                        NSLog(@"%@",[ma objectAtIndex:0]);
                        [self saveInUserDefault:ma];
                        
                    }
                });
            }
        });
    dispatch_release(requestQueue);

    
//            NSData *result = [self jsonPOSTDopplerRequest];
//            NSError *error = nil;
//            NSDictionary *rta = [NSJSONSerialization JSONObjectWithData:result options:NSJSONReadingMutableContainers error:&error];
//            if(error == nil){
//                NSMutableArray *ma = [rta valueForKey:@"d"];
//                NSLog(@"%@",ma);
//                NSLog(@"%@",[ma objectAtIndex:0]);
//                [self saveInUserDefault:ma];
//                
//            }

}

+(id)jsonPOSTDopplerRequest{
    //url to request
    NSURL *url = [NSURL URLWithString:@"http://216.157.16.100/default.aspx/GetCounters"];
    
    //the request with the url
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:60];
    // bind la request 
    [request setHTTPMethod:@"POST"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    NSURLResponse *response = nil;
    NSError *error = nil;
    NSData *result = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    if(error == nil)
        return result;
    return nil;
}

@end
