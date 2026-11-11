import Foundation

// MARK: - EntitlementSummary

public struct EntitlementSummary: Codable, Sendable {

    public var name: String?
    public var description: String?
    public var rateLimit: RateLimit?
    public var quota: Quota?

    private enum CodingKeys: String, CodingKey {
        case name, description, rateLimit, quota
    }

    public init(
                name: String? = nil,
                description: String? = nil,
                rateLimit: RateLimit? = nil,
                quota: Quota? = nil
    ) {
        self.name = name
        self.description = description
        self.rateLimit = rateLimit
        self.quota = quota
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
