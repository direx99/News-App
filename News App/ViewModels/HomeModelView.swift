import SwiftUI

class HomeModelView: ObservableObject {
    
    @Published var redditPost = [RedditPost]()
    @Published var topMovingCoins = [RedditPost]()

    private var timer: Timer?
    var urlString = "http://localhost:8070/post/"
    

    init() {
        fetchPostData()
        startTimer()
    }
    
    func fetchPostData() {
        
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Debug: Error \(error.localizedDescription)")
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print("Debug: Response code \(response.statusCode)")
                print("\(response.url)")

            }

            guard let data = data else { return }
            
            do {
                let redditPost = try JSONDecoder().decode([RedditPost].self, from: data)

                DispatchQueue.main.async {
                    self.configureTopMovingCoins()

                    self.redditPost = redditPost
                    print("Debug: Fetched Reddit posts successfully.")
                }
            } catch let error {
                print("Debug: Error \(error)")
            }
        }.resume()
    }
    func configureTopMovingCoins() {
        DispatchQueue.global(qos: .userInitiated).async {
            // Check if redditPost array is empty or not
            guard !self.redditPost.isEmpty else {
                return
            }
            
            let topMovers = self.redditPost.filter { $0.community == "technologies" }
                                           
            
            DispatchQueue.main.async {
                self.topMovingCoins = Array(topMovers)
            }
        }
    }
    func updateURLString() {
        urlString = "http://localhost:8070/post/community/technology"
        fetchPostData()
    }
        
    
    private func startTimer() {
        // Schedule the timer to call fetchPostData every 10 seconds
        timer = Timer.scheduledTimer(withTimeInterval: 10, repeats: true) { _ in
            self.fetchPostData()
        }
    }
    
    private func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    deinit {
        stopTimer()
    }
}
