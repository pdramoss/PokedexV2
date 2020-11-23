//

import Foundation

struct EncounterConditionValue: Codable {
    var id: Int
    var name: String
    var condition: NamedAPIResource
    var names: [Name]
}
