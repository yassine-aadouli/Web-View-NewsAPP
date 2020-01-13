//
//  NetworkManager.swift
//  WdNews
//
//  Created by Yassine AADOULI on 1/12/20.
//  Copyright © 2020 Yassine AADOULI. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) {(data, respense, error) in
                if error == nil{
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do {
                            let resuls = try decoder.decode(Resuls.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = resuls.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
