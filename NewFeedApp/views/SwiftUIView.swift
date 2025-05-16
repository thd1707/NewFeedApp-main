//
//  SwiftUIView.swift
//  NewFeedApp
//
//  Created by TY on 11/05/2025.
//

import SwiftUI

struct SwiftUIView: View {
    let posts: [Post] = demoPosts.sorted(by: { $0.timestamp > $1.timestamp })
    var body: some View {
        NavigationView {
                    List {
                        ForEach(posts) { post in
                            singleRow(postContent: post)
                                .listRowSeparator(.hidden)
                                .listRowInsets(EdgeInsets())
                                .padding(.vertical, 8)
                        }
                    }
                    .listStyle(.plain)
                    .navigationTitle("Social Feed")
                    .background(Color(.systemGroupedBackground))
                }
            }
        }
#Preview {
    SwiftUIView()
}
