//
//  CollectionView.swift
//  2nd Street
//
//  Created by Praval Gautam on 01/03/24.
//

import SwiftUI

struct CollectionView: View {
    @EnvironmentObject var cartManager :  CartManager
    @State private var selectedTab : Int? = nil
    var body: some View {
        ZStack{
            Color.color3
            VStack{
                ScrollView(showsIndicators: false){
                    HStack{
                        Text("Urban Stride")
                            .font(.title)
                            .foregroundStyle(.black)
                        Spacer()
                    }.padding(.horizontal,10)
                    HStack{
                        Text("New Arrivals")
                            .foregroundStyle(.black)
                            .bold()
                            .font(.title)
                        
                        Spacer()
                    }.padding(.horizontal,10)
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            CategorySelectionView(selectedTab: $selectedTab)
                        }.padding(.leading,10)
                    }.frame(width: 400,height: 60)
                    
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        
                        HStack{
                            ForEach(newArrivals){ i in
                                NavigationLink(destination: AddtoCart(shoeData: ShoeInfo( image: i.image,shoeName: i.shoeName, shoePrice: i.shoePrice,shoeQuantity: i.shoeQuantity,shoeSize: i.shoeSize,shoeColor: i.shoeColor)).environmentObject(cartManager)){
                                    NewArrivalCard(shoeData: i)
                                   
                                }
                            }
                        }
                    }
                    HStack{
                        Text("Trending")
                            .foregroundStyle(.black)
                            .bold()
                            .font(.title)
                        
                        Spacer()
                    }.padding(.horizontal,10)
                    ScrollView(.horizontal,showsIndicators: false){
                        
                        HStack{
                            ForEach(trending){ i in
                                NavigationLink(destination: AddtoCart(shoeData: ShoeInfo( image: i.image,shoeName: i.shoeName, shoePrice: i.shoePrice,shoeQuantity: i.shoeQuantity,shoeSize: i.shoeSize,shoeColor: i.shoeColor))  .environmentObject(cartManager)){
                                    NewArrivalCard(shoeData: i)
                                       
                                }
                            }
                        }
                    }
                    
                }
            }
         
        }
        .background(.white)
    }
}

#Preview {
    CollectionView()
}
