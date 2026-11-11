import Foundation

// MARK: - PrivilegedApiDetails

public struct PrivilegedApiDetails: Codable, Sendable {

    public var apiName: String?
    public var entityType: String?
    public var attributeNames: [String]?

    private enum CodingKeys: String, CodingKey {
        case apiName, entityType, attributeNames
    }

    public init(
                apiName: String? = nil,
                entityType: String? = nil,
                attributeNames: [String]? = nil
    ) {
        self.apiName = apiName
        self.entityType = entityType
        self.attributeNames = attributeNames
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PrivilegedApiDetails: CustomStringConvertible {
    public var description: String { "PrivilegedApiDetails()" }
}