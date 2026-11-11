import Foundation

// MARK: - RestartWlsDomainDetails

public struct RestartWlsDomainDetails: Codable, Sendable {

    public var isForceServersShutdown: Bool?

    private enum CodingKeys: String, CodingKey {
        case isForceServersShutdown
    }

    public init(
                isForceServersShutdown: Bool? = nil
    ) {
        self.isForceServersShutdown = isForceServersShutdown
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RestartWlsDomainDetails: CustomStringConvertible {
    public var description: String { "RestartWlsDomainDetails()" }
}