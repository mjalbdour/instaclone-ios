//
//  UserModel.swift
//  InstaClone
//
//  Created by MJ Albdour on 2/23/22.
//

import Foundation

struct User {
    let id: Int
    let name: String
    let gender: String
    let dateOfBirth: Date
    let active: Bool
    let locale: String
    let mobileNumber: String
    let username: String
    let email: String
    let bio: String
    let verified: String
    let accountType: AccountType
    let country: String

    init(id: Int, name: String, gender: String,
         dateOfBirth: Date, active: Bool, locale: String,
         mobileNumber: String, username: String, email: String,
         bio: String, verified: String, accountType: User.AccountType,
         country: String) {
        self.id           = id
        self.name         = name
        self.gender       = gender
        self.dateOfBirth  = dateOfBirth
        self.active       = active
        self.locale       = locale
        self.mobileNumber = mobileNumber
        self.username     = username
        self.email        = email
        self.bio          = bio
        self.verified     = verified
        self.accountType  = accountType
        self.country      = country
    }

    enum AccountType {
        case `private`
        case `public`
        case `professional`
        case `business`
    }
}
