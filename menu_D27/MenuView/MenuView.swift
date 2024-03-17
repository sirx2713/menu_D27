//
//  MenuView.swift
//  menu_D27
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/17.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem]()
    
    var dataService = MenuData()
    
    var body: some View {
        
        List(menuItems){item in
            HStack {
                Image(item.imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
                .cornerRadius(10)
                Text(item.name)
                    .bold()
                Spacer()
                Text("$" + item.price)

            }
            .listRowBackground(
                Color(.brown)
                    .opacity(0.1))
            
        }
        .listStyle(.plain)
        .onAppear(perform: {
            menuItems = dataService.getdata()
        })
    }
}

#Preview {
    MenuView()
}
