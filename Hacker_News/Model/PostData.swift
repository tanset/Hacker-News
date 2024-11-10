//
//  PostData.swift
//  Hacker_News
//
//  Created by 張皓宇 on 2024/11/8.
//

import Foundation
struct Results: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    let objectID: String
    let points : Int
    let title: String
    let url: String?
}
