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
                    Image(selectedTab == tab ? filledImg : "\(tab)")}
                    Spacer()
            }
            .frame(width: nil, height: 60)
            .background(Color(hex: 0xE8E8E8))
        }
    }
}
    
struct TabBar_Preview: PreviewProvider {
    static var previews: some View {
        TabBar(selectedTab: .constant(.Home))
    }
}
