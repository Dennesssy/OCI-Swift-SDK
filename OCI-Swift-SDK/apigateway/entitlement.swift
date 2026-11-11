import Foundation

// MARK: - Entitlement

public struct Entitlement: Codable, Sendable {

    public var name: String?
    public var description: String?
    public var rateLimit: RateLimit?
    public var quota: Quota?
    public var targets: [EntitlementTarget]?

    private enum CodingKeys: String, CodingKey {
        case name, description, rateLimit, quota, targets
    }

    public init(
                name: String? = nil,
                description: String? = nil,
                rateLimit: RateLimit? = nil,
                quota: Quota? = nil,
                targets: [EntitlementTarget]? = nil
    ) {
        self.name = name
        self.description = description
        self.rateLimit = rateLimit
        self.quota = quota
        self.targets = targets
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
