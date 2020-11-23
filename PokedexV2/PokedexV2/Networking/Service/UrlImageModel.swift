//

import Foundation
import SwiftUI

class UrlImageModel: ObservableObject {
    @Published var image: UIImage?
    var urlString: String
    var imageCache = ImageCache.getImageCache()

    init(urlString: String = String()) {
        self.urlString = urlString
        loadImage()
    }

    private func loadImage() {
        if loadImageFromCache() {
            return
        }

        loadImageFromUrl()
    }

    private func loadImageFromCache() -> Bool {
        guard let cacheImage = imageCache.get(forKey: urlString) else {
            return false
        }

        image = cacheImage
        return true
    }

    private func loadImageFromUrl() {
        URL(string: urlString).map {
            let task = URLSession.shared.dataTask(with: $0, completionHandler: getImageFromResponse(data:response:error:))
            task.resume()
        }
    }

    private func getImageFromResponse(data: Data?, response: URLResponse?, error: Error?) {
        guard error == nil, let data = data else {
            return
        }

        DispatchQueue.main.async {
            UIImage(data: data).map {
                self.imageCache.set(forKey: self.urlString, image: $0)
                self.image = $0
            }
        }
    }
}

class ImageCache {
    var cache = NSCache<NSString, UIImage>()

    func get(forKey: String) -> UIImage? {
        return cache.object(forKey: NSString(string: forKey))
    }

    func set(forKey: String, image: UIImage) {
        cache.setObject(image, forKey: NSString(string: forKey))
    }
}

extension ImageCache {
    private static var imageCache = ImageCache()

    static func getImageCache() -> ImageCache {
        return imageCache
    }
}
