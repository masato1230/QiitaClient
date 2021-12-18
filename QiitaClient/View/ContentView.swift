//
//  ContentView.swift
//  QiitaClient
//
//  Created by Masato Ishikawa on 2021/12/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ArticleView(url: "https://qiita.com")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
