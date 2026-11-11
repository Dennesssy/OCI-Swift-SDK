import Foundation

// MARK: - updateaddondetails

public struct updateaddondetails: Codable, Sendable {

    public var jsonData: Data?
    public var description: String?
    public var addonType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, description, addonType
    }

    public init(
                jsonData: Data? = nil,
                description: String? = nil,
                addonType: String? = nil
    ) {
        self.jsonData = jsonData
        self.description = description
        self.addonType = addonType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
