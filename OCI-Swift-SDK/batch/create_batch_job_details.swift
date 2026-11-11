import Foundation
import OCICommon

// MARK: - CreateBatchJobDetails

public struct CreateBatchJobDetails: Codable, Sendable {

    public var compartmentId: String?
    public var batchJobPoolId: String?
    public var tasks: [JSONValue]
    public var displayName: String?
    public var description: String?
    public var environmentVariables: [EnvironmentVariable]?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, batchJobPoolId, tasks, displayName, description, environmentVariables, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                batchJobPoolId: String? = nil,
                tasks: [JSONValue],
                displayName: String? = nil,
                description: String? = nil,
                environmentVariables: [EnvironmentVariable]? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.batchJobPoolId = batchJobPoolId
        self.tasks = tasks
        self.displayName = displayName
        self.description = description
        self.environmentVariables = environmentVariables
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
