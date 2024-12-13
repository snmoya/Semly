//
//  WorkoutListView.swift
//  Semly
//
//  Created by Sebastian Moya on 13/12/2024.
//

import SwiftUI

struct WorkoutListView: View {
    @State private var workouts = ["Shoulders & Arms", "Legs", "Chest & Back"]
    @State private var showingNewWorkout = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                List(workouts, id: \.self) { workout in
                    NavigationLink(destination: WorkoutDetailView(workoutName: workout)) {
                        Text(workout)
                    }
                }
                
                Button(action: {
                    showingNewWorkout = true
                }) {
                    Text("Create New Workout")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .sheet(isPresented: $showingNewWorkout) {
                    NewWorkoutView()
                }
            }
            .navigationTitle("Workouts")
        }
    }
}
