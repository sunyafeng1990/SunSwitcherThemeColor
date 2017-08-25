//
//  SunBaseLabel.swift
//  SunSwitcherTheme
//
//  Created by 孙亚锋 on 2017/8/25.
//  Copyright © 2017年 LeiMo. All rights reserved.
//

import UIKit

class SunBaseLabel: UILabel,ThememanagerProtocol{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.changeTheme()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    
    func changeTheme() {
        NotificationCenter.default.addObserver(self, selector: #selector(handelNotification(notification:)), name: ThemeNotificationName, object: nil)
        
         SunThemeManager.themeUpdate()
    }
    
    
    func handelNotification(notification: NSNotification) {
        guard let theme = notification.object as? ThemeProtocol  else {
            return
        }
        self.textColor = self.changeTextColor(theme: theme)
        
    }
    
    
    func changeTextColor(theme:ThemeProtocol) -> UIColor {
        
        return theme.titleTextColor
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        print("释放")
    }
    
    
}
