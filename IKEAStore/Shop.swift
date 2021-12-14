//
//  Shop.swift
//  IKEAStore
//
//  Created by Josipa Puljko
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product?
}
