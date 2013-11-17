//
//  MBPAppDelegate.m
//  Bomb Breaker
//
//  Created by Benjamin DosSantos on 11/16/13.
//  Copyright (c) 2013 MagaBenG Productions. All rights reserved.
//

#import "MBPAppDelegate.h"
#import "MBPMyScene.h"

@implementation MBPAppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    /* Pick a size for the scene */
    SKScene *scene = [MBPMyScene sceneWithSize:CGSizeMake(1024, 768)];

    /* Set the scale mode to scale to fit the window */
    scene.scaleMode = SKSceneScaleModeAspectFit;

    [self.skView presentScene:scene];

    self.skView.showsFPS = YES;
    self.skView.showsNodeCount = YES;
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return YES;
}

@end
