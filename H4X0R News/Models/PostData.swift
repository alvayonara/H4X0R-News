//
//  PostData.swift
//  H4X0R News
//
//  Created by Alva Yonara Puramandya on 08/07/20.
//  Copyright © 2020 Alva Yonara Puramandya. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

// To implement Identifiable protocol we must have id variable as String.
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
