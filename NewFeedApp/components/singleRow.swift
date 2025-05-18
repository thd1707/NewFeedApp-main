//
//  singleRow.swift
//  NewFeedApp
//
//  Created by TY on 11/05/2025.
//

import SwiftUI

struct singleRow: View {
    @State var postContent: Post
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: postContent.userAvatar)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                
                VStack(alignment: .leading, spacing: 2) {
                    Text(postContent.username)
                        .font(.headline)
                    Text(relativeTime(postContent.timestamp))
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
                    .foregroundColor(.gray)
            }
            
            if let imageName = postContent.postImage {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit() 
                    .frame(maxHeight: 140)
                    .cornerRadius(12)
                    .shadow(radius: 5)
            }
            Text(postContent.caption)
                .font(.body)
        
            
            
            // Buttons: like - comment - share - repost
            HStack(spacing: 20) {
                Button(action: {
                    postContent.likescount += 1
                }) {
                    Label("\(postContent.likescount)", systemImage: "heart.fill")
                        .foregroundColor(.pink)
                }
                Label("\(postContent.commentscount)", systemImage: "bubble.right") // Comment
                Label("\(postContent.repostcount)", systemImage: "arrow.2.squarepath") // Repost
                    .padding(6)
                    .background(Circle().stroke(Color.gray.opacity(0.4), lineWidth: 1))
                Label("\(postContent.sharescount)", systemImage: "paperplane") // Share
            }
            .font(.subheadline)
            .foregroundColor(.gray)
            .padding(.top, 4)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(17)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
    func relativeTime(_ date: Date) -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .abbreviated
        return formatter.localizedString(for: date, relativeTo: Date())
    }
    
    #Preview {
        SwiftUIView()
    }
}
