//
//  Crawls.swift
//  Crawl America
//
//  Created by Michael Roundcount on 8/22/23.
//

import Foundation

class Crawls {
    var id: String
    var city: String
    var crawlDate: Double
    var status: String
    
    init(id: String, city: String, crawlDate: Double, status: String) {
        self.id = id
        self.city = city
        self.crawlDate = crawlDate
        self.status = status
    }
    
    //The method that excepts the dictionary and turns it into the users varaible
    static func transformCrawl(dict: [String: Any], keyId: String) -> Crawls? {
        print("CrawlsAPI Transform KeyID: \(keyId)")
        print("city in transform: \(String(describing: dict["city"]))")
        guard let city = dict["city"] as? String,
        let crawlDate = dict["crawlDate"] as? Double,
        let status = dict["status"] as? String
                
        else {
            print("API Nil")
            return nil
        }
        
        //assign all of the unwrapped data to the instnce user, and return the full user at the end
        let crawls = Crawls (id: keyId, city: city, crawlDate: crawlDate, status: status)
        print("crawl IDs from API: \(crawls.id)")
        return crawls
    }
}
