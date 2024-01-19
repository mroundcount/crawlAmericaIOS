//
//  CrawlsAPI.swift
//  Crawl America
//
//  Created by Michael Roundcount on 8/22/23.
//

import Foundation
import Firebase

class CrawlsApi {
    
    //Pulling all crawls for testing
    func loadAllCrawls(onSuccess: @escaping(Crawls) -> Void) {
        let ref = Database.database().reference().child("crawls")
        ref.observe(.childAdded, with: { snapshot in
            if let dict = snapshot.value as? [String : AnyObject] {
                print("dict in api step: \(dict.values)")
                print("step 2 snapshot: \(snapshot.key)")
                if let crawls = Crawls.transformCrawl(dict: dict, keyId: snapshot.key) {
                    print("in loadAllCrawls step 3")
                    print("ids returned: \(crawls.id)")
                    onSuccess(crawls)
                }
            }
        })
    }
    
}

typealias CrawlsCompletion = (Crawls) -> Void
