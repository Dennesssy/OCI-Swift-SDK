import Foundation

// MARK: - SetRestartOrderDetails

public struct SetRestartOrderDetails: Codable, Sendable {

    public var servers: SetRestartOrderServerCollection?

    private enum CodingKeys: String, CodingKey {
        case servers
    }

    public init(
                servers: SetRestartOrderServerCollection? = nil
    ) {
        self.servers = servers
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SetRestartOrderDetails: CustomStringConvertible {
    public var description: String { "SetRestartOrderDetails()" }
}