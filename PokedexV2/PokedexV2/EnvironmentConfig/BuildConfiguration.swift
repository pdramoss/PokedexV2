//

import Foundation

public enum Environment {
    private enum Keys: String {
        case baseURL = "base_url"
        case baseImageURL = "base_image_url"
        case logEnabled = "log_enabled"
    }

    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
        return dict
    }()

    static var baseURL: String {
        guard let baseURL = Environment.infoDictionary[Keys.baseURL.rawValue] as? String else {
            fatalError("Base URL is not set in plist file for this environment")
        }
        return baseURL
    }

    static var baseImageURL: String {
        guard let baseImageURL = Environment.infoDictionary[Keys.baseImageURL.rawValue] as? String else {
            fatalError("Base Image URL is not set in plist file for this environment")
        }
        return baseImageURL
    }

    static var logEnabled: Bool {
        guard let logEnabled = Environment.infoDictionary[Keys.logEnabled.rawValue] as? String else {
            fatalError("Log enabled is not set in plist file for this environment")
        }
        return Bool(logEnabled) ?? false
    }
}
