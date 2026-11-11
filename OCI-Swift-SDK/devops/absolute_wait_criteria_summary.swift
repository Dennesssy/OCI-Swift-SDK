import Foundation

// MARK: - AbsoluteWaitCriteriaSummary

public struct AbsoluteWaitCriteriaSummary: Codable, Sendable {

    public var waitDuration: String?

    private enum CodingKeys: String, CodingKey {
        case waitDuration
    }

    public init(
                waitDuration: String? = nil
    ) {
        self.waitDuration = waitDuration
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AbsoluteWaitCriteriaSummary: CustomStringConvertible {
    public var description: String { "AbsoluteWaitCriteriaSummary()" }
}