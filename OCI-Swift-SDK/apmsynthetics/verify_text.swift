import Foundation

// MARK: - VerifyText

public struct VerifyText: Codable, Sendable {

    public var text: String?

    private enum CodingKeys: String, CodingKey {
        case text
    }

    public init(
                text: String? = nil
    ) {
        self.text = text
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension VerifyText: CustomStringConvertible {
    public var description: String { "VerifyText()" }
}