//
//  APIManager.swift
//  iOSJustoTest
//
//  Created by Alan Muñoz on 14/07/22.
//

import Foundation


class APIManager {
    static let shared = APIManager()
    private let baseURL = "https://randomuser.me/api/?results=50"
    var users: [User] = []
    private init() {}
    
    func getUser(completionHandler: @escaping ([User]) -> Void, failureCompletion:@escaping(Error?) -> Void) {
        
        let url = URL(string: baseURL)!
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data,_,error)  in
            DispatchQueue.main.async {
                if let error = error {
                    NSLog("Error getting users \(error)")
                }
                
                guard let data = data else {
                    NSLog("Empty data")
                    return
                }
                
                do {
                    let newUsers = try JSONDecoder().decode(UserResult.self, from: data)
                    print("Users: \(newUsers)")
                    self.users = newUsers.results!
                    completionHandler(self.users)
                } catch {
                    NSLog("Error decoding: \(error)")
                    failureCompletion(error)
                }
                
            }
            
        }
        dataTask.resume()
    }
    
}
