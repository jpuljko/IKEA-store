//
//  ProductDetailView.swift
//  IKEAStore
//
//  Created by Josipa Puljko on 12.12.2021..
//

import SwiftUI

struct ProductDetailView: View {

  
  var body: some View {
    VStack(alignment: .leading, spacing: 5, content: {
      // NAVBAR
      NavigationBarDetailView()
        .padding(.horizontal)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

      // HEADER
      HeaderDetailView()
        .padding(.horizontal)
      
      // DETAIL TOP PART
      TopDetailView()
        .padding(.horizontal)
        .zIndex(1)
      
      // DETAIL BOTTOM PART
      VStack(alignment: .center, spacing: 0, content: {
        // RATINGS + SIZES
//        RatingsSizesDetailView()
//          .padding(.top, -20)
//          .padding(.bottom, 10)
        
        // DESCRIPTION
        ScrollView(.vertical, showsIndicators: false, content: {
            Text(sampleProduct.description)
            .font(.system(.body, design: .rounded))
            .foregroundColor(.white)
            .multilineTextAlignment(.leading)
        }) //: SCROLL
        
        // QUANTITY + FAVOURITE
//        QuantityFavouriteDetailView()
//          .padding(.vertical, 10)
        
        // ADD TO CART
//        AddToCartDetailView()
//          .padding(.bottom, 20)
      }) //: VSTACK
      .padding(.horizontal)
      .background(
        Color.gray
          .clipShape(CustomShape())
          .padding(.top, -105)
      )
    }) //: VSTACK
    .zIndex(0)
    .ignoresSafeArea(.all, edges: .all)
    .background(
        grayColor).ignoresSafeArea(.all, edges: .all)
  }
}

// MARK: - PREVIEW

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView()
      .previewLayout(.fixed(width: 375, height: 812))
  }
}
