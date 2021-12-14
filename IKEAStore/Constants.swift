//
//  Constants.swift
//  IKEAStore
//
//  Created by Josipa Puljko
//

import Foundation
import SwiftUI

let grayColor: Color = Color(UIColor.systemGray4)

let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let livingrooms: [Livingroom] = Bundle.main.decode("livingroom.json")
let sampleProduct: Product = products[0]

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
