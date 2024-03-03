//
//  ContentView.swift
//  Sneaker Head
//
//  Created by Praval Gautam on 29/02/24.
//
import SwiftUI

struct ContentView: View {
    @State  var selectedTab = 0
  
    var body: some View {
        VStack {
            ZStack {
                switch selectedTab {
                case 0:
                    CollectionView()
                case 1:
                    CartView()
                case 2:
                    AccountView()
                default:
                    EmptyView()
                }
                VStack(spacing: 0) {
  Spacer()
                    TabBar(selectedTab: $selectedTab)
                 
                        .background(Color.color1)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                }.padding(6)
        
            }


           
        }
        .edgesIgnoringSafeArea(.bottom)
       
    }
}




#Preview {
    ContentView()
}
