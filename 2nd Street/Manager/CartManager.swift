//
//  CartManager.swift
//  2nd Street
//
//  Created by Praval Gautam on 01/03/24.
//

import Foundation

class CartManager: ObservableObject{
    
    @Published private(set) var itemsArray: [ShoeInfo] = []
    @Published private(set) var total: Int = 0
    func addToCart(item: ShoeInfo){
        itemsArray.append(item)
        total += item.shoePrice
    }
    func removeItem(item: ShoeInfo){
        itemsArray  = itemsArray.filter{
            $0.id != item.id
        }
        total -= item.shoePrice
    }
}
