import Foundation

// MARK: - apischemainputlocation

public struct apischemainputlocation: Codable, Sendable {

    public var jsonData: Data?
    public var apiSchemaInputLocationType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, apiSchemaInputLocationType
    }

    public init(
                jsonData: Data? = nil,
                apiSchemaInputLocationType: String? = nil
    ) {
        self.jsonData = jsonData
        self.apiSchemaInputLocationType = apiSchemaInputLocationType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension apischemainputlocation: CustomStringConvertible {
    public var description: String { "apischemainputlocation()" }
}