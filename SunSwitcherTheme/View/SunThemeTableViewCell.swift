//
//  SunThemeTableViewCell.swift
//  SunSwitcherTheme
//
//  Created by 孙亚锋 on 2017/8/25.
//  Copyright © 2017年 LeiMo. All rights reserved.
//

import UIKit

enum CellTtitleColorType:Int{
    
    case White,Black,Green,Red,Yellow,Blue
    
    var title :String{
        
        get{
            switch self {
            case .White:
                return "白色主题"
            case .Black:
                return "黑色主题"
            case .Green:
                return "绿色主题"
            case .Red:
                return "红色主题"
            case .Yellow:
                return "黄色主题"
            case .Blue:
                return "蓝色主题"
            }
        }
    }
    
    var detail :String{
        get{
            switch self {
            case .White:
                return "白色背景,黑色字体"
            case .Black:
                return "黑色背景,白色字体"
            case .Green:
                return "绿色背景,红色字体"
            case .Red:
                return "红色背景,白色字体"
            case .Yellow:
                return "黄色背景,红色字体"
            case .Blue:
                return "蓝色背景,白色字体"
                
            }
        }
    }
    
    
    var themeType:ThemeType{
        get{
            switch self {
            case .White:
                return .whiteTheme
            case .Black:
                return .blackTheme
            case .Green:
                return .greenTheme
            case .Red:
                return .redTheme
            case .Yellow:
                return .yellowTheme
            case .Blue:
                return .blueTheme
            }
        }
    }
    
    
    
}



class SunThemeTableViewCell: UITableViewCell {

    var myView :SunSubView!
    
    
    // init方法
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

       self.selectionStyle = .none
       self.backgroundColor = UIColor.clear
       self.addAllSubviews()
        
    }
    
    func addAllSubviews() {
        myView = SunSubView.init(frame: CGRect.init(x: 20, y: 0, width: 200, height: 60))
        self.addSubview(myView)
    }
    
    func configureCell(index:Int){
        guard let cellType:CellTtitleColorType = CellTtitleColorType(rawValue:index) else {
            return
        }
        myView.titleLabel?.text  = cellType.title
        myView.detailLabel?.text = cellType.detail
        if self.accessoryType == .checkmark {
            self.switherTheme(type: cellType)
        }
        
    }
    
    
    func switherTheme(type:CellTtitleColorType){
        
        SunThemeManager.switcherTheme(type: type.themeType)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
