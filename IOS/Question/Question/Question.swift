//
//  Question.swift
//  Question
//
//  Created by 郝义鹏 on 2022/10/2.
//

import Foundation

class Question{
    var text : String 
    var answer : Bool
    init(text: String, answer: Bool) {
        self.text = text
        self.answer = answer
    }
}

let Questions = [
    Question(text: "0马云是中国首富", answer: false),
    Question(text: "1马云是女的", answer: false),
    Question(text: "2马云不是中国首富", answer: true),
    Question(text: "3马云是中国首富", answer: false),
    Question(text: "4马云是中国首富", answer: false),
    Question(text: "5马云是中国首富", answer: true),
    Question(text: "6马云是中国首富", answer: false),
    Question(text: "7马云是中国首富", answer: false),
    Question(text: "8马云是中国首富", answer: false),
    Question(text: "9马云是中国首富", answer: false),
    Question(text: "10马云是中国首富", answer: false),
    Question(text: "11马云是中国首富", answer: false),
    Question(text: "12马云是中国首富", answer: false)
]
