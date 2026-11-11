import Foundation

// MARK: - DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDefaultSummary

public struct DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDefaultSummary: Codable, Sendable {

    public var key: String?
    public var displayName: String?
    public var timeCreated: Date?
    public var timeUpdated: Date?

    private enum CodingKeys: String, CodingKey {
        case key, displayName, timeCreated, timeUpdated
    }

    public init(
                key: String? = nil,
                displayName: String? = nil,
                timeCreated: Date? = nil,
                timeUpdated: Date? = nil
    ) {
        self.key = key
        self.displayName = displayName
        self.timeCreated = timeCreated
        self.timeUpdated = timeUpdated
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDefaultSummary: CustomStringConvertible {
    public var description: String { "DatabaseToolsDatabaseApiGatewayConfigPoolAutoApiSpecDefaultSummary()" }
}