
import SwiftUI

class HomeModelView: ObservableObject {
    
    @Published var redditPost = [RedditPost]()
    
    init() {
        fetchPostData()
    }
    
    func fetchPostData() {
        let urlString = "http://localhost:8070/post/"
        
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
                let redditPost = try JSONDecoder().decode([RedditPost].self, from: data)
                DispatchQueue.main.async {
                    self.redditPost = redditPost
                    print("Debug: Fetched Reddit posts successfully.")
                }
            } catch let error {
                print("Debug: Error \(error)")
            }
        }.resume()
    }
}
