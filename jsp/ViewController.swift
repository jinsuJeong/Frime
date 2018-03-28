//
//  ViewController.swift
//  jsp
//
//  Created by D7703_14 on 2018. 3. 28..
//  Copyright © 2018년 Personal Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var text: UITextField!
    @IBOutlet var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func button(_ sender: Any) {
        let number = Int(text.text!)
        var a = true
        if number! == 1{
            a = false
        }
        if number != 1 && number != 2 {
            for i  in 2 ..< number! {
                if number! % i == 0 {
                    a = false
                }
            }
            }
        if a == true{
            label.text = "prine number"
        }else{
            label.text = "Not prine number"
        }
    }
    
    
    @IBAction func button2(_ sender: Any) {
        text.text = ""
        label.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        text.resignFirstResponder();
        return true
    }

}

