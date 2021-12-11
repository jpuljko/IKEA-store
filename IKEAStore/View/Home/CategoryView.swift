//
//  CategoryView.swift
//  IKEAStore
//
//  Created by Josipa Puljko on 11.12.2021..
//

import SwiftUI

struct CategoryView: View {
    
    let category: Category
    
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                Text(category.name)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray, lineWidth: 1)
            )
        })
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(bgColor)
    }
}
