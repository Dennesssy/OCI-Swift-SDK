import Foundation

// MARK: - createbatchtaskdetails

public struct createbatchtaskdetails: Codable, Sendable {

    public var jsonData: Data?
    public var description: String?
    public var entitlementClaims: [String]?
    public var dependencies: [String]?
    public var environmentVariables: [EnvironmentVariable]?
    public var name: String?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, description, entitlementClaims, dependencies, environmentVariables, name, type
    }

    public init(
                jsonData: Data? = nil,
                description: String? = nil,
                entitlementClaims: [String]? = nil,
                dependencies: [String]? = nil,
                environmentVariables: [EnvironmentVariable]? = nil,
                name: String? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.description = description
        self.entitlementClaims = entitlementClaims
        self.dependencies = dependencies
        self.environmentVariables = environmentVariables
        self.name = name
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
