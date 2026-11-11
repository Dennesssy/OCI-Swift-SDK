import Foundation

// MARK: - DiagnosisSummaryCollection

public struct DiagnosisSummaryCollection: Codable, Sendable {

    public var items: [DiagnosisSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DiagnosisSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DiagnosisSummaryCollection: CustomStringConvertible {
    public var description: String { "DiagnosisSummaryCollection()" }
}