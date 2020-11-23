//

import Foundation

struct ContestEffect: Codable {
    var id: Int
    var appeal: Int
    var jam: Int
    var effectEntries: [Effect]
    var flavorTextEntries: [FlavorText]
}
