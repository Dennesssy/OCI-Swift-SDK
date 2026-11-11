import Foundation

// MARK: - CredentialExecuteGranteeCollection

public struct CredentialExecuteGranteeCollection: Codable, Sendable {

    public var items: [CredentialExecuteGranteeSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [CredentialExecuteGranteeSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CredentialExecuteGranteeCollection: CustomStringConvertible {
    public var description: String { "CredentialExecuteGranteeCollection()" }
}