//

import Combine
import Foundation
import UIKit

class NetworkingImageAdapter: DefaultNetworkManager, NetworkingImageAdapterProtocol, Injectable {
    var service: NetworkingImageServiceProtocol

    init(_ service: NetworkingImageServiceProtocol = NetworkingImageService(NetworkingRouter<NetworkingImageAPI>())) {
        self.service = service
    }

    func getPokemon(_ id: Int, completion: @escaping (UIImage?) -> Void) {
        completion(service.requestPokemon(id))
    }

    func getItem(_ name: String, completion: @escaping (UIImage?) -> Void) {
        completion(service.requestItem(name))
    }

    func getItemBerry(_ name: String, completion: @escaping (UIImage?) -> Void) {
        completion(service.requestItemBerry(name))
    }

    func getItemDreamWorld(_ name: String, completion: @escaping (UIImage?) -> Void) {
        completion(service.requestItemDreamWorld(name))
    }

    func getItemGen3(_ name: String, completion: @escaping (UIImage?) -> Void) {
        completion(service.requestItemGen3(name))
    }

    func getItemGen5(_ name: String, completion: @escaping (UIImage?) -> Void) {
        completion(service.requestItemGen5(name))
    }

    func getItemUnderground(_ name: String, completion: @escaping (UIImage?) -> Void) {
        completion(service.requestItemUnderground(name))
    }
}
