//
//  ViewController.swift
//  Dice
//
//  Created by 郝义鹏 on 2022/9/9.
//

import UIKit

import AVFoundation

var player : AVAudioPlayer!

class ViewController:
                            
    UIViewController {
    
    //定义变量
    var index1: Int = 0
    var index2: Int = 0
    var index3: Int = 0
    var index4: Int = 0
    var index5: Int = 0
    var index6: Int = 0
    //定义常量，Arr 为数组类型，将数据放入数组
    //let DiecArr = ["diec1","diec2","dice3","dice4","dice5","dice6"]
    
    //链接每个骰子的动作
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    @IBOutlet weak var diceImageView5: UIImageView!
    @IBOutlet weak var diceImageView6: UIImageView!
    
    
    @IBAction func Roll(_ sender: Any) {
        updateDiceImages()
    }
    
    @IBAction func play(_ sender: UIButton) {
        
        let url = Bundle.main.url(forResource: "music", withExtension: "m4a")!
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
        }
        catch{
            print(error)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //调用
        updateDiceImages()
        
    }
    
    func updateDiceImages() {
        
        index1 = Int.random(in: 1...6)
        index2 = Int.random(in: 1...6)
        index3 = Int.random(in: 1...6)
        index4 = Int.random(in: 1...6)
        index5 = Int.random(in: 1...6)
        index6 = Int.random(in: 1...6)
        
        //        index1 = Int.random(in: 0...5)
        //        index2 = Int.random(in: 0...5)
        //        index3 = Int.random(in: 0...5)
        //        index4 = Int.random(in: 0...5)
        //        index5 = Int.random(in: 0...5)
        //        index6 = Int.random(in: 0...5)
        
        //字符串插值 “xxx\(xxx)” 或者是数组直接嵌套
        diceImageView1.image = UIImage(named: "dice\(index1)")
        diceImageView2.image = UIImage(named: "dice\(index2)")
        diceImageView3.image = UIImage(named: "dice\(index3)")
        diceImageView4.image = UIImage(named: "dice\(index4)")
        diceImageView5.image = UIImage(named: "dice\(index5)")
        diceImageView6.image = UIImage(named: "dice\(index6)")
        
        //        diceImageView1.image = UIImage(named: DiceArr[index1])
        //        diceImageView2.image = UIImage(named: DiceArr[index2])
        //        diceImageView3.image = UIImage(named: DiceArr[index3])
        //        diceImageView4.image = UIImage(named: DcieArr[index4])
        //        diceImageView5.image = UIImage(named: DiceArr[index5])
        //        diceImageView6.image = UIImage(named: DcieArr[index6])
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        
        let url = Bundle.main.url(forResource: "music", withExtension: "m4a")!

        do
        {
            player = try AVAudioPlayer(contentsOf: url)
            player.play()
        }
        catch
        {
            print(error)
        }
        updateDiceImages()
    }
    
}


