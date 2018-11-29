//
//  DYPContactController.h
//  ContactsMRC
//
//  Created by Daniela Parra on 11/28/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DYPContact;

NS_ASSUME_NONNULL_BEGIN

@interface DYPContactController : NSObject

- (void)createContactWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone address:(NSString *)address;

- (void)updateContact:(DYPContact *)contact name:(NSString *)name email:(NSString *)email phone:(NSString *)phone address:(NSString *)address;

@property (retain, nonatomic, readonly) NSArray<DYPContact *> *contacts;

@end

NS_ASSUME_NONNULL_END
