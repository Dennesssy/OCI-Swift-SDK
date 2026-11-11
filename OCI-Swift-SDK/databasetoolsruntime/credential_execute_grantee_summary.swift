import Foundation

// MARK: - CredentialExecuteGranteeSummary

public struct CredentialExecuteGranteeSummary: Codable, Sendable {

    public var key: String?

    private enum CodingKeys: String, CodingKey {
        case key
    }

    public init(
                key: String? = nil
    ) {
        self.key = key
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CredentialExecuteGranteeSummary: CustomStringConvertible {
    public var description: String { "CredentialExecuteGranteeSummary()" }
}