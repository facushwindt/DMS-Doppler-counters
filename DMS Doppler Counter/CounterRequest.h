//
//  CounterRequest.h
//  DMS Doppler Counter
//
//  Created by facundo schwindt on 10/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define DOPPLER_EMAILS_SENT_TODAY 0
#define DOPPLER_EMAILS_SINCE_START_UP 1
#define DOPPLER_CAMPAIGNS_SENT_TODAY 2
#define DOPPLER_CAMPAIGNS_SENT_SINCE_START_UP 3
#define DOPPLER_DAYS_SINCE_START_UP 4

#define DOPPLER_FAST_PRE_QUEUE_LENGHT 5
#define DOPPLER_NORMAL_PRE_QUEUE_LENGHT 6
#define DOPPLER_FAST_RESPONSE_QUEUE 7
#define DOPPLER_NORMAL_RESPONSE_QUEUE 8
#define DOPPLER_SENDING_QUEUE_STATUS 9
#define DOPPLER_AVERAGE_EMAILS_PER_HOUR_TODAY 10
#define DOPPLER_AVERAGE_EMAILS_PER_HOUR_SINCE_START_UP 11
#define DOPPLER_LARGETS_SENT_CAMPAIGN 12

@interface CounterRequest : NSObject

+(NSMutableArray*)start; // retorna el arreglo los values del request

// esto devuelve algo como
//Counter[7890:f803] (
//                    614,          //emails sent today
//                    4514911,      Emails sent sinde start up
//                    1,            Campaign sent today
//                    362,          Campaign sent since start up
//                    45,           Days since start up
//                    0,               //FAST_PRE_QUEUE_LENGHT
//                    0,               // NORMAL_PRE_QUEUE_LENGHT
//                    0,               //FAST_RESPONSE_QUEUE
//                    0,               //NORMAL_RESPONSE_QUEUE
//                    1,               //SENDING_QUEUE_STATUS
//                    55,           Average Emails Per Hour Today
//                    4138,         Average Emails Per Hour Since StartUp
//                    154517        Largest sent campaing
//                    )

@end
