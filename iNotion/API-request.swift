//
//  API-request.swift
//  iNotion
//
//  Created by Ashok on 18/05/21.
//


import UIKit
import Alamofire
import AlamofireObjectMapper
import ObjectMapper
import Foundation
import NotionClient

let REQUEST_TIMEOUT: TimeInterval = 20

class APIRequest: NSObject {
    
    static let shared = APIRequest()
    
    func postRequest( onSuccess: @escaping ([NotionPage]?) -> Void, onError: @escaping (Error?) -> Void){
        
        let client = NotionClient.init(token: "NOTION_INTEGRATION_SECRET_TOKEN")
        client.queryDatabase(withId: "NOTION_DATABASE_ID") { (data, error) in
            if error == nil{
                onSuccess(data)
            }else{
                onError(error)
            }
        }
        
    }
}
