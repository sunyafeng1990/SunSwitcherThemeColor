//
//  SunThemeProtocol.swift
//  SunSwitcherTheme
//
//  Created by 孙亚锋 on 2017/8/25.
//  Copyright © 2017年 LeiMo. All rights reserved.
//

import UIKit
// 主题协议，所有的主题要遵循该协议
protocol ThemeProtocol {
    var backgroundColor: UIColor {get}
    var titleTextColor:  UIColor {get}
    var detailTextColor: UIColor {get}
}

// 主题类型枚举, 其中包含了一个简单工厂方法，用来创建Theme主题类的对象
enum ThemeType {
    case whiteTheme
    case blackTheme
    case greenTheme
    case redTheme
    case yellowTheme
    case blueTheme
    /// 主题类型所对应的主题对象
    var theme:ThemeProtocol{
        get{
            switch self {
            case .whiteTheme:
                return SunWhiteTheme()
            case .blackTheme:
                return SunBlackTheme()
            case .greenTheme:
                return SunGreenTheme()
            case .redTheme:
                return SunRedTheme()
            case .yellowTheme:
                return SunYellowTheme()
            case .blueTheme:
                return SunBlueTheme()
                
                
            }
        }
    }
}



class SunWhiteTheme:ThemeProtocol {
    var backgroundColor:UIColor{
        get {
            return UIColor.white
        }
    }
    var titleTextColor:UIColor{
        get {
            return UIColor.black
        }
    }
    var detailTextColor:UIColor{
        get {
            return UIColor.red
        }
    }
    
}

class SunBlackTheme:ThemeProtocol {
    var backgroundColor:UIColor{
        get {
            return UIColor.black
        }
    }
    var titleTextColor:UIColor{
        get {
            return UIColor.white
        }
    }
    var detailTextColor:UIColor{
        get {
            return UIColor.lightGray
        }
    }
}

class SunGreenTheme:ThemeProtocol {
    var backgroundColor:UIColor{
        get {
            return UIColor.colorWithHex(0xB3FFAA)
        }
    }
    var titleTextColor:UIColor{
        get {
            return UIColor.brown
        }
    }
    var detailTextColor:UIColor{
        get {
            return UIColor.black
        }
    }

    
    
}

class SunRedTheme:ThemeProtocol {
    var backgroundColor:UIColor{
        get {
            return UIColor.colorWithHex(0xD62608)
        }
    }
    var titleTextColor:UIColor{
        get {
            return UIColor.white
        }
    }
    var detailTextColor:UIColor{
        get {
            return UIColor.yellow
        }
    }

    
}

class SunYellowTheme:ThemeProtocol {
    var backgroundColor:UIColor{
        get {
            return UIColor.colorWithHex(0xF1FFB3)
        }
    }
    var titleTextColor:UIColor{
        get {
            return UIColor.red
        }
    }
    var detailTextColor:UIColor{
        get {
            return UIColor.lightGray
        }
    }

    
}

class SunBlueTheme:ThemeProtocol {
    var backgroundColor:UIColor{
        get {
            return UIColor.colorWithHex(0x44DDFF)
        }
    }
    var titleTextColor:UIColor{
        get {
            return UIColor.black
        }
    }
    var detailTextColor:UIColor{
        get {
            return UIColor.colorWithHex(0x8E8577)
        }
    }

    
}




