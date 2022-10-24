//
//  DataController.swift
//  CoreDataTemplate
//
//  Created by Dmytro Ivanenko on 22.10.2022.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "CoreDataModel")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Cor Data faild to load: \(error.localizedDescription)")
            }
        }
    }
}
