import Foundation

// MARK: - MiddlewareBinaryBackupContent

public struct MiddlewareBinaryBackupContent: Codable, Sendable {

    public var version: String?
    public var patches: [MiddlewareBackupPatch]?

    private enum CodingKeys: String, CodingKey {
        case version, patches
    }

    public init(
                version: String? = nil,
                patches: [MiddlewareBackupPatch]? = nil
    ) {
        self.version = version
        self.patches = patches
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MiddlewareBinaryBackupContent: CustomStringConvertible {
    public var description: String { "MiddlewareBinaryBackupContent()" }
}