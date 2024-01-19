//
//  Ref.swift
//  Crawl America
//
//  Created by Michael Roundcount on 7/14/23.
//

import Foundation
import Firebase

//Storage and database references
let REF_USER = "users"
let REF_CRAWLS = "crawls"

//User profile attributes
let UID = "uid"
let EMAIL = "email"
let STATUS = "status"
let CREATED_DATE = "createdDate"
let LAST_LOGIN_DATE = "lastLoginDate"

//App info for landing page
let IDENTIFIER_WELCOME = "WelcomeVC"
let IDENTIFIER_TABBAR = "TabBarVC"

//Viewcontroller references
let IDENTIFIER_SIGN_IN = "SignInViewController"
let IDENTIFIER_SIGN_UP = "SignUpViewController"
let IDENTIFIER_FORGOT_PASSWORD = "ForgotPasswordViewController"
let IDENTIFIER_HOME_PAGE = "HomeViewController"

let IDENTIFIER_CRAWL_MAIN = "CrawlMainViewController"
let IDENTIFIER_CRAWL_OPTIONS = "CrawlOptionsViewController"

let IDENTIFIER_SCHEDULE = "ScheduleViewController"
let IDENTIFIER_BAR_PROFILE = "BarProfileViewController"
let IDENTIFIER_ROSTER = "RosterViewController"
let IDENTIFIER_CRAWL_PHOTOS = "CrawlPhotosViewController"

let IDENTIFIER_PROFILE = "ProfileViewController"
let IDENTIFIER_PROFILE_OPTIONS = "ProfileOptionsTableViewController"

let IDENTIFIER_PURCHASE_CITIES = "PurchaseCitiesViewController"
let IDENTIFIER_PURCHASE_EVENTS = "PurchaseEventsViewController"

let IDENTIFIER_NAME_TAG = "NameTagViewController"
let IDENTIFIER_TICKET = "TicketViewController"


//Error handling
let ERROR_EMPTY_EMAIL = "Please enter an email address"
let ERROR_EMPTY_PASSWORD = "Please enter a password"
let ERROR_EMPTY_EMAIL_RESET = "Please enter an email address to reset your password"
let SUCCESS_EMAIL_RESET = "We have just resent you a password. Please check your inbox"

class Ref {
    let databaseRoot: DatabaseReference = Database.database().reference()
    
    //User tables
    var databaseUsers: DatabaseReference {
        return databaseRoot.child(REF_USER)
    }
    //method for taking a user id as a parameter to get the reference node
    func databaseSpecificUser(uid: String) -> DatabaseReference {
        return databaseUsers.child(uid)
    }
    
    //Crawl Tables
    var databaseCrawls: DatabaseReference {
        return databaseRoot.child(REF_CRAWLS)
    }
    func databaseSpecificCrawls(id: String) -> DatabaseReference {
        return databaseCrawls.child(id)
    }
 }
