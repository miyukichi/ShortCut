//
//  ViewController.swift
//  ShortCut
//
//  Created by ntt on 2018/12/09.
//  Copyright © 2018 nttresonant. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func call() {
        UIApplication.shared.open(URL(string: "telprompt://00000000000")!, completionHandler: nil)
    }
    
    @IBAction func call2() {
        UIApplication.shared.open(URL(string: "telprompt://00000000000")!, completionHandler: nil)
    }
}
