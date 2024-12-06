//
//  PostData.swift
//  swiftui-news-app
//
//  Created by Hridayan Phukan on 06/12/24.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
    var id: String { objectID }
}
