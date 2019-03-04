//
//  ViewController.swift
//  Starter App
//
//  Created by Will Saults on 3/3/19.
//  Copyright © 2019 Will Saults. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateLabel(text: String) -> String {
        return text
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        label.text = input.text
    }
}

