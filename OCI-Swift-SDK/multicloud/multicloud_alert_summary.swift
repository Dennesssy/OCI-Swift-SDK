import Foundation
import OCICommon

// MARK: - MulticloudAlertSummary

public struct MulticloudAlertSummary: Codable, Sendable {

    public var count: Int?
    public var multicloudAlerts: [MulticloudAlert]
    public var lifecycleState: MulticloudAlertLifecycleStateEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case count, multicloudAlerts, lifecycleState, freeformTags, definedTags, systemTags
    }

    public init(
                count: Int? = nil,
                multicloudAlerts: [MulticloudAlert],
                lifecycleState: MulticloudAlertLifecycleStateEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.count = count
        self.multicloudAlerts = multicloudAlerts
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MulticloudAlertSummary: CustomStringConvertible {
    public var description: String { "MulticloudAlertSummary()" }
}