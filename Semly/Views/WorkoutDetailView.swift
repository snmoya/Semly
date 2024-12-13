//
//  WorkoutDetailView.swift
//  Semly
//
//  Created by Sebastian Moya on 13/12/2024.
//

import SwiftUI

struct WorkoutDetailView: View {
    var workoutName: String
    
    var body: some View {
        VStack {
            Text("Workout: \(workoutName)")
                .font(.largeTitle)
                .padding()
            
            Text("Start your workout here!")
                .font(.title2)
                .padding()
            
            Spacer()
        }
        .navigationTitle("Workout Details")
    }
}
