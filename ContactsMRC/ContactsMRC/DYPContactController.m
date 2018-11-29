//
//  DYPContactController.m
//  ContactsMRC
//
//  Created by Daniela Parra on 11/28/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "DYPContactController.h"
#import "DYPContact.h"

@interface DYPContactController ()

@property (retain, nonatomic) NSMutableArray<DYPContact *> *internalContacts;

@end

@implementation DYPContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
        //is this a repeat?
    }
    return self;
}

- (void)createContactWithName:(NSString *)name email:(NSString *)email phone:(NSString *)phone address:(NSString *)address
{
    DYPContact *contact = [[DYPContact alloc] initWithName:name email:email phone:phone address:address]; //should I autorelease here?
    
    [self.internalContacts addObject:contact];
}

- (void)updateContact:(DYPContact *)contact name:(NSString *)name email:(NSString *)email phone:(NSString *)phone address:(NSString *)address
{
    
    DYPContact *scratch = [[DYPContact alloc] initWithName:name email:email phone:phone address:address];
    
    NSInteger index = [self.internalContacts indexOfObject:contact];
    [self.internalContacts removeObjectAtIndex:index];
    [self.internalContacts insertObject:scratch atIndex:index];
}

- (NSArray<DYPContact *> *)contacts
{
    return self.internalContacts;
}

- (void)dealloc
{
    [self.contacts release];
    [self.internalContacts release];
    [super dealloc];
}

@end
