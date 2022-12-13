//
//  ViewController-Helper.swift
//  weather
//
//  Created by 郝义鹏 on 2022/10/14.
//

import Foundation
import SwiftyJSON

extension ViewController{
    func showWeather(_ weatherJSON:JSON){
        Weather.temp = "\(weatherJSON["now","temp"].stringValue)˚"
        Weather.icon = weatherJSON["now","icon"].stringValue
        tempLabel.text = Weather.temp
        iconImageView.image = UIImage(named: Weather.icon)
    }
        
        //print(weatherJSON)
    func showCity(_ cityJSON:JSON){
            //数据
            Weather.city=cityJSON["location",0,"name"].stringValue
            //UI
            cityLabel.text = Weather.city
        }
    
}
