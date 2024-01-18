//
//  HomeView.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 18/01/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Text("Home View")
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
