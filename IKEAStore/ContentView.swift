//
//  ContentView.swift
//  IKEAStore
//
//  Created by Josipa Puljko
//

import SwiftUI

struct ContentView: View {
  
  @EnvironmentObject var store: Store
  
  var body: some View {
    ZStack {
      if store.showingProduct == false && store.selectedProduct == nil {
        VStack(spacing: 0) {
          NavigationBarView()
            .padding(.horizontal, 15)
            .padding(.bottom)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
          
          ScrollView(.vertical, showsIndicators: false, content: {
            VStack(spacing: 0) {
                CarouselTabView()
                .frame(height: UIScreen.main.bounds.width / 1.700)
                .padding(.vertical, 10)

                SearchBarView()
                
              CategoryGridView()
              
              TitleView(title: "Chairs")
              
              LazyVGrid(columns: gridLayout, spacing: 15, content: {
                ForEach(products) { product in
                  ProductView(product: product)
                    .onTapGesture {
                        store.selectedProduct = product
                        store.showingProduct = true
                    }
                }
              })
                .padding(15)

            
              FooterView()
                .padding(.horizontal)
            }
          })
          
        }
      } else {
        ProductDetailView()
      }
    }
    .ignoresSafeArea(.all, edges: .top)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(Store())
  }
}
