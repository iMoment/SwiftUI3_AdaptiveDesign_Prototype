//
//  HomeView.swift
//  ResponsiveUI
//
//  Created by Stanley Pan on 2022/03/04.
//

import SwiftUI

struct HomeView: View {
    @State var currentMenu: String = "Inbox"
    @State var showMenu: Bool = false
    
    var body: some View {
        ResponsiveView { properties in
//            Text(properties.isLandscape ? "Landscape" : "Portrait")
            HStack(spacing: 0) {
                if properties.isLandscape {
                    SideBar(currentMenu: $currentMenu, properties: properties)
                }
                
                // MARK: Main View
                MainView(properties: properties)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay {
                ZStack(alignment: .leading) {
                    if !properties.isLandscape {
                        Color.black
                            .opacity(showMenu ? 0.25 : 0)
                            .ignoresSafeArea()
                            .onTapGesture {
                                withAnimation {
                                    showMenu.toggle()
                                }
                            }
                        
                        SideBar(currentMenu: $currentMenu, properties: properties)
                            .offset(x: showMenu ? 0 : -300)
                    }
                }
            }
        }
        .ignoresSafeArea(.container, edges: .leading)
    }
    
    // MARK: Main View
    @ViewBuilder
    func MainView(properties: Properties) -> some View {
        VStack(spacing: 0) {
            // MARK: Search Bar
            HStack(spacing: 12) {
                Button {
                    withAnimation {
                        showMenu.toggle()
                    }
                } label: {
                    Image(systemName: "line.3.horizontal")
                        .font(.title3)
                        .foregroundColor(Color.black)
                }
                
                TextField("Search", text: .constant(""))
                
                Image(systemName: "magnifyingglass")
            }
            .padding(.horizontal)
            .padding(.vertical, 12)
            .background {
                RoundedRectangle(cornerRadius: 6, style: .continuous)
                    .fill(Color.white)
            }
        }
        .padding()
        .frame(maxHeight: .infinity, alignment: .top)
        .background {
            Color("background")
                .ignoresSafeArea()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
