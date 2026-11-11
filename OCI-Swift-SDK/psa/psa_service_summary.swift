import Foundation

// MARK: - PsaServiceSummary

public struct PsaServiceSummary: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var fqdns: [String]
    public var description: String?
    public var isV6Enabled: Bool?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, fqdns, description, isV6Enabled
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                fqdns: [String],
                description: String? = nil,
                isV6Enabled: Bool? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.fqdns = fqdns
        self.description = description
        self.isV6Enabled = isV6Enabled
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
