import Foundation

class ArticlesViewModel: ObservableObject {
    let BASE_URL = "https://qiita.com/api/v2/items?page=1&per_page=20&query="
    @Published var articles = [Article]()
    
    init() {
        fetchArticles(query: "SwiftUI")
    }
    
    static let shared = ArticlesViewModel()
    
    func fetchArticles(query: String) {
        guard let url = URL(string: BASE_URL + query) else { return }
        URLSession.shared.dataTask(with: url) { data, _, _ in
            do {
                guard let data = data else { return }
                self.articles = try JSONDecoder().decode([Article].self, from: data)
            } catch {
                print("error")
            }
        }.resume()
    }
}
