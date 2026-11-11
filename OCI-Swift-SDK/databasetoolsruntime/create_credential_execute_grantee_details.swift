import Foundation

// MARK: - CreateCredentialExecuteGranteeDetails

public struct CreateCredentialExecuteGranteeDetails: Codable, Sendable {

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

extension CreateCredentialExecuteGranteeDetails: CustomStringConvertible {
    public var description: String { "CreateCredentialExecuteGranteeDetails()" }
}