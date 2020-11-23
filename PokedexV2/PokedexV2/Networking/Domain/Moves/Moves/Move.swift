//

import Foundation

struct Move: Codable {
    var id: Int
    var name: String
    var accuracy: Int
    var effectChance: Int
    var pp: Int
    var priority: Int
    var power: Int
    var contestCombos: ContestComboSets
    var contestType: NamedAPIResource
    var contestEffect: APIResource
    var damageClass: NamedAPIResource
    var effectEntries: [VerboseEffect]
    var effectChanges: [AbilityEffectChange]
    var flavorTextEntries: [MoveFlavorText]
    var generation: NamedAPIResource
    var machines: [MachineVersionDetail]
    var meta: MoveMetaData
    var names: [Name]
    var pastValues: [PastMoveStatValues]
    var statChanges: [MoveStatChange]
    var superContestEffect: APIResource
    var target: NamedAPIResource
    var type: NamedAPIResource
}
