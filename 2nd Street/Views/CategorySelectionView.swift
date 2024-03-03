//
//  CategorySelectionView.swift
//  Sneaker Head
//
//  Created by Praval Gautam on 29/02/24.
//

import SwiftUI




struct CategorySelectionView: View {
    @Binding var selectedTab: Int?

    @EnvironmentObject var cartManager :  CartManager
    var body: some View {
        HStack{
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
  
                    categoryBarItem(brand: "Nike", tabNumber: 0, destination: NikeView().environmentObject(cartManager), selectedTab: $selectedTab)
                    categoryBarItem(brand: "Addidas", tabNumber: 0, destination: NikeView().environmentObject(cartManager), selectedTab: $selectedTab)
                    categoryBarItem(brand: "Puma", tabNumber: 0, destination: NikeView().environmentObject(cartManager), selectedTab: $selectedTab)
                    
                }
            }
        }
    }
}

struct categoryBarItem<Destination: View>: View {
    var brand: String
    let tabNumber: Int
    var destination: Destination
    @Binding var selectedTab: Int?

    var body: some View {
        
        NavigationLink(destination: destination.frame(maxWidth: .infinity, maxHeight: .infinity),
                       tag: tabNumber,
                       selection: $selectedTab) {
            Text(brand)
                .foregroundColor(.white)
                .padding()
        }
        .frame(width: 120, height: 50)
        .background(Color.color1)
        .cornerRadius(30)
    }
}

