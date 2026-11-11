import Foundation

// MARK: - installaddondetails

public struct installaddondetails: Codable, Sendable {

    public var jsonData: Data?
    public var description: String?
    public var name: String?
    public var addonType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, description, name, addonType
    }

    public init(
                jsonData: Data? = nil,
                description: String? = nil,
                name: String? = nil,
                addonType: String? = nil
    ) {
        self.jsonData = jsonData
        self.description = description
        self.name = name
        self.addonType = addonType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
