//
//  PostsData.swift
//  WdNews
//
//  Created by Yassine AADOULI on 1/12/20.
//  Copyright © 2020 Yassine AADOULI. All rights reserved.
//

import Foundation

struct Resuls: Decodable {
    let hits: [Post]
}


struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
}
