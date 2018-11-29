//
//  DYPContact.h
//  ContactsMRC
//
//  Created by Daniela Parra on 11/28/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DYPContact : NSObject

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone address:(NSString *)address;

@property (retain, nonatomic) NSMutableString *name;
@property (retain, nonatomic) NSMutableString *email;
@property (retain, nonatomic) NSMutableString *phone;
@property (retain, nonatomic) NSMutableString *address;

@end

NS_ASSUME_NONNULL_END
