//
//  MainViewController.swift
//  mpast
//
//  Created by 詹乐顺 on 2020/12/23.
//  Copyright © 2020 Alibaba. All rights reserved.
//

import Foundation
import UIKit

@objc class MainViewController : UIViewController {
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let button = UIButton(type: UIButton.ButtonType.system)
        button.frame = CGRect(x: 100,y: 100,width: 240,height: 48)
        button.setTitle("打开小程序", for: UIControl.State())
        button.backgroundColor = UIColor.cyan
        button.setTitleColor(UIColor.black, for: UIControl.State())
        self.view.addSubview(button)//把button添加到当前视图
        button.addTarget(self,action: #selector(openTiny),for:UIControl.Event.touchUpInside)//一个设计好了的，可以监听到用户的点击事件的函数
        
        let button2 = UIButton(type: UIButton.ButtonType.system)
        button2.frame = CGRect(x: 100,y: 168,width: 240,height: 48)
        button2.setTitle("打开离线包", for: UIControl.State())
        button2.backgroundColor = UIColor.cyan
        button2.setTitleColor(UIColor.black, for: UIControl.State())
        self.view.addSubview(button2)//把button添加到当前视图
        button2.addTarget(self,action: #selector(openH5),for:UIControl.Event.touchUpInside)//一个设计好了的，可以监听到用户的点击事件的函数
        
        let buttonScan = UIButton(type: UIButton.ButtonType.system)
        buttonScan.frame = CGRect(x: 100,y: 232,width: 240,height: 48)
        buttonScan.setTitle("打开扫码", for: UIControl.State())
        buttonScan.backgroundColor = UIColor.cyan
        buttonScan.setTitleColor(UIColor.black, for: UIControl.State())
        self.view.addSubview(buttonScan)//把button添加到当前视图
        buttonScan.addTarget(self,action: #selector(openScan),for:UIControl.Event.touchUpInside)//一个设计好了的，可以监听到用户的点击事件的函数
    }
    
    @objc func openTiny() {
        MPNebulaAdapterInterface.startTinyApp(withId:"2020120916120001", params: [:])
        
    }
    
    @objc func openH5() {
        MPNebulaAdapterInterface.shareInstance().startH5ViewController(withNebulaApp: ["appId":"13601702"])
    }
    
    @objc func openScan(){
        self.navigationController?.pushViewController(MPScanDemoVC(), animated: true)
    }
}
