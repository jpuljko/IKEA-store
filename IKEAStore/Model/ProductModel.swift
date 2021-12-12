//
//  ProductModel.swift
//  IKEAStore
//
//  Created by Josipa Puljko
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
}
