//
//  CheckOutCard.swift
//  2nd Street
//
//  Created by Praval Gautam on 01/03/24.
//

import SwiftUI

struct CheckOutCard: View {
    @EnvironmentObject var cartManager :  CartManager
        var body: some View {
            ZStack {
                VStack{
                        Button(action: {
               
                        }, label: {
                            HStack{
                                Text("My Coupons")
                                    .foregroundStyle(.gray)
                                    
                                    .padding()
                                Spacer()
                                ZStack{
                                    Circle()
                                        .fill(Color.color1)
                                        .frame(width: 50,height: 50)
                                    Image(systemName: "arrow.right")
                                        .foregroundColor(.white)
                                }
                       
                            
                            }
                        })
                        .frame(width: 350, height: 50)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 2)
                        )
                        .padding(20)
                        .cornerRadius(20)
                
                        VStack(alignment: .leading,spacing: 10){
                            HStack(spacing: 190) {
                                Text("Sub Total")
                                    .font(.title3)
                                    .foregroundStyle(.gray)
                                
                                Text("\(cartManager.total)")
                                    .bold()
                            }
                            
                            HStack (spacing: 200){
                                Text("Shipping")
                                    .font(.title3)
                                
                                    .foregroundStyle(.gray)
                                
                                Text("Free")
                                    .bold()
                            }
                            Divider()
                            
                            HStack (spacing: 230){
                                Text("Total")
                                    .font(.title3)
                                
                                    .foregroundStyle(.gray)
                                
                                Text("\(cartManager.total)")
                                    .bold()
                            }
                            
                        }.padding()
               PaymentButton(action: {})

                 
                       
                    } .frame(width: 385,height: 350)
                        .cornerRadius(50)
                  
                        .padding(.vertical,30)
                   
                
          
            }
            .frame(width: 400,height: 420)
              .cornerRadius(50)

         
        }
    }

#Preview {
    CheckOutCard()
}
