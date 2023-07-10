//
//  GroupPostModelView.swift
//  News App
//
//  Created by Dinith Hasaranga on 2023-07-10.
//


import SwiftUI

class GroupPostModelView: ObservableObject {
    
    @Published var groupPost = [GroupPostModel]()
    
    init() {
        fetchPostData()
    }
    
    func fetchPostData() {
        let urlString = "http://localhost:8070/post/community/technology"
        
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Debug: Error \(error.localizedDescription)")
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print("Debug: Response code \(response.statusCode)")
            }

            guard let data = data else { return }
            
            do {
                let redditPost = try JSONDecoder().decode([GroupPostModel].self, from: data)
                DispatchQueue.main.async {
                    self.groupPost = redditPost
                    print("Debug: Fetched Reddit technology posts successfully.")
                }
            } catch let error {
                print("Debug: Error \(error)")
            }
        }.resume()
    }
}
