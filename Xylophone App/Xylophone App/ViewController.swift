//
//  ViewController.swift
//  Xylophone App
//
//  Created by Vaibhav Bisht on 06/08/19.
//  Copyright © 2019 Coding Blocks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)
    }
}

