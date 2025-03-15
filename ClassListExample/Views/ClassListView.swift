//
//  ClassListView.swift
//  ClassListExample
//
//  Created by Russell Gordon on 2025-03-15.
//

import SwiftUI

// MODEL
struct Student: Identifiable {
    
    // MARK: Stored properties
    let id: Int
    let name: String
    
}

// VIEW
struct ClassListView: View {
    
    // MARK: Stored properties
    @State var students: [Student] = [
        
        Student(id: 1, name: "Alice"),
        Student(id: 2, name: "Bob"),
        Student(id: 3, name: "Charlie"),
        Student(id: 4, name: "Daniela"),
        Student(id: 5, name: "Bob"),
        
    ]
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            List(students) { currentStudent in
                Text(currentStudent.name)
                    .swipeActions {
                        Button("Delete") {
                            withAnimation {
                                delete(providedStudent: currentStudent)
                            }
                        }
                        .tint(.red)
                    }
            }
            .navigationTitle("Class List")
        }
    }
    
    // MARK: Function(s)
    func delete(providedStudent: Student) {
        
        // Iterate over the elements of the array and find the student to delete
        for i in 0...students.count - 1 {
            if students[i].id == providedStudent.id {
                
                // Remove the current student
                students.remove(at: i)
                
                // Exit the loop (don't delete any more students)
                break
            }
        }
        
    }

}

#Preview {
    ClassListView()
}
