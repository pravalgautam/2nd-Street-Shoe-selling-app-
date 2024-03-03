//
//  NewArrivalCard.swift
//  2nd Street
//
//  Created by Praval Gautam on 01/03/24.
//

import SwiftUI

struct NewArrivalCard: View {
 
    var shoeData: ShoeInfo
    
    var body: some View {
        ZStack {
            Color.white
            VStack {
                ZStack {
                    Color.color2
                    Image(shoeData.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                }
                .frame(width: 240, height: 200)
                .cornerRadius(20)
                .padding()
                HStack {
                    VStack(alignment: .leading) {
                        Text(shoeData.shoeName)
                            .font(.title2)
                        Text("\(shoeData.shoePrice)")
                    }
                    .foregroundStyle(.black)
                    Spacer()
                    ZStack {
                        Circle()
                            .fill(Color.color2)
                            .frame(width: 50, height: 50)
                        Image(systemName: "lock")
                            .foregroundColor(Color.color1)
                    }
                }
                .padding()
                Spacer()
            }
        }
        .frame(width: 280, height: 320)
        .cornerRadius(20)
    }
}

#Preview {
    NewArrivalCard(shoeData: newArrivals[0])
      
}
