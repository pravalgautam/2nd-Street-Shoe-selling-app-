//
//  TabBarView.swift
//  2nd Street
//
//  Created by Praval Gautam on 02/03/24.
//

import SwiftUI

struct TabBarView: View {
    @State  var selectedTab = 0
  
    var body: some View {
        VStack {
            ZStack {
                switch selectedTab {
                case 0:
        CollectionView()
                case 1:
                    EmptyView()
                        
                case 3:
                    EmptyView()
                case 4:
                    EmptyView()
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
       
       
    }
}

#Preview {
    TabBarView()
}
