import Foundation

// MARK: - DiagnosisStoreCollection

public struct DiagnosisStoreCollection: Codable, Sendable {

    public var items: [DiagnosisStoreSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [DiagnosisStoreSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DiagnosisStoreCollection: CustomStringConvertible {
    public var description: String { "DiagnosisStoreCollection()" }
}