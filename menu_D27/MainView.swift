//
//  ContentView.swift
//  menu_D27
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/17.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            MenuView()
                .tabItem {
                    Image(systemName: "menucard.fill")
                        .foregroundColor(.brown)
                    Text("Menu")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            GalleryView()
                .tabItem {
                    Image(systemName: "photo.stack")
                        .foregroundColor(.brown)
                    Text("Gallery")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
        }
    }
}

#Preview {
    MainView()
}
