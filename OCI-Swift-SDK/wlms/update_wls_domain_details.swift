import Foundation
import OCICommon

// MARK: - UpdateWlsDomainDetails

public struct UpdateWlsDomainDetails: Codable, Sendable {

    public var configuration: UpdateWlsDomainConfigurationDetails?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case configuration, definedTags, freeformTags
    }

    public init(
                configuration: UpdateWlsDomainConfigurationDetails? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil
    ) {
        self.configuration = configuration
        self.definedTags = definedTags
        self.freeformTags = freeformTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateWlsDomainDetails: CustomStringConvertible {
    public var description: String { "UpdateWlsDomainDetails()" }
}