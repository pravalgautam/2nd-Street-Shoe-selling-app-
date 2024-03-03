//
//  MyCartCard.swift
//  2nd Street
//
//  Created by Praval Gautam on 01/03/24.
//

import SwiftUI
struct MyCartCard: View{
    @EnvironmentObject var cartManager : CartManager
    var shoeData: ShoeInfo
   @State var quantity : Int = 1

    var body: some View{
        ZStack{
            Color.color
            
          
                HStack{
         
                    Image(shoeData.image)
                        .resizable()
                        .frame(width: 120,height: 120)
                    VStack(alignment: .leading){
                        Text("\(shoeData.shoeName)")
                            .font(.title2)
                        HStack {
                            Text("Color: blue")
                            
                            
                            Text("\(shoeData.shoeSize)")
                        }           .font(.caption)
                        HStack{
                            Button(action: {
                                self.quantity = max(0, self.quantity - 1)
                            }, label: {
                                Image(systemName: "minus")
                                    .foregroundColor(.black)
                            })
                            .frame(width: 30,height: 30)
                            
                            .background()
                            .cornerRadius(5)
                            Text("\(quantity)")
                
                            Button(action: {
                                self.quantity = max(0, self.quantity + 1)
                            }, label: {
                                Image(systemName: "plus")
                                    .foregroundColor(.black)
                            })
                            .frame(width: 30,height: 30)
                            
                            .background()
                            .cornerRadius(5)
                        }
                        
                    }
                    VStack{
                        Button(action: {
                            cartManager.removeItem(item: shoeData)
                        }, label: {
                            Image(systemName: "trash")
                                .foregroundColor(.black)
                        })
                        .frame(width: 40,height: 40)
                        .cornerRadius(5)
                        Spacer()
                        Text("\(2)")
                            .foregroundStyle(.black)
                            .font(.subheadline)
                        
                    }.padding(.vertical,30)
                    Spacer()
                }
                
                
            
            
        }.frame(width: 350,height: 150)
            .cornerRadius(30)
        
    }
}

#Preview {
    MyCartCard(shoeData: newArrivals[0])
   
    
}

