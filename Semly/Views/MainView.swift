//
//  MainView.swift
//  Semly
//
//  Created by Sebastian Moya on 13/12/2024.
//
import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            WorkoutListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            HistoryView()
                .tabItem {
                    Image(systemName: "clock")
                    Text("History")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}




