//

import Foundation

struct EncounterMethodRate: Codable {
    var encounterMethod: NamedAPIResource
    var versionDetails: [EncounterVersionDetails]
}
