//
//  ContentView.swift
//  CoreDataTemplate
//
//  Created by Dmytro Ivanenko on 22.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTY
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
    
    //MARK: - BODY
    
    var body: some View {
        VStack {
            List(students) { studentList in
                Text(studentList.name ?? "Unknown")
                
            }
            Button("Add New") {
                let firstName = ["Ginny", "Harry", "Hermione", "Luna", "Ron"]
                let lastName =  ["Granger", "Lovegood", "Potter", "Weasley"]
                
                let chousenFirstName = firstName.randomElement()!
                let chousenLastName = lastName.randomElement()!
                
                let studentPerson = Student(context: moc)
                studentPerson.id = UUID()
                studentPerson.name = "\(chousenFirstName) \(chousenLastName)"
                
                try? moc.save()
            }
        }
    }
}

//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
