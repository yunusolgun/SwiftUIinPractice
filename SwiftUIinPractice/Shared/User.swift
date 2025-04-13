//
//  User.swift
//  SwiftUIinPractice
//
//  Created by yunus olgun on 10.04.2025.
//

import Foundation


// MARK: - UserArray
struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

// MARK: - User
struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height: Double
    let weight: Double
    
    var work = "Worker as Some Job"
    var education = "Graduate Degree"
    var aboutMe = "This is a sentence about me that is longer than 100 characters so that I can test the multiline text"
    
    var basics: [UserInterest] {
        [
            UserInterest(iconName: "ruler", emoji: nil, text: "\(height)"),
            UserInterest(iconName: "graduationcap", emoji: nil, text: education),
            UserInterest(iconName: "wineglass", emoji: nil, text: "Socially"),
            UserInterest(iconName: "moon.stars.fill", emoji: nil, text: "Virgo"),
        ]
    }
    
    var interests: [UserInterest] {
        [
            UserInterest(iconName: nil, emoji: "👟", text: "Running"),
            UserInterest(iconName: nil, emoji: "🏋️‍♀️", text: "Gym"),
            UserInterest(iconName: nil, emoji: "🎧", text: "Music"),
            UserInterest(iconName: nil, emoji: "🥘", text: "Cooking"),
        ]
    }
    
    var images: [String] {
        ["https://picsum.photos/500/500","https://picsum.photos/600/600","https://picsum.photos/700/700"]
    }
    
    static var mock: User {
        User(
            id: 444,
            firstName: "Test",
            lastName: "Test2",
            age: 20,
            email: "test@test.com",
            phone: "",
            username: "",
            password: "",
            image: Constants.randomImage,
            height: 180,
            weight: 200
        )
    }
    
}
