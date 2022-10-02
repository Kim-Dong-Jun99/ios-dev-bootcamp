//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    let eggTimes = ["Soft":300,"Medium":420,"Hard":720]
    
    var secondsRemaining : Float = 60
    
    var totalTime : Float = 0
    
    var timer = Timer()
    

    @IBAction func hardnessSelected(_ sender: UIButton) {
        progressBar.progress = 1
        timer.invalidate()
        // 이 코드가 잇어야지 버튼을 변경해가면서 누를때, 타이머가 빨라지는 것을 방지할 수 있다
        
        let hardness = sender.currentTitle!
        
        secondsRemaining = Float(eggTimes[hardness]!)
        
        totalTime = Float(secondsRemaining)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer(){
        if secondsRemaining > 0{
            print("\(secondsRemaining) seconds")
            secondsRemaining -= 1
            titleLabel.text = "\(secondsRemaining) seconds"
            progressBar.progress = secondsRemaining / totalTime
            
        }else {
            timer.invalidate()
            titleLabel.text = "Done"
        }
    }
    
}
