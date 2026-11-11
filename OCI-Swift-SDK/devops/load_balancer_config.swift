import Foundation

// MARK: - LoadBalancerConfig

public struct LoadBalancerConfig: Codable, Sendable {

    public var loadBalancerId: String?
    public var listenerName: String?
    public var backendPort: Int?

    private enum CodingKeys: String, CodingKey {
        case loadBalancerId, listenerName, backendPort
    }

    public init(
                loadBalancerId: String? = nil,
                listenerName: String? = nil,
                backendPort: Int? = nil
    ) {
        self.loadBalancerId = loadBalancerId
        self.listenerName = listenerName
        self.backendPort = backendPort
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension LoadBalancerConfig: CustomStringConvertible {
    public var description: String { "LoadBalancerConfig()" }
}