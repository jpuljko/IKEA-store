//
//  TopDetailView.swift
//  IKEAStore
//
//  Created by Josipa Puljko
//

import SwiftUI

struct TopDetailView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text("$\(sampleProduct.price)")
                    .font(.largeTitle)
                    .fontWeight(.black)
            })
                .padding(.top, -70)
            
            Spacer()
            Spacer()

            ZStack {
              Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .padding(10)
            } //: ZSTACK
            .background(Color(.white))
            .cornerRadius(12)
        })
    }
}

struct TopDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
