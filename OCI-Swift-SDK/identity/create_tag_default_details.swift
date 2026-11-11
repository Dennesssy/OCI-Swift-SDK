import Foundation

// MARK: - CreateTagDefaultDetails

public struct CreateTagDefaultDetails: Codable, Sendable {

    public var compartmentId: String?
    public var tagDefinitionId: String?
    public var value: String?
    public var isRequired: Bool?
    public var locks: [AddLockDetails]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, tagDefinitionId, value, isRequired, locks
    }

    public init(
                compartmentId: String? = nil,
                tagDefinitionId: String? = nil,
                value: String? = nil,
                isRequired: Bool? = nil,
                locks: [AddLockDetails]? = nil
    ) {
        self.compartmentId = compartmentId
        self.tagDefinitionId = tagDefinitionId
        self.value = value
        self.isRequired = isRequired
        self.locks = locks
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateTagDefaultDetails: CustomStringConvertible {
    public var description: String { "CreateTagDefaultDetails()" }
}