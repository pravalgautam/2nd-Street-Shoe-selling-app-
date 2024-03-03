//
//  CartView.swift
//  2nd Street
//
//  Created by Praval Gautam on 01/03/24.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager

    var body: some View {



 
            ScrollView {
                HStack{
                    Text("Cart")
                        .font(.title)
                        .foregroundStyle(.black)
                    Spacer()
                }.padding(.horizontal,10)
                if cartManager.itemsArray.count > 0 {
                    ForEach(cartManager.itemsArray, id: \.id) { item in
                        MyCartCard(shoeData: item)
                            .environmentObject(cartManager)
                    }
                } else {
                    Text("Cart is empty")
                }
                CheckOutCard()

            
        }
    
        .background(.white)
    }
}

#Preview {
    CartView()
}
