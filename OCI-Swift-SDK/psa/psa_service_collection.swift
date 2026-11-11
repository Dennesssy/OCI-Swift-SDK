import Foundation

// MARK: - PsaServiceCollection

public struct PsaServiceCollection: Codable, Sendable {

    public var items: [PsaServiceSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [PsaServiceSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PsaServiceCollection: CustomStringConvertible {
    public var description: String { "PsaServiceCollection()" }
}