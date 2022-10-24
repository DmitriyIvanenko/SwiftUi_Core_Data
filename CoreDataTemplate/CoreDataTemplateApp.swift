//
//  CoreDataTemplateApp.swift
//  CoreDataTemplate
//
//  Created by Dmytro Ivanenko on 22.10.2022.
//

import SwiftUI

@main
struct CoreDataTemplateApp: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}

