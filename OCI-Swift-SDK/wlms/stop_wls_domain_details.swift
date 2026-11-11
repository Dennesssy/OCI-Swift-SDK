import Foundation

// MARK: - StopWlsDomainDetails

public struct StopWlsDomainDetails: Codable, Sendable {

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

extension StopWlsDomainDetails: CustomStringConvertible {
    public var description: String { "StopWlsDomainDetails()" }
}