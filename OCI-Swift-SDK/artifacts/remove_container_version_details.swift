import Foundation

// MARK: - RemoveContainerVersionDetails

public struct RemoveContainerVersionDetails: Codable, Sendable {

    public var version: String?

    private enum CodingKeys: String, CodingKey {
        case version
    }

    public init(
                version: String? = nil
    ) {
        self.version = version
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RemoveContainerVersionDetails: CustomStringConvertible {
    public var description: String { "RemoveContainerVersionDetails()" }
}