//
//  ContentView.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 18/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tabs = .Home
    @Binding var pets: [Pet]
    @Environment(\.scenePhase) private var scenePhase
    let saveAction: ()-> Void
    
    
    
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    HomeView()
                        .tag(Tabs.Home)
                    HealthView(pets: $pets)
                        .tag(Tabs.Health)
                    PetsView(pets: $pets)
                        .tag(Tabs.Pets)
                }
            }
            VStack {
                Spacer()
                TabBar(selectedTab: $selectedTab)
            }
        }
        .onChange(of: scenePhase) {phase, otherPhase in
            if phase == .inactive { saveAction()}
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView(pets: .constant(VariableConstants.PetArray), saveAction: {})
    }
}
