//
//  NavigationBarDetailView.swift
//  IKEAStore
//
//  Created by Josipa Puljko
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        HStack {
            Button(action: {
                store.selectedProduct = nil
                store.showingProduct = false
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Store())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
