import Foundation

// MARK: - ResourcesPatchComplianceSummary

public struct ResourcesPatchComplianceSummary: Codable, Sendable {

    public var totalResourcesCount: Int?
    public var upToDateResourcesCount: Int?
    public var nonCompliantResourcesCount: Int?
    public var notSubscribedResourcesCount: Int?
    public var notDblmRegisteredResourcesCount: Int?

    private enum CodingKeys: String, CodingKey {
        case totalResourcesCount, upToDateResourcesCount, nonCompliantResourcesCount, notSubscribedResourcesCount, notDblmRegisteredResourcesCount
    }

    public init(
                totalResourcesCount: Int? = nil,
                upToDateResourcesCount: Int? = nil,
                nonCompliantResourcesCount: Int? = nil,
                notSubscribedResourcesCount: Int? = nil,
                notDblmRegisteredResourcesCount: Int? = nil
    ) {
        self.totalResourcesCount = totalResourcesCount
        self.upToDateResourcesCount = upToDateResourcesCount
        self.nonCompliantResourcesCount = nonCompliantResourcesCount
        self.notSubscribedResourcesCount = notSubscribedResourcesCount
        self.notDblmRegisteredResourcesCount = notDblmRegisteredResourcesCount
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResourcesPatchComplianceSummary: CustomStringConvertible {
    public var description: String { "ResourcesPatchComplianceSummary()" }
}