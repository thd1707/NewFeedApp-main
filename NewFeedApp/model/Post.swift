//
//  Post.swift
//  NewFeedApp
//
//  Created by TY on 11/05/2025.
//

import Foundation
struct Post: Identifiable {
    let id = UUID()
    let username: String
    var userAvatar: String = "plus"
    let postImage: String?
    let caption: String
    var likescount: Int
    
    var commentscount: Int
    var repostcount: Int
    var sharescount: Int
    
    let timestamp: Date
}
