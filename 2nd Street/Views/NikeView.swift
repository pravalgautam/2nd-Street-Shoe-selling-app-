//
//  NikeView.swift
//  Sneaker Head
//
//  Created by Praval Gautam on 29/02/24.
//

import SwiftUI

struct NikeView: View {
    @EnvironmentObject var cartManager :  CartManager
    var body: some View {
        
        ZStack{
            Color.white
            VStack{
                ScrollView(showsIndicators:false){
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 140))], content: {
                        ForEach(shoeArray){
                            i in
                            NavigationLink(destination: AddtoCart(shoeData: i).environmentObject(cartManager)) {
                                nikeCard(shoeData: i)
                            }
                        }
                    })
                }
            }
        }
        .navigationTitle("Nike")
        .navigationBarTitleDisplayMode(.automatic)
      
    }
    
}

#Preview {
    NikeView()

}

struct nikeCard  : View {
    var shoeData : ShoeInfo
    var body: some View {
        ZStack{
            Color.white
            VStack{
                ZStack{
                    Color.color2
                    Image(shoeData.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200,height: 200)
                    
                }    .frame(width: 170,height: 150)
                    .cornerRadius(20)
                    .padding()
                HStack{
                    VStack(alignment: .leading){
                        Text(shoeData.shoeName)
                            .font(.system(size: 15))
                            .bold()
                        Text("Rs \(shoeData.shoePrice)")
                            .bold()
                    }                  .foregroundStyle(.black)
                    Spacer()
                   
                     
                            
                        HStack{
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            Text("\(2)")
                                .foregroundStyle(.black)
                        
                    }
                   
                }.padding()
                Spacer()
            }
            
        }  .frame(width: 180,height: 270)
         
    }
}
