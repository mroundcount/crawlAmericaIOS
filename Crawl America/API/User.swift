//
//  User.swift
//  Crawl America
//
//  Created by Michael Roundcount on 8/14/23.
//

import Foundation

class User {
    var uid: String
    var email: String
    var status: String
    var createdDate: Double
    var lastLoginDate: Double

    
    init(uid: String, email: String, status: String, createdDate: Double, lastLoginDate: Double) {
        self.uid = uid
        self.email = email
        self.status = status
        self.createdDate = createdDate
        self.lastLoginDate = lastLoginDate
    }
    
    //The method that excepts the dictionary and turns it into the users varaible
    static func transformUser(dict: [String: Any]) -> User? {
        guard let email = dict["email"] as? String,
        let status = dict["status"] as? String,
        let createdDate = dict["createdDate"] as? Double,
        let lastLoginDate = dict["lastLoginDate"] as? Double,
        let uid = dict["uid"] as? String
        else {
            return nil
        }
        //assign all of the unwrapped data to the instnce user, and return the full user at the end
        let user = User (uid: uid, email: email, status: status, createdDate: createdDate, lastLoginDate: lastLoginDate)
        print("user IDs from API: \(user.uid)")
        return user
    }
}
