import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/object_lifecycle_rule.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct ObjectLifecycleRule: Codable, Sendable {
    public var name: String?
    public var action: String?
    public var timeAmount: Int64?
    public var timeUnit: ObjectLifecycleRuleTimeUnitEnum?
    public var isEnabled: Bool?
    public var target: String?
    public var objectNameFilter: ObjectNameFilter?

    public init(name: String? = nil, action: String? = nil, timeAmount: Int64? = nil, timeUnit: ObjectLifecycleRuleTimeUnitEnum? = nil, isEnabled: Bool? = nil, target: String? = nil, objectNameFilter: ObjectNameFilter? = nil) {
        self.name = name
        self.action = action
        self.timeAmount = timeAmount
        self.timeUnit = timeUnit
        self.isEnabled = isEnabled
        self.target = target
        self.objectNameFilter = objectNameFilter
    }
}

public enum ObjectLifecycleRuleTimeUnitEnum: String, Codable, Sendable, CaseIterable {
    case days = "DAYS"
    case years = "YEARS"
}
