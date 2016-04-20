//
//  ViewController.swift
//  swift-CGAffineTransform
//
//  Created by huanghy on 16/4/20.
//  Copyright © 2016年 huanghy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        let image = UIImage(named: "1")
        //新建一个颜色对象，并将导入的图片赋予该对象
        let patternColor = UIColor.init(patternImage: image!)
        //将此颜色对象，赋值给当前根视图的背景
        self.view.backgroundColor = patternColor

       */
        
        let rect = CGRectMake(50, 150, 200, 50)
        let view = UIView(frame:rect)
        view.backgroundColor = UIColor.brownColor()
        self.view.addSubview(view)
        
        //创建一个仿射变换变量，仿射变换可以用于平移、旋转、缩放变换路径或者图形上下文
        var transform = view.transform
        //使用旋转功能，对视图进行45度旋转
        transform = CGAffineTransformRotate(transform,3.14/4)
        //将变换变量，赋值给视图对象
        view.transform = transform
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

