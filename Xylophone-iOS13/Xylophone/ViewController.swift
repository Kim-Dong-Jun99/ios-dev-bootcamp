//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        print("iampressed")
        print(sender.currentTitle)
        // 그냥 sender.currentTitle을 넘기면 오류가 발생한다
        // 왜? sender.currentTitle은 옵셔널이기에 그렇다. UIButton에 타이틀이 없을 수도 있기에, 옵셔널로 한번 감싸준 것 같다. 그렇기에
        // !로 옵셔널을 해제해준 것 같다.
        playSound(button: sender.currentTitle!)
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5
                
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
    }
    
    func playSound(button:String) {
        let url = Bundle.main.url(forResource: button, withExtension: "wav")

        player = try! AVAudioPlayer(contentsOf: url!)
        
        player.play()
    }
    
}

