//

import Foundation

struct Item: Codable {
    var id: Int
    var name: String
    var cost: Int
    var flingPower: Int
    var flingEffect: NamedAPIResource
    var attributes: [NamedAPIResource]
    var category: NamedAPIResource
    var effectEntries: [VerboseEffect]
    var flavorTextEntries: [VersionGroupFlavorText]
    var gameIndices: [GenerationGameIndex]
    var names: [Name]
    var sprites: ItemSprites
    var heldByPokemon: [ItemHolderPokemon]
    var babyTriggerFor: APIResource
    var machines: [MachineVersionDetail]
}
