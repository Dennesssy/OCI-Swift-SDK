import Foundation

// MARK: - PrivateKey

public struct PrivateKey: Codable, Sendable {

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

extension PrivateKey: CustomStringConvertible {
    public var description: String { "PrivateKey()" }
}