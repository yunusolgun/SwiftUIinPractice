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
