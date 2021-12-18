//
//  SearchBar.swift
//  QiitaClient
//
//  Created by Masato Ishikawa on 2021/12/18.
//

import SwiftUI

struct SearchBar: View {
    @Binding var query: String
    @Binding var isEditing: Bool
    
    var body: some View {
        TextField("Query", text: $query)
            .padding(.vertical, 8)
            .padding(.horizontal, 48)
            .background(Color(.systemGray4))
            .cornerRadius(8)
            .onTapGesture {
                isEditing.toggle()
            }
            .overlay(
                HStack{
                    Image(systemName: "pencil")
                        .foregroundColor(.black)
                        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 16)
                    
                    if isEditing {
                        Button {
                            isEditing = false
                            query = ""
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        } label: {
                            Text("キャンセル")
                                .padding(.trailing, 16)
                        }
                    }
                }
            )
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SearchBar(query: .constant("検索文字列"), isEditing: .constant(true))
            SearchBar(query: .constant("検索文字列"), isEditing: .constant(true))
        }
    }
}
