import Foundation

// MARK: - FullyQualifiedScope

public struct FullyQualifiedScope: Codable, Sendable {

    public var audience: String?
    public var scope: String?

    private enum CodingKeys: String, CodingKey {
        case audience, scope
    }

    public init(
                audience: String? = nil,
                scope: String? = nil
    ) {
        self.audience = audience
        self.scope = scope
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FullyQualifiedScope: CustomStringConvertible {
    public var description: String { "FullyQualifiedScope()" }
}