import Foundation

// MARK: - AgreementRecordCollection

public struct AgreementRecordCollection: Codable, Sendable {

    public var items: [AgreementRecordSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [AgreementRecordSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AgreementRecordCollection: CustomStringConvertible {
    public var description: String { "AgreementRecordCollection()" }
}