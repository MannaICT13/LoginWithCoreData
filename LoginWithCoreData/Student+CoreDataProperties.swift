//
//  Student+CoreDataProperties.swift
//  LoginWithCoreData
//
//  Created by USER on 1/26/19.
//  Copyright © 2019 mCubes. All rights reserved.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var name: String?
    @NSManaged public var dept: String?
    @NSManaged public var city: String?
    @NSManaged public var email: String?
    @NSManaged public var password: String?

}
