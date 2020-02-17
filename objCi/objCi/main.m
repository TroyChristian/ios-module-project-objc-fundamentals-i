//
//  main.m
//  objCi
//
//  Created by Lambda_School_Loaner_219 on 2/17/20.
//  Copyright © 2020 Lambda_School_Loaner_219. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        LSIAgent *ethan = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:(int)8 compromised:(BOOL)NO];
        
        LSIAgent *jim = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel:(int)9 compromised:(BOOL)YES];
        
        LSIAgent *claire = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel:(int)5 compromised:(BOOL)NO];
        
        LSIAgent *eugene = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel:(int)10 compromised:(BOOL)YES];
        
        LSIAgent *franz = [[LSIAgent alloc] initWithCoverName:@"Franz Kriper" realName:@"Jean Reno" accessLevel:(int) 4
            compromised:(BOOL) NO];
        
        LSIAgent *luther = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel:(int) 4 compromised:(BOOL)NO];
        
        LSIAgent *sarah = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scoot Thomas" accessLevel:(int)5 compromised:(BOOL)YES];
        
        LSIAgent *max = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel:(int)4 compromised:(BOOL) NO];
        
        LSIAgent *hannah = [[LSIAgent alloc] initWithCoverName:@"Hannah williams " realName:@"Ingeborga Dapkūnaitė" accessLevel:(int)5 compromised:(BOOL) YES];
        
        LSIAgent *jack = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel:(int)6 compromised:(BOOL) YES];
        LSIAgent *frank = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel:(int)9 compromised:(BOOL) NO];
        
        
        
        
        
        NSArray *agents =  @[ethan,jim,claire,eugene,franz,luther,sarah,max,hannah,jack,frank];
        int compAgents = 0;
        for (int i = 0; i < agents.count; i++) {
            if ([agents[i] compromised] == [NSNumber numberWithInt:1]) {
                compAgents ++;
            }
        }
        NSLog(@"Number of agents compromised: %d", compAgents);
        
        
        for (LSIAgent *agent in agents) {
            if ([[agent accessLevel] isGreaterThanOrEqualTo:[NSNumber numberWithInt:8]]) {
            //if ([agent accessLevel] >= [NSNumber numberWithInt:8]) {
                if ([agent compromised] == [NSNumber numberWithInt:1]) {
                    NSLog(@"%@, level: %@ **Warning** **COMPROMISED**", [agent realName], [agent accessLevel]);
                } else {
                    NSLog(@"%@, level: %@", [agent realName], [agent accessLevel]);
                }
            }
        }
        
         int lowLevelAgents = 0;
          int midLevelAgents = 0;
          int highLevelAgents = 0;
          
          
          for (LSIAgent *agent in agents) {
              if ([[agent accessLevel] isGreaterThanOrEqualTo: [NSNumber numberWithInt:8]]) {
                  highLevelAgents++;
              } else if ([[agent accessLevel] isGreaterThanOrEqualTo:[NSNumber numberWithInt:5]] && [[agent accessLevel] isLessThanOrEqualTo: [NSNumber numberWithInt:7]]) {
                  midLevelAgents++;
              } else {
                  lowLevelAgents++;
              }
          }
          NSLog(@"%d low level agents, %d mid level agents, %d high level agents", lowLevelAgents, midLevelAgents, highLevelAgents);
        
             NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"accessLevel" ascending:YES];
             NSArray *sortedAgents = [agents sortedArrayUsingDescriptors:@[sortDescriptor]];
             
             for (LSIAgent *agent in sortedAgents) {
                 NSLog(@"%@, level: %@", [agent coverName], [agent accessLevel]);
             }
        return 0;
         }
      }

     
 

