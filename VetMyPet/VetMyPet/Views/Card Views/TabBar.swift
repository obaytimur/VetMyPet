//
//  TabBar.swift
//  VetMyPet
//
//  Created by Oğulcan Baytimur on 18/01/2024.
//

import SwiftUI

struct TabBar: View {
    @Binding var selectedTab: Tabs
    private var filledImg: String {
        selectedTab.rawValue + "Fill"
    }
    var body: some View {
        VStack {
            HStack {
                ForEach(Tabs.allCases, id: \.rawValue) { tab in
                    Spacer()
                    VStack {
                        Image(selectedTab == tab ? filledImg : "\(tab)")
                            .scaleEffect(selectedTab == tab ? 1.2 : 1.0)
                        Text("\(tab.rawValue)")
                            .font(.system(size: selectedTab == tab ? 14 : 12))
                            .padding(.top, 1)
                    }
                    .onTapGesture {
                        withAnimation(.easeIn(duration: 0.1)) {
                            selectedTab = tab
                        }
                    }
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(Color(hex: 0xEEEEEE))
        }
    }
}
    
struct TabBar_Preview: PreviewProvider {
    static var previews: some View {
        TabBar(selectedTab: .constant(.Home))
    }
}
