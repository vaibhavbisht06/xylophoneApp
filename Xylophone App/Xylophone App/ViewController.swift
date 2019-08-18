//
//  ViewController.swift
//  Xylophone App
//
//  Created by Vaibhav Bisht on 06/08/19.
//  Copyright © 2019 Coding Blocks. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var Player : AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)
        
        _ = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        do{
            Player = try AVAudioPlayer(contentsOf: <#T##URL#>)
            guard let player = Player else {
                return
            }
            player.prepareToPlay()
            player.play()
        }catch let error as Error{
            print(error.discription)
        }
        
    }
}

