//
//  PostInFeedView.swift
//  InstaClone
//
//  Created by MJ Albdour on 2/25/22.
//

import SwiftUI

struct PostInFeedView: View {
    var body: some View {
        VStack {
            Header()
            Content()
            Footer()
            Likes()
            VStack(alignment: .leading, spacing: 0) {
                Text("some_username")
                    .bold()
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
            .padding(.horizontal)
        }
    }
}

struct PostInFeedView_Previews: PreviewProvider {
    static var previews: some View {
        PostInFeedView()
            .preferredColorScheme(.dark)
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Circle()
                .stroke(.orange)
                .frame(width: 50)
                .overlay(
                    Circle()
                        .scaledToFit()
                        .scaleEffect(0.85)
                )
            VStack(alignment: .leading) {
                Text("mr supremo")
                    .bold()
                Text("London")
                    .font(.callout)
            }
            Image(systemName: "circle.fill")
                .resizable()
                .scaledToFit()
                .scaleEffect(0.1)
            Button {
            } label: {
                Text("Follow")
            }
            Spacer()
            Image(systemName: "ellipsis")
        }
        .frame(height: 40)
    }
}

struct Content: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
                .overlay(
                    Capsule()
                        .foregroundColor(
                            Color(red: 0.2, green: 0.2, blue: 0.2)
                        )
                        .frame(width: 40, height: 25)
                        .offset(x: -18, y: 18)
                        .overlay(
                            Text("1/10")
                                .font(.caption)
                                .offset(x: -18, y: 18)
                        ), alignment: .topTrailing)
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .scaleEffect(0.5)
        }
        .frame(maxHeight: 480)
    }
}

struct Footer: View {
    var body: some View {
        HStack {
            HStack(spacing: 20) {
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 25)

                Image(systemName: "bubble.right")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 25)
                Image(systemName: "paperplane")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 25)
            }
            Spacer()
            HStack(spacing: 5) {
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(.blue)
                    .scaledToFit()
                    .frame(width: 6, height: 6)
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .scaledToFit()
                    .frame(width: 6, height: 6)
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .scaledToFit()
                    .frame(width: 6, height: 6)
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .scaledToFit()
                    .frame(width: 4, height: 4)
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .scaledToFit()
                    .frame(width: 2, height: 2)
            }
            Spacer()
            Text("")
            Spacer()
            Image(systemName: "bookmark")
                .resizable()
                .frame(width: 25, height: 25)
        }
        .frame(height: 35)
        .padding(.horizontal)
    }
}

struct Likes: View {
    var body: some View {
        HStack(spacing: 3) {
            Text("Liked by")
            Text("some_username")
                .bold()
            Text("and")
            Text("others")
                .bold()
            Spacer()
        }
        .font(.subheadline)
        .frame(height: 35)
        .padding(.horizontal)
    }
}
