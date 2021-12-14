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
            ScrollView(.vertical, showsIndicators: false, content: {
                if store.showingProduct == false && store.selectedProduct == nil {
                    VStack(spacing: 0) {
                        NavigationBarView()
                            .padding(.horizontal, 15)
                            .padding(.bottom)
                            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                            .background(Color.white)
                            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                        
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
                        
                        Spacer()
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                } else {
                    ProductDetailView()
                }
            })
        }
        .ignoresSafeArea(.all, edges: .top)
        .background(bgColor.ignoresSafeArea(.all, edges: .all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Store())
    }
}
