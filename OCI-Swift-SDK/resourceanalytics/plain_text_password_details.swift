import Foundation

// MARK: - PlainTextPasswordDetails

public struct PlainTextPasswordDetails: Codable, Sendable {

    public var password: String?

    private enum CodingKeys: String, CodingKey {
        case password
    }

    public init(
                password: String? = nil
    ) {
        self.password = password
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PlainTextPasswordDetails: CustomStringConvertible {
    public var description: String { "PlainTextPasswordDetails()" }
}