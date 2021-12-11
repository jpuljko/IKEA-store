//
//  Constants.swift
//  IKEAStore
//
//  Created by Josipa Puljko on 11.12.2021..
//

import Foundation
import SwiftUI

let bgColor: Color = Color("ColorBackground")
let grayColor: Color = Color(UIColor.systemGray4)

let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
