//
//  mocData.swift
//  NewFeedApp
//
//  Created by TY on 11/05/2025.
//

import Foundation

var demoPost = Post(
    username: "John",
    userAvatar: "globe",
    postImage: nil,
    caption: "A caption",
    likescount: 170,
    commentscount: 12,
    repostcount: 8,
    sharescount: 5,
    timestamp: Date.now
)

var demoPosts: [Post] = [
    Post(
        username: "Annie",
        userAvatar: "plus",
        postImage: nil,
        caption: "No caption",
        likescount: 10000,
        commentscount: 245,
        repostcount: 90,
        sharescount: 30,
        timestamp: Date.now
    ),
    Post(
        username: "Mike",
        userAvatar: "flame",
        postImage: "sun.max",
        caption: "Beautiful day at the beach!",
        likescount: 542,
        commentscount: 67,
        repostcount: 21,
        sharescount: 14,
        timestamp: Date.now.addingTimeInterval(-3600)
    ),
    Post(
        username: "Linda",
        userAvatar: "leaf",
        postImage: "cloud",
        caption: "Loving the rainy vibes ☁️",
        likescount: 287,
        commentscount: 44,
        repostcount: 16,
        sharescount: 12,
        timestamp: Date.now.addingTimeInterval(-7200)
    ),
    Post(
        username: "Chris",
        userAvatar: "moon",
        postImage: "star",
        caption: "Night sky is mesmerizing 🌌",
        likescount: 412,
        commentscount: 58,
        repostcount: 24,
        sharescount: 17,
        timestamp: Date.now.addingTimeInterval(-10800)
    ),
    Post(
        username: "Sophie",
        userAvatar: "heart",
        postImage: "photo",
        caption: "Happy moments with friends 💕",
        likescount: 1280,
        commentscount: 96,
        repostcount: 35,
        sharescount: 29,
        timestamp: Date.now.addingTimeInterval(-14400)
    )
]
