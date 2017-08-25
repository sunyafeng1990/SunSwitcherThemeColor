//
//  SunColor.swift
//  SunSwitcherTheme
//
//  Created by 孙亚锋 on 2017/8/25.
//  Copyright © 2017年 LeiMo. All rights reserved.
//

import UIKit

extension UIColor{
    
    static func rgb(_ red :CGFloat,green:CGFloat,blue:CGFloat) ->UIColor{
        
        return UIColor.init(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1)
    }
    
    
    static func colorWithHex(_ hex :UInt) -> UIColor{
        let r: CGFloat = CGFloat((hex & 0xff0000) >> 16)
        let g: CGFloat = CGFloat((hex & 0x00ff00) >> 8)
        let b: CGFloat = CGFloat(hex & 0x0000ff)
        return rgb(r, green: g, blue: b)
    }
}
