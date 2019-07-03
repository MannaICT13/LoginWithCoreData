//
//  DatabaseHandler.swift
//  LoginWithCoreData
//
//  Created by USER on 1/26/19.
//  Copyright © 2019 mCubes. All rights reserved.
//

import Foundation
import CoreData
import UIKit

public class DatabaseHandler{
    
    static var insance  = DatabaseHandler()
    
    

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    
    
    func saveStudentData(object:[String:String]){
        
       
    let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context) as! Student
        
        student.name = object["nametxt"]
        student.dept = object["depttxt"]
        student.city = object["citytxt"]
        student.email = object["emailtxt"]
        student.password = object["passwordtxt"]
        
        do{
            try context.save()
        }catch{
            
            print("Can not Save Student Information.............")
        }
       
        
        
        
        
        
    }
    
    func getStudentData() -> [Student]{
        
        var student = [Student]()
        
      let  fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Student")
        
        do{
           student =  try context.fetch(fetchRequest) as! [Student]
        }catch{
            
            print("Can not get Data ........")
        }
        
        return student
        
    }
    
    
    
    
    
}














