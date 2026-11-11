import Foundation
import OCICommon

// MARK: - UpdateWorkerDetails

public struct UpdateWorkerDetails: Codable, Sendable {

    public var configurationDetails: JSONValue?
    public var status: OnPremiseVantagePointWorkerStatusEnum?
    public var priority: Int?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case configurationDetails, status, priority, freeformTags, definedTags
    }

    public init(
                configurationDetails: JSONValue? = nil,
                status: OnPremiseVantagePointWorkerStatusEnum? = nil,
                priority: Int? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.configurationDetails = configurationDetails
        self.status = status
        self.priority = priority
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateWorkerDetails: CustomStringConvertible {
    public var description: String { "UpdateWorkerDetails()" }
}