//

import Foundation

enum NetworkingImageAPI {
    case getPokemon(_ id: Int)
    case getItem(_ name: String)
    case getItemBerry(_ name: String)
    case getItemDreamWorld(_ name: String)
    case getItemGen3(_ name: String)
    case getItemGen5(_ name: String)
    case getItemUnderground(_ name: String)
}

extension NetworkingImageAPI: EndPointType {
    var isBaseImage: Bool {
        true
    }

    var path: String {
        switch self {
        case .getPokemon(let id):
            return "pokemon/\(id).png"
        case .getItem(let name):
            return "items/\(name).png"
        case .getItemBerry(let name):
            return "items/berries/\(name).png"
        case .getItemDreamWorld(let name):
            return "items/dream-world/\(name).png"
        case .getItemGen3(let name):
            return "items/gen3/\(name).png"
        case .getItemGen5(let name):
            return "items/gen5/\(name).png"
        case .getItemUnderground(let name):
            return "items/underground/\(name).png"
        }
    }

    var parameters: Parameters? {
        nil
    }
}
