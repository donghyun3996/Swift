//
//  Entity+CoreDataProperties.swift
//  crudProject
//
//  Created by GSM07 on 2021/07/17.
//
//

import Foundation
import CoreData


extension Entity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
        return NSFetchRequest<Entity>(entityName: "Entity")
    }

    @NSManaged public var closeName: String?
    @NSManaged public var photo: Data?

}

extension Entity : Identifiable {

}
