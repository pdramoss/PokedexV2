//

import Foundation
import UIKit

class NetworkingImageService<Router: NetworkingRouterProtocol>: NetworkingBaseRouterProtocol, NetworkingImageServiceProtocol where Router.EndPoint == NetworkingImageAPI {
    var router: Router

    init(_ router: Router) {
        self.router = router
    }

    func requestPokemon(_ id: Int) -> UIImage? {
        router.requestImage(.getPokemon(id))
    }

    func requestItem(_ name: String) -> UIImage? {
        router.requestImage(.getItem(name))
    }

    func requestItemBerry(_ name: String) -> UIImage? {
        router.requestImage(.getItemBerry(name))
    }

    func requestItemDreamWorld(_ name: String) -> UIImage? {
        router.requestImage(.getItemDreamWorld(name))
    }

    func requestItemGen3(_ name: String) -> UIImage? {
        router.requestImage(.getItemGen3(name))
    }

    func requestItemGen5(_ name: String) -> UIImage? {
        router.requestImage(.getItemGen5(name))
    }

    func requestItemUnderground(_ name: String) -> UIImage? {
        router.requestImage(.getItemUnderground(name))
    }
}
