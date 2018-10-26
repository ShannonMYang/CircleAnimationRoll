//
//  ViewController.swift
//  CircleAnimationRoll
//
//  Created by Shannon MYang on 2018/9/18.
//  Copyright © 2018年 Shannon MYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Animation()
    }

    //使用，用CAKeyframeAnimation动画让这个圆环转起来
    func Animation()  {
        let circle: StaticCircleView = StaticCircleView.init(frame: CGRect.init(x: 0, y: 0, width: 40, height: 40))
        circle.center = self.view.center
        self.view.addSubview(circle)
        
        let animation:CAKeyframeAnimation = CAKeyframeAnimation.init(keyPath: "transform.rotation.z")
        animation.keyTimes = [0, 0.5, 0.85, 1]
        animation.values = [0, CGFloat(Double.pi), CGFloat(Double.pi) * 1.7, CGFloat(Double.pi) * 2]
        animation.isRemovedOnCompletion = false
        animation.repeatCount = MAXFLOAT
        animation.duration = 1.5
        animation.timingFunction = CAMediaTimingFunction.init(name: CAMediaTimingFunctionName.easeInEaseOut)
        
        circle.layer.add(animation, forKey: "animation")
    }

}

