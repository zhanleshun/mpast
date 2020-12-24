//
//  消息推送
//  mpast
//
//  Created by 詹乐顺 on 2020/12/23.
//  Copyright © 2020 Alibaba. All rights reserved.
//

import Foundation

@objc class PushViewController: UIViewController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // 设备ID
        let textField = UITextField()
        textField.frame = CGRect(x: 60,y: 90,width: 300,height: 50)
        textField.borderStyle = UITextField.BorderStyle.roundedRect //边框样式
        textField.placeholder = "设备ID"
        self.view.addSubview(textField)
        
        
        // 绑定设备
        let bindButton = UIButton(type: UIButton.ButtonType.system)
        bindButton.frame = CGRect(x: 60,y: 160,width: 300,height: 50)
        bindButton.setTitle("绑定设备", for: UIControl.State())
        bindButton.backgroundColor = UIColor.orange
        bindButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(bindButton)//把button添加到当前视图
        bindButton.addTarget(self,action: #selector(bindClick),for:UIControl.Event.touchUpInside)
        
        // 消息推送
        let pushButton = UIButton(type: UIButton.ButtonType.system)
        pushButton.frame = CGRect(x: 60,y: 230,width: 300,height: 50)
        pushButton.setTitle("消息推送", for: UIControl.State())
        pushButton.backgroundColor = UIColor.orange
        pushButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(pushButton)//把button添加到当前视图
        pushButton.addTarget(self,action: #selector(pushClick),for:UIControl.Event.touchUpInside)
        
        // 返回
        let rtnButton = UIButton(type: UIButton.ButtonType.system)
        rtnButton.frame = CGRect(x: 60,y: 300,width: 300,height: 50)
        rtnButton.setTitle("返回", for: UIControl.State())
        rtnButton.backgroundColor = UIColor.orange
        rtnButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(rtnButton)//把button添加到当前视图
        rtnButton.addTarget(self,action: #selector(rtnClick),for:UIControl.Event.touchUpInside)
        
    }
    
    
    @objc func bindClick(){
        
    }

    @objc func pushClick(){
        
    }
    
    
    @objc func rtnClick(){
        self.navigationController?.popViewController(animated: true)
    }
}
