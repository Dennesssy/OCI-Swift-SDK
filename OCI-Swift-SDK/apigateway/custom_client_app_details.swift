import Foundation

// MARK: - CustomClientAppDetails

public struct CustomClientAppDetails: Codable, Sendable {

    public var clientId: String?
    public var clientSecretId: String?
    public var clientSecretVersionNumber: Int64?

    private enum CodingKeys: String, CodingKey {
        case clientId, clientSecretId, clientSecretVersionNumber
    }

    public init(
                clientId: String? = nil,
                clientSecretId: String? = nil,
                clientSecretVersionNumber: Int64? = nil
    ) {
        self.clientId = clientId
        self.clientSecretId = clientSecretId
        self.clientSecretVersionNumber = clientSecretVersionNumber
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CustomClientAppDetails: CustomStringConvertible {
    public var description: String { "CustomClientAppDetails()" }
}