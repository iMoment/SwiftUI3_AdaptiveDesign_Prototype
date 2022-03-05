//
//  HomeView.swift
//  ResponsiveUI
//
//  Created by Stanley Pan on 2022/03/04.
//

import SwiftUI

struct HomeView: View {
    @State var currentMenu: String = "Inbox"
    
    var body: some View {
        ResponsiveView { properties in
//            Text(properties.isLandscape ? "Landscape" : "Portrait")
            HStack(spacing: 0) {
                SideBar(currentMenu: $currentMenu, properties: properties)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
