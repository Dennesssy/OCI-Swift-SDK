import Foundation

// MARK: - ResourceInventory

public struct ResourceInventory: Codable, Sendable {

    public var wlsDomainCount: Int?
    public var managedInstanceCount: Int?
    public var wlsDomainNotInLatestPatchCount: Int?
    public var wlsDomainWithPatchReadinessWarningCount: Int?
    public var wlsDomainWithPatchReadinessErrorCount: Int?
    public var managedInstanceWithPatchReadinessWarningCount: Int?
    public var managedInstanceWithPatchReadinessErrorCount: Int?

    private enum CodingKeys: String, CodingKey {
        case wlsDomainCount, managedInstanceCount, wlsDomainNotInLatestPatchCount, wlsDomainWithPatchReadinessWarningCount, wlsDomainWithPatchReadinessErrorCount, managedInstanceWithPatchReadinessWarningCount, managedInstanceWithPatchReadinessErrorCount
    }

    public init(
                wlsDomainCount: Int? = nil,
                managedInstanceCount: Int? = nil,
                wlsDomainNotInLatestPatchCount: Int? = nil,
                wlsDomainWithPatchReadinessWarningCount: Int? = nil,
                wlsDomainWithPatchReadinessErrorCount: Int? = nil,
                managedInstanceWithPatchReadinessWarningCount: Int? = nil,
                managedInstanceWithPatchReadinessErrorCount: Int? = nil
    ) {
        self.wlsDomainCount = wlsDomainCount
        self.managedInstanceCount = managedInstanceCount
        self.wlsDomainNotInLatestPatchCount = wlsDomainNotInLatestPatchCount
        self.wlsDomainWithPatchReadinessWarningCount = wlsDomainWithPatchReadinessWarningCount
        self.wlsDomainWithPatchReadinessErrorCount = wlsDomainWithPatchReadinessErrorCount
        self.managedInstanceWithPatchReadinessWarningCount = managedInstanceWithPatchReadinessWarningCount
        self.managedInstanceWithPatchReadinessErrorCount = managedInstanceWithPatchReadinessErrorCount
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResourceInventory: CustomStringConvertible {
    public var description: String { "ResourceInventory()" }
}