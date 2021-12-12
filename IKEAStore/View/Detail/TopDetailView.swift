//
//  TopDetailView.swift
//  IKEAStore
//
//  Created by Josipa Puljko on 12.12.2021..
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
//                    .scaleEffect(1.35, anchor: .leading)
            })
                .padding(.top, -50)
            
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
