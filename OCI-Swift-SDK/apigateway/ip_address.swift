import Foundation

// MARK: - IpAddress

public struct IpAddress: Codable, Sendable {

    public var ipAddress: String?

    private enum CodingKeys: String, CodingKey {
        case ipAddress
    }

    public init(
                ipAddress: String? = nil
    ) {
        self.ipAddress = ipAddress
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension IpAddress: CustomStringConvertible {
    public var description: String { "IpAddress()" }
}