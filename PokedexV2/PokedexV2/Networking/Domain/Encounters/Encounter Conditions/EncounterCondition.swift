//

import Foundation

struct EncounterCondition: Codable {
    var id: Int
    var name: String
    var names: [Name]
    var values: NamedAPIResource
}
