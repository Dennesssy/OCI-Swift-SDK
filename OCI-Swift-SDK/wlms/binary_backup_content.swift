import Foundation

// MARK: - BinaryBackupContent

public struct BinaryBackupContent: Codable, Sendable {

    public var middleware: MiddlewareBinaryBackupContent?

    private enum CodingKeys: String, CodingKey {
        case middleware
    }

    public init(
                middleware: MiddlewareBinaryBackupContent? = nil
    ) {
        self.middleware = middleware
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BinaryBackupContent: CustomStringConvertible {
    public var description: String { "BinaryBackupContent()" }
}