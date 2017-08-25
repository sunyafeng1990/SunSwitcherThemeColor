//
//  SunTitleLabel.swift
//  SunSwitcherTheme
//
//  Created by 孙亚锋 on 2017/8/25.
//  Copyright © 2017年 LeiMo. All rights reserved.
//

import UIKit

class SunTitleLabel: SunBaseLabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.font = UIFont.boldSystemFont(ofSize: 16)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func changeTextColor(theme: ThemeProtocol) -> UIColor {
        return theme.titleTextColor
    }
    
}
