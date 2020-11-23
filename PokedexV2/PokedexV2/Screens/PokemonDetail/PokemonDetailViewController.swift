//

import UIKit

protocol PokemonDetailPresenterOutput: class {
    var interactor: PokemonDetailInteractor? { get set }
    var router: PokemonDetailRouter? { get set }

    func setupDetail(pokemon: Pokemon)
}

class PokemonDetailViewController: UIViewController {
    var interactor: PokemonDetailInteractor?
    var router: PokemonDetailRouter?

    @IBOutlet private weak var imagePokemon: UIImageView!
    @IBOutlet private weak var cornerView: UIView!
    @IBOutlet private weak var namePokemonLabel: UILabel!
    @IBOutlet private weak var abilitiesTitleLabel: UILabel!
    @IBOutlet private weak var abilitiesPokemonLabel: UILabel!
    @IBOutlet private weak var movesTitleLabel: UILabel!
    @IBOutlet private weak var movesPokemonLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()

        interactor?.getDetail()
        setupCornerView()
    }

    private func setupCornerView() {
        cornerView.layer.cornerRadius = 30
        cornerView.layer.borderColor = UIColor.lightGray.cgColor
        cornerView.layer.borderWidth = 1.5

        cornerView.layer.shadowColor = UIColor.black.cgColor
        cornerView.layer.shadowOpacity = 0.8
        cornerView.layer.shadowRadius = 3.0
        cornerView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
    }
}

extension PokemonDetailViewController: PokemonDetailPresenterOutput {
    func setupDetail(pokemon: Pokemon) {
        let urlString = Environment.baseImageURL + "pokemon/\(pokemon.id).png"
        let urlImageModel = UrlImageModel(urlString: urlString)
        let abilities = pokemon.abilities.map { $0.ability.name.capitalized }
        let moves = pokemon.moves.map { $0.move.name.capitalized }
        DispatchQueue.main.async {
            self.imagePokemon.image = urlImageModel.image
            self.namePokemonLabel.text = pokemon.name.capitalized
            self.abilitiesTitleLabel.text = "Abilities"
            self.abilitiesPokemonLabel.text = abilities.joined(separator: "\n")
            self.movesTitleLabel.text = "Moves"
            self.movesPokemonLabel.text = moves.joined(separator: "\n")
        }
    }
}
