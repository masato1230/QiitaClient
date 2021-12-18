//
//  SearchView.swift
//  QiitaClient
//
//  Created by Masato Ishikawa on 2021/12/18.
//

import SwiftUI

struct SearchView: View {
    @State var query: String
    @State var isEditing: Bool
    
    var body: some View {
        VStack {
            SearchBar(query: $query, isEditing: $isEditing)
                .padding(8)
            ScrollView {
                VStack {
                    ForEach(0...3, id: \.self) { _ in
                        ResultCell()
                    }
                }
                .padding()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(query: "検索ワード", isEditing: true)
    }
}
