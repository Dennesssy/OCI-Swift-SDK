import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/update_retention_rule_details.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct UpdateRetentionRuleDetails: Codable, Sendable {
    public var displayName: String?
    public var duration: Duration?
    public var timeRuleLocked: Date?

    public init(displayName: String? = nil, duration: Duration? = nil, timeRuleLocked: Date? = nil) {
        self.displayName = displayName
        self.duration = duration
        self.timeRuleLocked = timeRuleLocked
    }
}
