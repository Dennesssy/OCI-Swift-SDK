import Foundation

// MARK: - ErrorResponse

public struct ErrorResponse: Codable, Sendable {

    public var code: String?
    public var message: String?

    private enum CodingKeys: String, CodingKey {
        case code, message
    }

    public init(
                code: String? = nil,
                message: String? = nil
    ) {
        self.code = code
        self.message = message
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ErrorResponse: CustomStringConvertible {
    public var description: String { "ErrorResponse()" }
}