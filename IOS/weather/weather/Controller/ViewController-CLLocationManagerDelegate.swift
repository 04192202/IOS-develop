//
//  ViewController-CLLocationManagerDelegate.swift
//  weather
//
//  Created by 郝义鹏 on 2022/10/14.
//

import Foundation
import CoreLocation
import SwiftyJSON
import Alamofire
//扩展
extension ViewController:CLLocationManagerDelegate{
    // 当用户请求的时候立刻调用 正向传值
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let lon = locations[0].coordinate.longitude
        let lat = locations[0].coordinate.latitude
       
        
        
        //y异步执行
        AF.request("https://devapi.qweather.com/v7/weather/now?location=\(lon),\(lat)&key=\(kQweatherWebKey)" ).responseJSON{ response in
            if let date = response.value{
                let weatherJSON = JSON(date)
                self.showWeather(weatherJSON)
                
            }//responseJSON 解析json数据
        }//回调函数，利用api请求数据
        
        AF.request( "https:geoapi.qweather.com/v2/city/lookup?location=\(lon),\(lat)&key=\(kQweatherWebKey)").responseJSON{
            response in
            if let date = response.data{
                let cityJSON = JSON(date)
                self.showCity(cityJSON)
                
            }
            
        }
        
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
        cityLabel.text = "获取位置失败，请尝试手动搜索"
    }

}
