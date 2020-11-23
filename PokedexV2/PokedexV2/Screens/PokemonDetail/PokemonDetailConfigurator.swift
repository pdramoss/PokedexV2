//

import Foundation

class PokemonDetailConfigurator {
    static func setupModule(_ name: String, _ viewController: PokemonDetailViewController) {
        let router = PokemonDetailRouterImplementation()
        let interactor = PokemonDetailInteractorImplemntation()
        let presenter = PokemonDetailPresenterImplementation()

        viewController.router = router
        viewController.interactor = interactor

        interactor.presenter = presenter
        interactor.name = name

        presenter.viewController = viewController

        router.navigationController = viewController.navigationController
    }
}
