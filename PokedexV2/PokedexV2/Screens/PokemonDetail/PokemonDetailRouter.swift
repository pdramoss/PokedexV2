//

import UIKit

protocol PokemonDetailRouter: class {
    var navigationController: UINavigationController? { get}
}

class PokemonDetailRouterImplementation: PokemonDetailRouter {
    weak var navigationController: UINavigationController?
}
