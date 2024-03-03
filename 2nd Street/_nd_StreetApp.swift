//
//  _nd_StreetApp.swift
//  2nd Street
//
//  Created by Praval Gautam on 01/03/24.
//

import SwiftUI

@main
struct _nd_StreetApp: App {
    @StateObject var cartManager =  CartManager()

    var body: some Scene {
        WindowGroup {
            NavigationView{
       ContentView()
                    .environmentObject(cartManager)
                  
            }
        }
    }
}
