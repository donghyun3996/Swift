//
//  PersistenceManager.swift
//  crudProject
//
//  Created by GSM07 on 2021/07/17.
//

import UIkit

class PersistenceManager { static var shared: PersistenceManager = PersistenceManager() lazy var persistentContainer: NSPersistentContainer = { let container = NSPersistentContainer(name: "Entity") container.loadPersistentStores(completionHandler: { (storeDescription, error) in if let error = error as NSError? { fatalError("Unresolved error \(error), \(error.userInfo)") } }) return container }() var context: NSManagedObjectContext { return self.persistentContainer.viewContext }


