//
//  RegisterViewController.swift
//  LoginWithCoreData
//
//  Created by USER on 1/26/19.
//  Copyright © 2019 mCubes. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var nametxt: UITextField!
    
    @IBOutlet weak var depttxt: UITextField!
    
    @IBOutlet weak var citytxt: UITextField!
    
    @IBOutlet weak var emailtxt: UITextField!
    
    @IBOutlet weak var passwordtxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func saveAction(_ sender: Any) {
        
        
        let dic = ["nametxt":nametxt.text,"depttxt":depttxt.text,"citytxt":citytxt.text,"emailtxt":emailtxt.text,"passwordtxt":passwordtxt.text]
        
        DatabaseHandler.insance.saveStudentData(object: dic as! [String:String])
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


}
