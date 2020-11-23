//

import Foundation

struct LocationAreaEncounter: Codable {
    var locationArea: NamedAPIResource
    var versionDetails: [VersionEncounterDetail]
}
