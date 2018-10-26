//
//  StaticCircleView.swift
//  CircleAnimationRoll
//
//  Created by Shannon MYang on 2018/9/18.
//  Copyright © 2018年 Shannon MYang. All rights reserved.
//

import UIKit

class StaticCircleView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        
        let context:CGContext! = UIGraphicsGetCurrentContext()
        //线宽
        context.setLineWidth(2)
        //线的颜色为红色
        context.setStrokeColor(red: 1, green: 0, blue: 0, alpha: 1)
        //参数依次是 context， 中心点x， 中心点x，半径，起点，终点。 0.8* M_PI* 2 则是圆周，也就是360度的80%
        context.addArc(center:CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2),
                       radius:self.frame.size.height / 2 - 5,
                       startAngle: 0,
                       endAngle: 0.8 * CGFloat(Double.pi), clockwise: true)
        context.strokePath()
    }
}


