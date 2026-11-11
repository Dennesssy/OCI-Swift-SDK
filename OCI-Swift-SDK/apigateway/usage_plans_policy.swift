import Foundation

// MARK: - UsagePlansPolicy

public struct UsagePlansPolicy: Codable, Sendable {

    public var tokenLocations: [String]

    private enum CodingKeys: String, CodingKey {
        case tokenLocations
    }

    public init(
                tokenLocations: [String]
    ) {
        self.tokenLocations = tokenLocations
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UsagePlansPolicy: CustomStringConvertible {
    public var description: String { "UsagePlansPolicy()" }
}