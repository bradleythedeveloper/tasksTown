//
//  DashboardView.swift
//  tasksTown
//
//  Created by Bradley Austin on 25/09/2024.
//

import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var dataStore: DataStore
    @State private var currentDate = Date()
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 250))]) {
                    TimeInAppWidget()
                    TasksInAppWidget()
                    SpotifyInAppWidget()
                    //FocusWidget()
                    
                }
                .padding(.horizontal)
            }
            .navigationTitle("Dashboard")
        }
    }
}

#Preview {
    DashboardView()
        .environmentObject(DataStore())
}
