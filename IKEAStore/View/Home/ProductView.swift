//
//  ProductView.swift
//  IKEAStore
//
//  Created by Josipa Puljko
//

import SwiftUI

struct ProductView: View {
    
  let product: Product
  
  var body: some View {
    VStack(alignment: .leading, spacing: 6, content: {

        ZStack {
          Image(product.image)
            .resizable()
            .scaledToFit()
            .padding(10)
        } //: ZSTACK
        .background(Color(.white))
        .cornerRadius(12)

      Text(product.name)
        .font(.title3)
        .fontWeight(.black)

      Text("$\(product.price)")
        .fontWeight(.semibold)
        .foregroundColor(.gray)
    })
  }
}


struct ProductItemView_Previews: PreviewProvider {
  static var previews: some View {
    ProductView(product: products[0])
      .previewLayout(.fixed(width: 200, height: 300))
      .padding()
      .background(bgColor)
  }
}
