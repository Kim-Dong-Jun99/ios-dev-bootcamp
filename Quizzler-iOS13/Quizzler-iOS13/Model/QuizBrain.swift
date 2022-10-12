//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by 김동준 on 2022/10/12.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    let quiz = [Question(q: "A slug's blood is green.",a: "True"),
                Question(q: "Approximately one quarter of human bones are in the feet.",a:"True"),
                Question (q: "The total surface area of two human lungs is approximately 70 squaremetres.", a: "True"),
                Question(q: "In West Virginia, USA, if you accidentally hit an animal with yourcar, you are free to take it home to eat.", a: "True"),
                Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                Question(q: "Google was originally called 'Backrub'.", a: "True"),
                Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                Question (q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                Question(q: "No piece of square dry paper can be folded in half more than 7times.", a: "False"),
                Question (q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")]
    var index = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer:String ) -> Bool{
        // 외부 파라미터 명, 내부 파라미터 명을 구분지어서 사용하고 있다. 외부 파라미터 명을 없이 지정하고 싶을때는 _ 를 사용하면된다
        if (userAnswer == quiz[index].answer){
            score += 100 * 1 / quiz.count
            return true
        }else{
            return false
        }
    }
    
    func getQuestion()->String{
        return quiz[index].text
    }
    
    func getProgress()->Float{
        return Float(index+1) / Float(quiz.count)
    }
    
    func getQuizSize()->Int{
        return quiz.count
    }
    
    mutating func nextQuestion(){
        if (index <= quiz.count){
            index += 1
        }else {
            print("index is out of range")
            index = 0
        }
    }
    
    func getScore() -> Int{
        return score
    }
}
