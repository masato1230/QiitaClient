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
        NavigationView {
            VStack {
                SearchBar(query: $query, isEditing: $isEditing)
                    .padding(8)
                ScrollView {
                    VStack {
                        ForEach(0...3, id: \.self) { _ in
                            NavigationLink {
                                ScrollView {
                                    VStack {
                                        ArticleView(url: "https://qiita.com")
                                            .frame(height: 2000, alignment: .center)
                                            .navigationBarTitleDisplayMode(.inline)
                                    }
                                }
                            } label: {
                                ResultCell()
                                    .foregroundColor(.black)
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitle("記事を検索")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(query: "検索ワード", isEditing: true)
    }
}
