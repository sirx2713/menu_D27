//
//  SheetView.swift
//  menu_D27
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/17.
//

import SwiftUI

struct SheetView: View {
    
    @Binding var sheetVisible: Bool
    @Binding var selectedImage: String
    
    var body: some View {
        ZStack{
            Image(selectedImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        sheetVisible = false
                    }, label: {
                        Image(systemName: "arrow.down.left.circle.fill")
                            .foregroundColor(.brown)
                            .scaleEffect(2)
                            .padding()
                    })
                }
                Spacer()
            }
        }
    }
}

#Preview {
    SheetView(sheetVisible: Binding.constant(true), selectedImage: Binding.constant("gallery1"))
}
