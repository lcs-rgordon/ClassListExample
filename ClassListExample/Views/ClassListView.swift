//
//  ClassListView.swift
//  ClassListExample
//
//  Created by Russell Gordon on 2025-03-15.
//

import SwiftUI

struct ClassListView: View {
    
    // MARK: Stored properties
    @State var students: [String] = ["Alice", "Bob", "Charlie", "Daniela", "Bob"]
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            List(students, id: \.self) { currentStudent in
                Text(currentStudent)
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
    func delete(providedStudent: String) {
        
        // Iterate over the elements of the array and find the student to delete
        for i in 0...students.count - 1 {
            if students[i] == providedStudent {
                
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
