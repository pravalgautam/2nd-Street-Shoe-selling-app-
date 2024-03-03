//
//  AccountView.swift
//  2nd Street
//
//  Created by Praval Gautam on 02/03/24.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .padding()

                Text("Account 1")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)

                Text("account1@example.com")
                    .foregroundColor(.gray)
                    .padding(.bottom, 30)

                Divider()
                    .padding(.vertical)

                NavigationLink(destination: OrderHistoryView()) {
                    HStack {
                        Image(systemName: "bag")
                        Text("Order History")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding()
                        Spacer()
                        Image(systemName: "chevron.right")
                    }.padding()
                }

                Spacer()

            }
            .navigationBarTitle("Account")
        }
    }
}

struct OrderHistoryView: View {
    var body: some View {
        Text("Order History View")
            .navigationBarTitle("Order History")
    }
}

#Preview {
    AccountView()
}
