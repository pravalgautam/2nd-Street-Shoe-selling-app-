//
//  AddToCart.swift
//  2nd Street
//
//  Created by Praval Gautam on 01/03/24.
//

import SwiftUI

struct AddtoCart: View {

    @EnvironmentObject var cartManager :  CartManager
    @Environment(\.presentationMode) var presentationMode
    var shoeData : ShoeInfo
  @State  var itemsCount : Int = 0
    var body: some View {
        VStack{
            ZStack {
                Circle()
                    .fill(Color.color2)
                    .frame(width: 320)
                
                Circle()
                    .fill(.yellow)
                    .frame(width: 270)
                Circle()
                    .fill(.green)
                    .frame(width: 200)
                Image(shoeData.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400,height: 400)
                    .padding(.leading, -30)
            }
            ZStack{
    
                VStack{
                    VStack(alignment: .leading){
                        HStack (spacing: 100){
                            Text(shoeData.shoeName)
                                .font(.title)
                                .bold()
                                .foregroundStyle(.white)
                            HStack{
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Text("4.8")
                                    .foregroundStyle(.white)
                            }
                        }
                        Text("Nike, a global athletic footwear and apparel giant, founded in 1964, is renowned for cutting-edge designs and innovations. Iconic for its swoosh logo and Just Do It slogan, Nike collaborates with top athletes, setting trends in sports and fashion, making it a dominant force in the athletic shoe industry.")
                            .font(.caption)
                            .foregroundStyle(.white)
                            .padding(.vertical,10)
                        
                     
                        
                    }
                  Spacer()
                }.padding(40)
            
                .frame(width: 400,height: 430)
                .background(Color.color1)
                .cornerRadius(50)

                VStack{
                    Spacer()
                    HStack(spacing: 50){
                        Text("Rs \(shoeData.shoePrice)")
                            .foregroundStyle(.black)
                            .bold()
                            .font(.title2)
                    

                        Button {
                            cartManager.addToCart(item: shoeData)
                            presentationMode.wrappedValue.dismiss()
                            print("done")
                        } label: {
                            Text("Add To Cart")
                            
                        }
                                           .foregroundColor(.white)
                                           .bold()
                                           .font(.title3)
                                           .frame(width: 200, height: 60)
                                           .background(Color.color1)
                                           .cornerRadius(30)
                                           .shadow(color: Color.black.opacity(0.3), radius: 20, x: 20, y: 15)
                                   
                       
                               
                               }
                               .padding(5)
                               .frame(width: 400, height: 110)
                               .background(Color.white)
                               .cornerRadius(40)

                }
            }
            }
        }
}

#Preview {
    AddtoCart(shoeData: newArrivals[3])
        .environmentObject(CartManager())

}
