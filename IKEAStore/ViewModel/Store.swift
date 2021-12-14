//
//  Shop.swift
//  IKEAStore
//
//  Created by Josipa Puljko
//

import Foundation

class Store: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
