//
//  ViewController.swift
//  weather
//  Created by 郝义鹏 on 2022/10/10.
//

import UIKit
import CoreLocation


//delegate -- 代理
//protocaol --协议 CLLocationManagerDelegate

class ViewController: UIViewController {
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var iconImageView:UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    
    let locationmanager = CLLocationManager() //位置管理器
    let Weather = weather()
    //当前页面加载函数，系统自动调用
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationmanager.requestWhenInUseAuthorization() //请求用户使用时的位置
        locationmanager.delegate = self // 委托位置管理器
        locationmanager.desiredAccuracy = kCLLocationAccuracyThreeKilometers //指定位置精度
        locationmanager.requestLocation() //调用位置请求一次性请求
        
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? QueryViewController{
            
            vc.currentCity = Weather.city
            vc.delegate = self
        }
    }
    
}
    


