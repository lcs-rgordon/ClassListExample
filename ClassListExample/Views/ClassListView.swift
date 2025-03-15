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
            }
            .navigationTitle("Class List")
        }
    }

}

#Preview {
    ClassListView()
}
