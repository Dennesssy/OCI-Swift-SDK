import Foundation
import OCICommon

// MARK: - CreateConfigurationDetails

public struct CreateConfigurationDetails: Codable, Sendable {

    public var compartmentId: String?
    public var zprStatus: ConfigurationZprStatusEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, zprStatus, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                zprStatus: ConfigurationZprStatusEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.zprStatus = zprStatus
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateConfigurationDetails: CustomStringConvertible {
    public var description: String { "CreateConfigurationDetails()" }
}