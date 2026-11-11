import Foundation

// MARK: - NginxBlueGreenStrategy

public struct NginxBlueGreenStrategy: Codable, Sendable {

    public var namespaceA: String?
    public var namespaceB: String?
    public var ingressName: String?

    private enum CodingKeys: String, CodingKey {
        case namespaceA, namespaceB, ingressName
    }

    public init(
                namespaceA: String? = nil,
                namespaceB: String? = nil,
                ingressName: String? = nil
    ) {
        self.namespaceA = namespaceA
        self.namespaceB = namespaceB
        self.ingressName = ingressName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NginxBlueGreenStrategy: CustomStringConvertible {
    public var description: String { "NginxBlueGreenStrategy()" }
}