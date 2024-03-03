//
//  ShoeData.swift
//  2nd Street
//
//  Created by Praval Gautam on 01/03/24.
//

import Foundation

struct ShoeInfo :  Identifiable {
    var id =  UUID()
        var  image: String
        var shoeName: String
        var shoePrice: Int
        var shoeQuantity: Int
        var shoeSize: Int
        var shoeColor: String
    }


var shoeArray: [ShoeInfo] = [
    ShoeInfo(image: "shoe1", shoeName: "Nike Air Max", shoePrice: 16000, shoeQuantity: 5, shoeSize: 9, shoeColor: "Blue"),
    ShoeInfo(image: "shoe2", shoeName: "Nike React Element", shoePrice: 130000, shoeQuantity: 3, shoeSize: 10, shoeColor: "Black"),
    ShoeInfo(image: "shoe3", shoeName: "Nike Air Force 1", shoePrice: 110000, shoeQuantity: 7, shoeSize: 8, shoeColor: "White"),
    ShoeInfo(image: "shoe4", shoeName: "Nike Zoom Pegasus", shoePrice: 160000, shoeQuantity: 4, shoeSize: 9, shoeColor: "Red"),
    ShoeInfo(image: "shoe5", shoeName: "Nike Free RN", shoePrice: 120000, shoeQuantity: 2, shoeSize: 7, shoeColor: "Grey"),
    ShoeInfo(image: "shoe6", shoeName: "Nike Blazer", shoePrice: 1000000, shoeQuantity: 6, shoeSize: 8, shoeColor: "Green"),
    ShoeInfo(image: "shoe7", shoeName: "Nike Joyride Run", shoePrice: 1800000, shoeQuantity: 8, shoeSize: 10, shoeColor: "Blue"),
    ShoeInfo(image: "shoe8", shoeName: "Nike VaporMax", shoePrice: 220000, shoeQuantity: 9, shoeSize: 7, shoeColor: "Black"),
    ShoeInfo(image: "shoe9", shoeName: "Nike SB Dunk", shoePrice: 120000, shoeQuantity: 3, shoeSize: 9, shoeColor: "Red"),
    ShoeInfo(image: "shoe10", shoeName: "Nike Air Max 270", shoePrice: 1800000, shoeQuantity: 5, shoeSize: 8, shoeColor: "Blue"),
    ShoeInfo(image: "shoe11", shoeName: "Nike Roshe One", shoePrice: 800000, shoeQuantity: 10, shoeSize: 7, shoeColor: "Grey"),
    ShoeInfo(image: "shoe12", shoeName: "Nike Shox", shoePrice: 1500000, shoeQuantity: 6, shoeSize: 10, shoeColor: "Black"),
    ShoeInfo(image: "shoe13", shoeName: "Nike Air Max 90", shoePrice: 16000, shoeQuantity: 4, shoeSize: 8, shoeColor: "White"),
    ShoeInfo(image: "shoe14", shoeName: "Nike Air Max 97", shoePrice: 20000, shoeQuantity: 7, shoeSize: 9, shoeColor: "Red"),
    ShoeInfo(image: "shoe15", shoeName: "Nike Flyknit Racer", shoePrice: 180000, shoeQuantity: 5, shoeSize: 10, shoeColor: "Blue")
]

var newArrivals: [ShoeInfo] = [
    ShoeInfo(image: "shoe1", shoeName: "Nike Roshe One", shoePrice: 800000, shoeQuantity: 10, shoeSize: 8, shoeColor: "Red"),
    ShoeInfo(image: "shoe12", shoeName: "Nike Shox", shoePrice: 1500000, shoeQuantity: 6, shoeSize: 9, shoeColor: "Green"),
    ShoeInfo(image: "shoe13", shoeName: "Nike Air Max 90", shoePrice: 16000, shoeQuantity: 4, shoeSize: 7, shoeColor: "Grey"),
    ShoeInfo(image: "shoe14", shoeName: "Nike Air Max 97", shoePrice: 20000, shoeQuantity: 7, shoeSize: 8, shoeColor: "White"),
    ShoeInfo(image: "shoe15", shoeName: "Nike Flyknit Racer", shoePrice: 180000, shoeQuantity: 5, shoeSize: 10, shoeColor: "Blue")
]

var trending: [ShoeInfo] = [
    ShoeInfo(image: "shoe9", shoeName: "Nike SB Dunk", shoePrice: 120000, shoeQuantity: 3, shoeSize: 10, shoeColor: "Black"),
    ShoeInfo(image: "shoe10", shoeName: "Nike Air Max 270", shoePrice: 1800000, shoeQuantity: 5, shoeSize: 8, shoeColor: "Blue"),
    ShoeInfo(image: "shoe11", shoeName: "Nike Roshe One", shoePrice: 800000, shoeQuantity: 10, shoeSize: 7, shoeColor: "Grey"),
    ShoeInfo(image: "shoe12", shoeName: "Nike Shox", shoePrice: 1500000, shoeQuantity: 6, shoeSize: 9, shoeColor: "Green"),
    ShoeInfo(image: "shoe13", shoeName: "Nike Air Max 90", shoePrice: 16000, shoeQuantity: 4, shoeSize: 8, shoeColor: "White")
]
