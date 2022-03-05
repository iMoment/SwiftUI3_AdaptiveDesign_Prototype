//
//  HomeView.swift
//  ResponsiveUI
//
//  Created by Stanley Pan on 2022/03/04.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        ResponsiveView { properties in
            Text(properties.isLandscape ? "Landscape" : "Portrait")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
