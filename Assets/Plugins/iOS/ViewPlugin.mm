//
//  ViewPlugin.mm
//  NativePlugin
//
//  Created by Maeda, Kazuya | ASRHQ on 2/8/17.
//  Copyright © 2017 Rakuten Asia Pte. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#include <stdio.h>

extern "C" {
    void showCustomView();
    void showDialog();
}

extern UIViewController* UnityGetGLViewController();

void showCustomView() {
    UIViewController* currentViewController = UnityGetGLViewController();
    
    UIView *customView = [[UIView alloc] init];
    customView.frame = CGRectMake(0, 0, 100, 100);
    customView.backgroundColor = [UIColor redColor];
    
    [currentViewController.view addSubview:customView];
    
    NSLog(@"# Custom view is shown.");
}

void showDialog() {
    UIViewController *currentViewController = UnityGetGLViewController();
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Show Native Dialog"
                                                                             message:@"OK"
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"Cancel"
                                                       style:UIAlertActionStyleCancel
                                                      handler:nil]];
    
    [currentViewController presentViewController:alertController animated:YES completion:nil];
}
