//
//  Ariticle.swift
//  GoodNews
//
//  Created by 하동훈 on 2021/03/26.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
