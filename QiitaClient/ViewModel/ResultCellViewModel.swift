import Foundation

struct ResultCellViewModel {
    let article: Article
    
    init(_ article: Article) {
        self.article = article
    }
    
    var authorImageUrl: URL? {
        return URL(string: article.user.profile_image_url)
    }
}
