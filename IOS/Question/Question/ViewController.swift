//
//  ViewController.swift
//  Question
//
//  Created by 郝义鹏 on 2022/10/1.
//

import UIKit



class ViewController: UIViewController {

    var index = 0
    var scorenumber = 0
    var pass = 0
    

    
    @IBOutlet weak var QuestionLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        QuestionLable.text = Questions[index].text
    }

    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var progress: UILabel!
    
    
    @IBOutlet weak var progressBar: NSLayoutConstraint!
    @IBAction func answerPassed(_ sender:UIButton){
        
        index = index+1
        
        checkAnswer(sender.tag)
        
        nextquestion()
        
        pass = pass + 1
        
        updateprogress()
        
    }
    func updateprogress(){
        progress.text = "\(pass) / 13"
        progressBar.constant = (view.frame.width/13)*CGFloat(pass)
    }
    
    func updatequestion(){
        QuestionLable.text = Questions[index].text
    }
    
    func updatescore(){
        score.text  = "总得分：\(scorenumber)"
    }
    func checkAnswer(_ tag:Int){
        if tag == 1
        {
            if Questions[pass].answer
                
            {
                print("回答正确")
                ProgressHUD.showSuccess("答对了")
                scorenumber = scorenumber + 1
                updatescore()
            }
            else
            {
                print("回答错误")
                ProgressHUD.showError("答错了")
            }
        }
        else
        {
            if Questions[pass].answer
            {
                print("回答错误")
                ProgressHUD.showError("答错了")
            }
            else
            {
                print("回答正确")
                ProgressHUD.showSuccess("答对了")
                scorenumber = scorenumber + 1
                updatescore()
                
                
            }
        }
        
    }
    
    func nextquestion(){
        
        if index <= 12
        {
            
            updatequestion()
             
        }
        else{
            
            pass=0
        
            index = 0
            
            scorenumber = 0
        
            
            let alert = UIAlertController(title: "OK", message: "你已经全部完成，需要再来一次吗", preferredStyle: .alert)
            let action1 = UIAlertAction(title: "是", style: .default, handler: { _ in self.updatequestion()
               self.updatescore()

            })
            
            let action2 = UIAlertAction(title: "否", style: .default,handler:  { _ in
            })
            alert.addAction(action1)
            alert.addAction(action2)
        
            self.present(alert,animated: true,completion: nil)
        }
        
        
    
    }
    
   
    
}




