//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet private weak var pokemonImage: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var idLabel: UILabel!

    @Inject private var getPokemonImageUseCase: GetPokemonImageUseCase

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setup(data: NamedAPIResource) {
        nameLabel.text = data.name.capitalized
        idLabel.text =  "# \(data.id.numberWithZeros())"

        getPokemonImageUseCase.execute(id: data.id) { [weak self] (image) in
            DispatchQueue.main.async {
                self?.pokemonImage.image = image
            }
        }
    }
}
