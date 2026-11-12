import Foundation
import OCICommon

// Derived from oci-go-sdk (v65.130.0) objectstorage/duration.go: field names are the Go json tags, enum cases are the Go constants' wire values.

public struct Duration: Codable, Sendable {
    public var timeAmount: Int64?
    public var timeUnit: DurationTimeUnitEnum?

    public init(timeAmount: Int64? = nil, timeUnit: DurationTimeUnitEnum? = nil) {
        self.timeAmount = timeAmount
        self.timeUnit = timeUnit
    }
}

public enum DurationTimeUnitEnum: String, Codable, Sendable, CaseIterable {
    case years = "YEARS"
    case days = "DAYS"
}
