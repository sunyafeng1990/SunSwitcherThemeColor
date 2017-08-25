//
//  SunSubView.swift
//  SunSwitcherTheme
//
//  Created by 孙亚锋 on 2017/8/25.
//  Copyright © 2017年 LeiMo. All rights reserved.
//

import UIKit

class SunSubView: UIView {

    var width :CGFloat{
        get{
            return self.frame.size.width
        }
    }

    var height :CGFloat{
        
        get {
            return self.frame.size.height
        }
    }
    
    var titleLabel:  SunTitleLabel?
    var detailLabel: SunDetailLabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubviews()
    }
    func addSubviews() {
        
        self.titleLabel = SunTitleLabel.init(frame:CGRect.init(x: 0, y: 10, width: self.width, height: 20))
        self.addSubview(self.titleLabel!)
        
        self.detailLabel = SunDetailLabel.init(frame: CGRect.init(x: 0, y: 40, width: self.width, height: 15))
        self.addSubview(self.detailLabel!)

        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
}
