//
//  BaseNavigationController.swift
//  iOSSwiftProjectFramework
//
//  Created by GG266 on 2020/8/6.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationBar.isTranslucent = false;

    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.children.count == 1 {
            viewController.hidesBottomBarWhenPushed = true
        }
        
        super.pushViewController(viewController, animated: animated)
        
        if let tabBarController = self.tabBarController  {
            var frame = tabBarController.tabBar.frame
            frame.origin.y = SCREEN_HEIGHT - frame.size.height
            tabBarController.tabBar.frame = frame
        }
    }
    
}
