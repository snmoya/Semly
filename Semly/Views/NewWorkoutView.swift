//
//  NewWorkoutView.swift
//  Semly
//
//  Created by Sebastian Moya on 13/12/2024.
//
import SwiftUI

struct NewWorkoutView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var workoutName = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Workout Name", text: $workoutName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Save") {
                    // Add workout saving logic here
                    presentationMode.wrappedValue.dismiss()
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .navigationTitle("New Workout")
        }
    }
}
