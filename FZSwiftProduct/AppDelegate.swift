//
//  AppDelegate.swift
//  FZSwiftProduct
//
//  Created by xiehewanbang on 2019/1/31.
//  Copyright © 2019年 xiehewanbang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
  private  lazy var homeVC:FZBaseViewController={
        let homeVC = FZHomeVC.init(nibName: "FZHomeVC", bundle: nil)
        homeVC.tabBarItem.image = UIImage.init(named: "xiaoer_tab_homeiconY")
        homeVC.tabBarItem.title = "首页"
        return homeVC
    }()
    
    private lazy var customerVC:FZBaseViewController = {
        let customerVC = FZCustomerVC.init(nibName: "FZCustomerVC", bundle: nil)
        customerVC.tabBarItem.image = UIImage.init(named: "xiaoer_tab_customericonY")
        customerVC.tabBarItem.title = "客户"
        return customerVC;
    }()
    
    private lazy var storeVC:FZBaseViewController = {
        let storeVC = FZStoreVC.init(nibName: "FZStoreVC", bundle: nil)
        storeVC.tabBarItem.image = UIImage.init(named: "xiaoer_tab_shopY")
        storeVC.tabBarItem.title = "店铺"
        return storeVC;
    }()
    
    private lazy var mineVC:FZBaseViewController = {
        let mineVC = FZMineVC.init(nibName: "FZMineVC", bundle: nil)
        mineVC.tabBarItem.image = UIImage.init(named: "xiaoer_tab_usericonY")
        mineVC.tabBarItem.title = "我的"
        return mineVC
    }()
    
  private  lazy var myTabBarController:FZBaseTabarController={
        let   myTabBarController = FZBaseTabarController()
        let nav1  = FZBaseNavigationController.init(rootViewController: self.homeVC)
        let nav2 = FZBaseNavigationController.init(rootViewController: self.customerVC);
        let nav3 = FZBaseNavigationController.init(rootViewController: self.storeVC)
        let nav4 = FZBaseNavigationController.init(rootViewController: self.mineVC)
        myTabBarController.viewControllers = [nav1,nav2,nav3,nav4]
        return myTabBarController
    }()
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window?.rootViewController = self.myTabBarController;
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

