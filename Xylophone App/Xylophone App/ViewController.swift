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
    
    var xylophoneSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note1", ofType: "wav")!)
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)
    }
}

