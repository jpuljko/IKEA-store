//
//  AddToCartDetailView.swift
//  IKEAStore
//
//  Created by Josipa Puljko on 12.12.2021..
//

import SwiftUI

struct AddToCartDetailView: View {
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("ADD TO CART")
                .foregroundColor(.white)
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
            Spacer()
        })
            .padding(15)
            .background(Color.gray.clipShape(Capsule()))
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
