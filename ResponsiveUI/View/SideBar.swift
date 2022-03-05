//
//  SideBar.swift
//  ResponsiveUI
//
//  Created by Stanley Pan on 2022/03/04.
//

import SwiftUI

struct SideBar: View {
    @Binding var currentMenu: String
    var properties: Properties
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .leading, spacing: 20) {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                
                SidebarButton(icon: "tray.and.arrow.down.fill", title: "Inbox")
                
                SidebarButton(icon: "paperplane", title: "Sent")
                
                SidebarButton(icon: "doc.fill", title: "Draft")
                
                SidebarButton(icon: "trash", title: "Deleted")
            }
            .padding()
        }
    }
    
    // MARK: SideBar Buttons
    @ViewBuilder
    func SidebarButton(icon: String, title: String) -> some View {
        Button {
            currentMenu = title
        } label: {
            VStack {
                HStack(spacing: 10) {
                    Image(systemName: icon)
                        .font(.callout)
                        .foregroundColor(currentMenu == title ? Color("darkBlue") : Color.gray)
                    
                    Text(title)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(currentMenu == title ? Color.black : Color.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Divider()
            }
        }
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
