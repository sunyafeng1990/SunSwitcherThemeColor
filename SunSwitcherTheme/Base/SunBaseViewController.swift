//
//  SunBaseViewController.swift
//  SunSwitcherTheme
//
//  Created by 孙亚锋 on 2017/8/25.
//  Copyright © 2017年 LeiMo. All rights reserved.
//

import UIKit

class SunBaseViewController: UIViewController,ThememanagerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

       self.changeTheme()
    }

    
    
    func changeTheme() {
        NotificationCenter.default.addObserver(self, selector: #selector(handelNotification(notification:)), name: ThemeNotificationName, object: nil)
        SunThemeManager.themeUpdate()
    }
    
    
    
    func handelNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol else {
            return
        }
        self.view.backgroundColor = theme.backgroundColor
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        print("释放通知")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
