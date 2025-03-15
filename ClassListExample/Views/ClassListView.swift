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
            VStack(spacing: 20) {
                Text("There are \(students.count) students in the class.")
                Text("This will soon show a scrollable list of students.")
            }
            .navigationTitle("Class List")
        }
    }

}

#Preview {
    ClassListView()
}
