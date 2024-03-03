//
//  TabBar.swift
//  Sneaker Head
//
//  Created by Praval Gautam on 29/02/24.
//

import SwiftUI

struct TabBar: View {
    @Binding var selectedTab: Int

    var body: some View {
        VStack{
            ZStack{
                HStack(spacing: 40){
                    TabBarButton(imageName: "circle.grid.2x2", tabNumber: 0, selectedTab: $selectedTab)
                    TabBarButton(imageName: "cart", tabNumber: 1, selectedTab: $selectedTab)
                    TabBarButton(imageName: "person", tabNumber: 2, selectedTab: $selectedTab)
                }
            }.frame(width: 300,height: 40)
            
            
                .padding()
                .background(Color.color1)
                .foregroundColor(.white)
                .cornerRadius(40)
        }
    }
}

struct TabBarButton: View {
   
    let imageName: String
    let tabNumber: Int
    @Binding var selectedTab: Int
    
    var body: some View {
        Button(action: {
            selectedTab = tabNumber
        }) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(8)
        }
        .background(selectedTab == tabNumber ? Color.color4 : Color.color1)
        .clipShape(Circle())
    }
}

