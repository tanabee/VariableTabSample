//
//  MainTabBarController.swift
//  VariableTabSample
//
//  Created by 田邉　裕貴 on 2015/03/02.
//  Copyright (c) 2015年 田邉　裕貴. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.addViewController()
    }
    
    func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
        self.removeViewController()
    }
    
    private func addViewController() {
        let viewController: AdditionalViewController = self.storyboard?.instantiateViewControllerWithIdentifier("AdditionalViewController") as AdditionalViewController
        self.viewControllers?.append(viewController)
    }
    
    private func removeViewController() {
        if (self.viewControllers?.count == 4) {
            self.viewControllers?.removeLast()
        }
    }
}
