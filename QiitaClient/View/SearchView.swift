//
//  SearchView.swift
//  QiitaClient
//
//  Created by Masato Ishikawa on 2021/12/18.
//

import SwiftUI

struct SearchView: View {
    @State var query: String = "SwiftUI"
    @State var isEditing: Bool = false
    @ObservedObject var viewModel = ArticlesViewModel.shared
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(query: $query, isEditing: $isEditing)
                    .padding(8)
                ScrollView {
                    VStack {
                        ForEach(viewModel.articles) { article in
                            NavigationLink {
                                ScrollView {
                                    VStack {
                                        ArticleView(url: article.url)
                                            .frame(height: 2000, alignment: .center)
                                            .navigationBarTitleDisplayMode(.inline)
                                    }
                                }
                            } label: {
                                ResultCell(viewModel: ResultCellViewModel(article))
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
