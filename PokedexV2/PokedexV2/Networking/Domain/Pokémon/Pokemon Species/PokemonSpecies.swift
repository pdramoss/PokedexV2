//

import Foundation

struct PokemonSpecies: Codable {
    var id: Int
    var name: String
    var order: Int
    var genderRate: Int
    var captureRate: Int
    var baseHappiness: Int
    var isBaby: Bool
    var isLegendary: Bool
    var isMythical: Bool
    var hatchCounter: Int
    var hasGenderDifferences: Bool
    var formsSwitchable: Bool
    var growthRate: NamedAPIResource
    var pokedexNumbers: [PokemonSpeciesDexEntry]
    var eggGroups: [NamedAPIResource]
    var color: NamedAPIResource
    var shape: NamedAPIResource
    var evolvesFromSpecies: NamedAPIResource
    var evolutionChain: APIResource
    var habitat: NamedAPIResource
    var generation: NamedAPIResource
    var names: [Name]
    var palParkEncounters: [PalParkEncounterArea]
    var flavorTextEntries: [FlavorText]
    var formDescriptions: [Description]
    var genera: [Genus]
    var varieties: [PokemonSpeciesVariety]
}
