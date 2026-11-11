import Foundation
import OCICommon

// MARK: - CreateWorkerDetails

public struct CreateWorkerDetails: Codable, Sendable {

    public var name: String?
    public var version: String?
    public var resourcePrincipalTokenPublicKey: String?
    public var configurationDetails: JSONValue?
    public var workerType: OnPremiseVantagePointWorkerTypeEnum?
    public var status: OnPremiseVantagePointWorkerStatusEnum?
    public var priority: Int?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case name, version, resourcePrincipalTokenPublicKey, configurationDetails, workerType, status, priority, freeformTags, definedTags
    }

    public init(
                name: String? = nil,
                version: String? = nil,
                resourcePrincipalTokenPublicKey: String? = nil,
                configurationDetails: JSONValue? = nil,
                workerType: OnPremiseVantagePointWorkerTypeEnum? = nil,
                status: OnPremiseVantagePointWorkerStatusEnum? = nil,
                priority: Int? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.name = name
        self.version = version
        self.resourcePrincipalTokenPublicKey = resourcePrincipalTokenPublicKey
        self.configurationDetails = configurationDetails
        self.workerType = workerType
        self.status = status
        self.priority = priority
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateWorkerDetails: CustomStringConvertible {
    public var description: String { "CreateWorkerDetails()" }
}