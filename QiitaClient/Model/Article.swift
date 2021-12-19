//
//  Article.swift
//  QiitaClient
//
//  Created by Masato Ishikawa on 2021/12/18.
//

struct Article: Decodable, Identifiable {
    let id: String
    let title: String
    let url: String
    let user: User
}

struct User: Decodable {
    let name: String
    let profile_image_url: String
}
