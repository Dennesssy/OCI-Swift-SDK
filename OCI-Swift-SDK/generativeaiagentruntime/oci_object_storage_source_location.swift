import Foundation

// MARK: - OciObjectStorageSourceLocation

public struct OciObjectStorageSourceLocation: Codable, Sendable {

    public var url: String?

    private enum CodingKeys: String, CodingKey {
        case url
    }

    public init(
                url: String? = nil
    ) {
        self.url = url
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OciObjectStorageSourceLocation: CustomStringConvertible {
    public var description: String { "OciObjectStorageSourceLocation()" }
}