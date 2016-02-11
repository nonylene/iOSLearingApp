//
//  ViewController.swift
//  nonyapp
//
//  Created by nonylene on 2/10/16.
//  Copyright © 2016 nonylene. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func setLabelText(sender: AnyObject) {
        firstLabel.text = nameTextField.text
    }
}