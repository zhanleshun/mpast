//
//  LbsViewController.swift
//  mpast
//
//  Created by 詹乐顺 on 2020/12/23.
//  Copyright © 2020 Alibaba. All rights reserved.
//

import Foundation
import UIKit

@objc class LbsViewController : UIViewController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // 获得定位
        let lbsButton = UIButton(type: UIButton.ButtonType.system)
        lbsButton.frame = CGRect(x: 60,y: 90,width: 300,height: 50)
        lbsButton.setTitle("获得定位", for: UIControl.State())
        lbsButton.backgroundColor = UIColor.orange
        lbsButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(lbsButton)//把button添加到当前视图
        lbsButton.addTarget(self,action: #selector(lbsClick),for:UIControl.Event.touchUpInside)
        
        // 返回
        let rtnButton = UIButton(type: UIButton.ButtonType.system)
        rtnButton.frame = CGRect(x: 60,y: 160,width: 300,height: 50)
        rtnButton.setTitle("返回", for: UIControl.State())
        rtnButton.backgroundColor = UIColor.orange
        rtnButton.setTitleColor(UIColor.white, for: UIControl.State())
        self.view.addSubview(rtnButton)//把button添加到当前视图
        rtnButton.addTarget(self,action: #selector(rtnClick),for:UIControl.Event.touchUpInside)
        
    }
    
    
    @objc func lbsClick(){
        print("LbsViewController lbsClick... ",Date())
        let config = MPLBSConfiguration()
        config.cacheTimeInterval = APCoreLocationCacheAvaliable.default // 定位接受的缓存时间，单位秒
        config.desiredAccuracy = CLLocationAccuracy.init(500)           // 定位期望精度，单位米
        
        let manager = MPLBSLocationManager.init(configuration: config)
//        manager.requestLocationNeedReGeocode("NO",)
        manager.requestLocationNeedReGeocode(false, completionHandler: getLoction)
        
    }
    
    
    @objc func rtnClick(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func getLoction(success: Bool, info: MPLBSLocationInfo, error: Error){
        if(success){
            let location = info.location
            print("定位成功：",location)
            let longitude = location.coordinate.longitude // 经度
            let latitude = location.coordinate.latitude   // 纬度
            let accuracy = location.horizontalAccuracy    // 精确度
//            let isHighAccuracy = location.ap_lbs_is_high_accuracy_close // 是否高精度
            
            let msg = String(format: "经度: %.5f， \n维度: %.5f, \n精确度: %.3f", longitude,latitude,accuracy)
            let alertController = UIAlertController(title: "定位", message: msg, preferredStyle: UIAlertController.Style.alert)
            let cancelAction = UIAlertAction(title: "取消", style: UIAlertAction.Style.cancel, handler: nil )
            let okAction = UIAlertAction(title: "确定", style: UIAlertAction.Style.default) { (ACTION) in
                print("确定")
            }
            alertController.addAction(cancelAction);
            alertController.addAction(okAction);
            self.present(alertController, animated: true, completion: nil)
            
        }else{
            print("定位失败：",error.localizedDescription)
            let msg = String(format: "定位失败： %s", error.localizedDescription)
            let alertController = UIAlertController(title: "定位", message: msg, preferredStyle: UIAlertController.Style.alert)
            let cancelAction = UIAlertAction(title: "取消", style: UIAlertAction.Style.cancel, handler: nil )
            let okAction = UIAlertAction(title: "确定", style: UIAlertAction.Style.default) { (ACTION) in
                print("确定")
            }
            alertController.addAction(cancelAction);
            alertController.addAction(okAction);
            self.present(alertController, animated: true, completion: nil)
        }
        
    }
    
}
