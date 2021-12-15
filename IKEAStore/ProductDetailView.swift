//
//  ProductDetailView.swift
//  IKEAStore
//
//  Created by Josipa Puljko
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var store: Store

  
  var body: some View {
    VStack(alignment: .leading, spacing: 5, content: {

      NavigationBarDetailView()
        .padding(.horizontal)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

      HeaderDetailView()
        .padding(.horizontal)

      TopDetailView()
        .padding(.horizontal)
        .zIndex(1)

      VStack(alignment: .center, spacing: 0, content: {

        ScrollView(.vertical, showsIndicators: false, content: {
            HStack {
                Text("Description")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer()
            }
            .padding(.top, 40)
            
            Text(store.selectedProduct?.description ?? productPlaceholder.description)
                .font(.system(.body, design: .rounded))
                .foregroundColor(.black)
            .multilineTextAlignment(.leading)
            .padding(.top, 1)
        })
            Spacer()
            
            HStack(alignment: .center, spacing: 6, content: {
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .font(.title)
                        .foregroundColor(.black)
                })
                    .padding()
            })
            
            AddToCartDetailView()
                .padding()

      })
      .padding(.horizontal)
      .background(
        Color(UIColor.systemGray4)
          .padding(.top, -105)
      )
    })
    .zIndex(0)
    .ignoresSafeArea(.all, edges: .all)
    .background(Color.gray
                    .ignoresSafeArea(.all, edges: .all)
                )
  }
}


struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView()
          .environmentObject(Store())
      .previewLayout(.fixed(width: 375, height: 812))
  }
}
