//
//  ArticleView.swift
//  QiitaClient
//
//  Created by Masato Ishikawa on 2021/12/18.
//

import SwiftUI
import WebKit

struct ArticleView: UIViewRepresentable {
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: url)!))
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(url: "https://qiita.com")
    }
}
