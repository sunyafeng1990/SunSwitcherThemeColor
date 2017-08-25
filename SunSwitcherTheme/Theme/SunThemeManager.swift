//
//  SunThemeManager.swift
//  SunSwitcherTheme
//
//  Created by 孙亚锋 on 2017/8/25.
//  Copyright © 2017年 LeiMo. All rights reserved.
//

import UIKit
let ThemeNotificationName = NSNotification.Name("keyThemeNotification")


class SunThemeManager: NSObject {

    //当前使用的主题
    var theme:ThemeProtocol = SunWhiteTheme()
    
    //SunThemeManager单例
    static var manager:SunThemeManager? = nil
    static func sharedInstance() -> SunThemeManager{
        if manager == nil {
            manager = SunThemeManager()
        }
        return manager!
    }
    // MARK: - 便利方法
    /// 切换主题的便利方法
    ///
    /// - Parameter type: 要切换主题的枚举类型
    
    static func switcherTheme(type:ThemeType){
        SunThemeManager.sharedInstance().switcherTheme(type:type)
    }
    
    /// 更新主题的便利方法
    static func themeUpdate(){
        NotificationCenter.default.post(name: ThemeNotificationName, object: SunThemeManager.sharedInstance().theme)
    }
    
    //MARK: - Private Method
    /// ThemeManager的私有构造器
   private override init() {
        
    }
    
    /// 切换主题的方法
    ///
    /// - Parameter type: 要切换主题的枚举类型
    private func switcherTheme(type:ThemeType){
        self.theme = type.theme
        NotificationCenter.default.post(name: ThemeNotificationName, object: self.theme)
    }
    
    
    
}
