//
//  WebService.swift
//  GoodNews
//
//  Created by 하동훈 on 2021/03/26.
//

import Foundation

class WebService {
    
    func getArticles(url: URL, completionHandler: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completionHandler(nil)
            } else if let data = data {
                let articleList = try?JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    completionHandler(articleList.articles)
                }
                
            }
            
        }.resume()
        
    }
    
}
