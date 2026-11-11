import Foundation

// MARK: - ResourceSummary

public struct ResourceSummary: Codable, Sendable {

    public var totalResourcesCount: Int?
    public var registeredResourcesCount: Int?
    public var notRegisteredResourcesCount: Int?
    public var vulnerableResourcesCount: Int?
    public var cleanResourcesCount: Int?
    public var errorResourcesCount: Int?

    private enum CodingKeys: String, CodingKey {
        case totalResourcesCount, registeredResourcesCount, notRegisteredResourcesCount, vulnerableResourcesCount, cleanResourcesCount, errorResourcesCount
    }

    public init(
                totalResourcesCount: Int? = nil,
                registeredResourcesCount: Int? = nil,
                notRegisteredResourcesCount: Int? = nil,
                vulnerableResourcesCount: Int? = nil,
                cleanResourcesCount: Int? = nil,
                errorResourcesCount: Int? = nil
    ) {
        self.totalResourcesCount = totalResourcesCount
        self.registeredResourcesCount = registeredResourcesCount
        self.notRegisteredResourcesCount = notRegisteredResourcesCount
        self.vulnerableResourcesCount = vulnerableResourcesCount
        self.cleanResourcesCount = cleanResourcesCount
        self.errorResourcesCount = errorResourcesCount
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ResourceSummary: CustomStringConvertible {
    public var description: String { "ResourceSummary()" }
}