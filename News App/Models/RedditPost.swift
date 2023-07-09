//
//  Post.swift
//  News App
//
//  Created by Dinith Hasaranga on 2023-07-09.
//


import Foundation

struct RedditPost: Codable ,Identifiable {
    let id, title, community, time: String?
    let comments, likes: Int?
    let user: String?
    let v: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case title, community, time, comments, likes, user
        case v = "__v"
    }
}
