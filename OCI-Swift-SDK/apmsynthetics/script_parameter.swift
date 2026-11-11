import Foundation

// MARK: - ScriptParameter

public struct ScriptParameter: Codable, Sendable {

    public var paramName: String?
    public var paramValue: String?
    public var isSecret: Bool?

    private enum CodingKeys: String, CodingKey {
        case paramName, paramValue, isSecret
    }

    public init(
                paramName: String? = nil,
                paramValue: String? = nil,
                isSecret: Bool? = nil
    ) {
        self.paramName = paramName
        self.paramValue = paramValue
        self.isSecret = isSecret
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScriptParameter: CustomStringConvertible {
    public var description: String { "ScriptParameter()" }
}