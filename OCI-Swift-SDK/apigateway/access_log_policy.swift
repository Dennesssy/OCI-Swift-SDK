import Foundation

// MARK: - AccessLogPolicy

public struct AccessLogPolicy: Codable, Sendable {

    public var isEnabled: Bool?

    private enum CodingKeys: String, CodingKey {
        case isEnabled
    }

    public init(
                isEnabled: Bool? = nil
    ) {
        self.isEnabled = isEnabled
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AccessLogPolicy: CustomStringConvertible {
    public var description: String { "AccessLogPolicy()" }
}