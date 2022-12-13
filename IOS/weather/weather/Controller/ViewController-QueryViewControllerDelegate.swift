//
//  ViewController-QueryViewControllerDelegate.swift
//  weather
//
//  Created by 郝义鹏 on 2022/10/14.
//

import Foundation
import Alamofire
import SwiftyJSON

extension ViewController: QueryViewControllerDelegate{
 
    func didChangeCity(city: String) {
        
        //print(city)
        //模糊搜索
        let parameters = ["location":city, "key":kQweatherWebKey]
        
        AF.request( "https:geoapi.qweather.com/v2/city/lookup?p",parameters: parameters).responseJSON{
            response in
            if let date = response.data{
                let cityJSON = JSON(date)
                 
                self.showCity(cityJSON)
        
                
                let parameters = ["location":cityJSON["location",0,"id"], "key" :kQweatherWebKey]
                
        AF.request("https://devapi.qweather.com/v7/weather/now",parameters: parameters ).responseJSON{ response in
                    if let date = response.value{
                        let weatherJSON = JSON(date)
                        self.showWeather(weatherJSON)
                                    
                        print(weatherJSON)
                    
                 }//responseJSON 解析json数据
                }//回调函数，利用api请求数据
                
            }
            
        }
    }
}
