//

import Foundation

struct EncounterMethod: Codable {
    var id: Int
    var name: String
    var order: Int
    var names: [Name]
}
