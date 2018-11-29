//
//  DYPContact.m
//  ContactsMRC
//
//  Created by Daniela Parra on 11/28/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "DYPContact.h"

@implementation DYPContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone address:(NSString *)address
{
    self = [super init];
    if (self) {
        _name = [name mutableCopy];
        _email = [email mutableCopy];
        _phone = [phone mutableCopy];
        _address = [address mutableCopy];
    }
    return self;
}

- (void)dealloc
{
    [self.name release];
    [self.email release];
    [self.phone release];
    [self.address release];
    [super dealloc];
}

@end
