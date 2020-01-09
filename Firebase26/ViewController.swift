//
//  ViewController.swift
//  Firebase26
//
//  Created by Nikunj Prajapati on 26/12/19.
//  Copyright © 2019 Nikunj Prajapati. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    var ref: DatabaseReference!


    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var name: UITextField!
    @IBAction func Savebtn(_ sender: Any)
    {
        
        self.ref.child("users").childByAutoId().setValue(["email": Email.text,"Name":name.text])
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()

        // Do any additional setup after loading the view.
    }


}

