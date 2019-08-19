//
//  ThirdViewController.swift
//  BuggyApp
//
//  Created by Teerawat Vanasapdamrong on 28/6/19.
//  Copyright © 2019 scbeasy. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var SubmitBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didSubmit(_ sender: Any) {
        let name = nameTextField.text!
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "greeting") as! RegisterController
        vc.name = name
        
        navigationController?.pushViewController(vc, animated: true)
    }
}
