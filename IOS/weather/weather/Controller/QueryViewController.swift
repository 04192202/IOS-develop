//
//  QueryViewController.swift
//  weather
//
//  Created by 郝义鹏 on 2022/10/12.
//

import UIKit

protocol QueryViewControllerDelegate{
    func didChangeCity( city: String)
}

class QueryViewController: UIViewController {
    
    var currentCity = ""
    var delegate: QueryViewControllerDelegate?
    
    @IBOutlet weak var currentCityLabel: UILabel!
    
    
    @IBOutlet weak var citytextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentCityLabel.text = currentCity
    }
    
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true)
    }
    @IBAction func query(_ sender: Any) {
        dismiss(animated: true)
        
        if citytextfield.text!.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty{
            //修剪空格trimmingCharacters(in: .whitespacesAndNewlines，isempty判断是否为空
            delegate?.didChangeCity(city: citytextfield.text!)
        }
    }
    
    

}
