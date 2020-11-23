//

import UIKit

protocol PokemonListRouter: class {
    var navigationController: UINavigationController? { get}

    func routeToDetail(_ name: String)
}

class PokemonListRouterImplementation: PokemonListRouter {
    weak var navigationController: UINavigationController?

    func routeToDetail(_ name: String) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(identifier: "PokemonDetailViewController") as? PokemonDetailViewController
        viewController.map { PokemonDetailConfigurator.setupModule(name, $0) }
        viewController.map { navigationController?.pushViewController($0, animated: true) }
    }
}
