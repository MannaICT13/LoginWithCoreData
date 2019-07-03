//
//  ViewController.swift
//  LoginWithCoreData
//
//  Created by USER on 1/26/19.
//  Copyright © 2019 mCubes. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    @IBAction func loginAction(_ sender: Any) {
        
        
        

        let delegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = delegate.persistentContainer.viewContext
        
      let request = NSFetchRequest<NSManagedObject>(entityName: "Student")
        
       request.returnsObjectsAsFaults = false
     
        do{
            let results = try context.fetch(request)
            
            for result in results {
                
                 let useremail = result.value(forKey: "email")  as? String
                 let userpassword =  result.value(forKey: "password") as? String
                    
                    if(txtEmail.text == useremail && txtPassword.text ==  userpassword){
                        
                         performSegue(withIdentifier: "registerVC", sender: self)
                    }
                   
                    
                
                
               
            }
            
            
            
        }catch{
            print("Sorry Not Working......")
        }
        
        
        
        
      
    }
    
    
    
    @IBAction func registerAction(_ sender: Any) {
        
        performSegue(withIdentifier: "registerVC", sender: self)
    }
    
    
    
    
}



















