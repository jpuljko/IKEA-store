//
//  SearchBarView.swift
//  IKEAStore
//
//  Created by Josipa Puljko
//
    
import SwiftUI
 
struct SearchBarView: View {
    
    @State private var userInput = ""
 
    var body: some View {
        HStack {
            TextField("Search ...", text: $userInput)
                            .padding(20)
                            .padding(.horizontal, 25)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .overlay(
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.gray)
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading, 8)
                                }
                            )
                            .padding(.horizontal, 10)
                }
        }
    }

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .previewLayout(.sizeThatFits)
    }
}
