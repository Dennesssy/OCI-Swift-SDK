import Foundation

// MARK: - ClientCertificate

public struct ClientCertificate: Codable, Sendable {

    public var fileName: String?
    public var content: String?

    private enum CodingKeys: String, CodingKey {
        case fileName, content
    }

    public init(
                fileName: String? = nil,
                content: String? = nil
    ) {
        self.fileName = fileName
        self.content = content
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ClientCertificate: CustomStringConvertible {
    public var description: String { "ClientCertificate()" }
}