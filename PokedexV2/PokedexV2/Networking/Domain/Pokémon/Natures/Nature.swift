//

import Foundation

struct Nature: Codable {
    var id: Int
    var name: String
    var decreasedStat: NamedAPIResource
    var increasedStat: NamedAPIResource
    var hatesFlavor: NamedAPIResource
    var likesFlavor: NamedAPIResource
    var pokeathlonStatChanges: [NatureStatChange]
    var moveBattleStylePreferences: [MoveBattleStylePreference]
    var names: [Name]
}
