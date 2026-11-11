import Foundation

// MARK: - NginxCanaryStrategy

public struct NginxCanaryStrategy: Codable, Sendable {

    public var namespace: String?
    public var ingressName: String?

    private enum CodingKeys: String, CodingKey {
        case namespace, ingressName
    }

    public init(
                namespace: String? = nil,
                ingressName: String? = nil
    ) {
        self.namespace = namespace
        self.ingressName = ingressName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NginxCanaryStrategy: CustomStringConvertible {
    public var description: String { "NginxCanaryStrategy()" }
}