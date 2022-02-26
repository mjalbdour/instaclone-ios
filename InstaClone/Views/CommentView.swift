//
//  CommentView.swift
//  InstaClone
//
//  Created by MJ Albdour on 2/26/22.
//

import SwiftUI

struct CommentView: View {
    var body: some View {
        ScrollView {
            HStack(alignment: .top, spacing: 9
            ) {
                UserPhoto()
                VStack(alignment: .leading) {
                    Username()
                    CommentContent()
                    CommentFooter()
                }
                FavoriteButton()
            }
            .frame(minHeight: 40)
        .padding()
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView()
            .preferredColorScheme(.dark)
    }
}

struct UserPhoto: View {
    var body: some View {
        Circle()
            .foregroundColor(.orange)
            .frame(width: 35, height: 35)
            .overlay(Image(systemName: "person"))
    }
}

struct Username: View {
    var body: some View {
        HStack {
            Text("some_username")
                .bold()
            Image(systemName: "checkmark.seal.fill")
                .foregroundColor(.blue)
        }
    }
}

struct CommentContent: View {
    var body: some View {
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    }
}

struct CommentFooter: View {
    var body: some View {
        HStack {
            Text("2d")
                .font(.callout)
                .foregroundColor(.secondary)
                .padding(.trailing, 5)
            Button {
                // TODO: Implement go to likes view
            } label: {
                Text("845 likes")
                    .font(.callout)
                    .bold()
                    .foregroundColor(.secondary)
                    .padding(.trailing, 5)
            }
            Button {
                // TODO: Implement reply to user comment feature
            } label: {
                Text("Reply")
                    .font(.callout)
                    .bold()
                    .foregroundColor(.secondary)
            }
        }
        .padding(.top, 1)
    }
}

struct FavoriteButton: View {
    var body: some View {
        Button {
            // TODO: Implement like functionality
            // TODO: Change label icon color to red on liked
        } label: {
            Image(systemName: "heart")
                .padding(.leading, 3)
                .tint(.secondary)
        }
    }
}
