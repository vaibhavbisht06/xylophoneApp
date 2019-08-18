//
//  ViewController.swift
//  Xylophone App
//
//  Created by Vaibhav Bisht on 06/08/19.
//  Copyright © 2019 Coding Blocks. All rights reserved.
//

import UIKit
//import AudioToolbox
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    
    var audioPlayer : AVAudioPlayer!
    // var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var audioFiles = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        // Playing Sound for Each Different Button
        
        playSound(audioFiles[sender.tag - 1])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        let number = Int.random(in: 1...7)
        playSound(audioFiles[number - 1])
    }
    
    func playSound(_ selectedSoundFileName : String) {
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")!
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL as URL)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }
    
    
    
}
