//
//  PersonalProfileView.swift
//  InstaClone
//
//  Created by MJ Albdour on 2/24/22.
//

import SwiftUI

struct PersonalProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ActivitySection()
                .padding(.bottom)
            DashboardSection()
                .padding(.bottom)
            MainSection()
            //                .padding(.bottom)
            VStack(alignment: .leading) {
                Name()
                AccountCategory()
                Bio()
            }
            .padding(.bottom,1)
            HelpersSection()
                .padding(.bottom)
            HighlightsSection()
                .padding(.bottom)
            Spacer()
        }
        .padding()
    }
}

struct PersonalProfileView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalProfileView()
            .preferredColorScheme(.dark)
    }
}

struct ActivitySection: View {
    var body: some View {
        HStack {
            Text("mr_supremo")
                .font(.title2)
                .fontWeight(.bold)
            Image(systemName: "chevron.down")
            Spacer()
            Image(systemName: "plus.app")
                .font(.title)
                .padding(.trailing)
            Image(systemName: "line.3.horizontal")
                .resizable()
                .font(.title)
                .frame(width: 25, height: 20)
        }
    }
}

struct DashboardSection: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Professional Dashboard")
                    .font(.system(.footnote))
                    .fontWeight(.bold)
                Text("Tools and resources just for creators.")
                    .font(.footnote)
                    .opacity(0.7)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .opacity(0.7)
        }
    }
}

struct MainSection: View {
    var body: some View {
        HStack {
            Circle()
                .stroke(lineWidth: 1)
                .background(Color(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393))
                .frame(width: 90, height: 90)
                .clipShape(Circle())
                .overlay(
                    Image(systemName: "person.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80)
                        .offset(y: 20)
                        .clipShape(Circle())
                )
                .overlay(
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 12, height: 12)
                        .padding(.all, 8)
                        .background(.blue)
                        .clipShape(Circle()),
                    alignment: .bottomTrailing
                )
            Spacer()
            HStack(alignment: .center, spacing: 20) {
                VStack {
                    Text("54")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("Posts")
                }
                VStack {
                    Text("2.4M")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("Followers")
                }
                VStack {
                    Text("0")
                        .font(.headline)
                        .fontWeight(.bold)
                        .opacity(0.6)
                    Text("Following")
                }
            }
        }
    }
}

struct Name: View {
    var body: some View {
        Text("Supremo Jr.")
    }
}

struct AccountCategory: View {
    var body: some View {
        Text("Engineering Service")
            .opacity(0.7)
    }
}

struct Bio: View {
    var body: some View {
        Text("With great code, comes great readability.")
    }
}

struct HelpersSection: View {
    var body: some View {
        HStack(spacing: 3) {
            Button {
                // action
            } label: {
                Text("Edit Profile")
                    .font(.callout)
                    .fontWeight(.bold)
            }
            .background(.black)
            .foregroundColor(.white)
            .padding(.vertical, 5)
            //                .padding(.horizontal, 1)
            .frame(minWidth: 0, maxWidth: .infinity)
            .border(.white.opacity(0.3), width: 1)
            .cornerRadius(2)
            Button {
                // action
            } label: {
                Text("Ad Tools")
                    .font(.callout)
                    .fontWeight(.bold)
            }
            .background(.black)
            .foregroundColor(.white)
            .padding(.vertical, 5)
            //                .padding(.horizontal, 1)
            .frame(minWidth: 0, maxWidth: .infinity)
            .border(.white.opacity(0.3), width: 1)
            .cornerRadius(2)
            Button {
                // action
            } label: {
                Text("Insights")
                    .font(.callout)
                    .fontWeight(.bold)
            }
            .background(.black)
            .foregroundColor(.white)
            .padding(.vertical, 5)
            //                .padding(.horizontal, 1)
            .frame(minWidth: 0, maxWidth: .infinity)
            .border(.white.opacity(0.3), width: 1)
            .cornerRadius(2)
        }
    }
}

struct HighlightsSection: View {
    var body: some View {
        HStack(spacing: 25) {
            VStack {
                Circle()
                    .stroke()
                    .foregroundColor(.gray)
                    .frame(width: 70, height: 70)
                    .overlay(Image(systemName: "globe.americas")
                                .resizable()
                                .scaledToFit()
                                .scaleEffect(0.8))
                Text("Americas")
                    .font(.callout)
            }
            VStack {
                Circle()
                    .stroke()
                    .foregroundColor(.gray)
                    .frame(width: 70, height: 70)
                    .overlay(Image(systemName: "globe.europe.africa")
                                .resizable()
                                .scaledToFit()
                                .scaleEffect(0.8))
                Text("Eu & Af")
                    .font(.callout)
            }
            VStack {
                Circle()
                    .stroke()
                    .foregroundColor(.gray)
                    .frame(width: 70, height: 70)
                    .overlay(Image(systemName: "globe.asia.australia")
                                .resizable()
                                .scaledToFit()
                                .scaleEffect(0.8))
                Text("Asia & Au")
                    .font(.callout)
            }
            VStack {
                Circle()
                    .stroke()
                    .foregroundColor(.gray)
                    .frame(width: 70, height: 70)
                    .overlay(Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .scaleEffect(0.3))
                Text("New")
                    .font(.callout)
            }
        }
    }
}
