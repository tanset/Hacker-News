//
//  NetworkManager.swift
//  Hacker_News
//
//  Created by 張皓宇 on 2024/11/8.
//

import Foundation

class NetworkManager : ObservableObject{
    @Published var posts = [Post]()
    func fetchDate(){
        if let url = URL(string : "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async{
                                self.posts = results.hits
                            }
                        }catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
                         
    }
}
