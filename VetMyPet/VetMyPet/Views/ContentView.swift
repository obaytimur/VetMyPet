//
//  ContentView.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 18/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tabs = .Home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    HomeView()
                        .tag(Tabs.Home)
                    HealthView(pets: VariableConstants.PetArray, selection: VariableConstants.PetArray.first!)
                        .tag(Tabs.Health)
                    PetsView(pets: VariableConstants.PetArray)
                        .tag(Tabs.Pets)
                }
            }
            VStack {
                Spacer()
                TabBar(selectedTab: $selectedTab)
            }
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
