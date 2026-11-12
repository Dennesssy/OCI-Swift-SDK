import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/retention_rule_collection.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct RetentionRuleCollection: Codable, Sendable {
    public var items: [RetentionRuleSummary]?

    public init(items: [RetentionRuleSummary]? = nil) {
        self.items = items
    }
}
