import Foundation

// MARK: - validatedatabasetoolsconnectionresult

public struct validatedatabasetoolsconnectionresult: Codable, Sendable {

    public var jsonData: Data?
    public var cause: String?
    public var action: String?
    public var code: String?
    public var message: String?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, cause, action, code, message, type
    }

    public init(
                jsonData: Data? = nil,
                cause: String? = nil,
                action: String? = nil,
                code: String? = nil,
                message: String? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.cause = cause
        self.action = action
        self.code = code
        self.message = message
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension validatedatabasetoolsconnectionresult: CustomStringConvertible {
    public var description: String { "validatedatabasetoolsconnectionresult()" }
}