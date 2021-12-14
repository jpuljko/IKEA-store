//
//  HeaderDetailView.swift
//  IKEAStore
//
//  Created by Josipa Puljko on 12.12.2021..
//

import SwiftUI

struct HeaderDetailView: View {
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Homepage")
                .foregroundColor(.white)
            
            Text(store.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
        })
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Store())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
