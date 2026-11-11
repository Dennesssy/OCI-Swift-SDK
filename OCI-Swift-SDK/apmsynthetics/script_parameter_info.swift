import Foundation

// MARK: - ScriptParameterInfo

public struct ScriptParameterInfo: Codable, Sendable {

    public var scriptParameter: ScriptParameter?
    public var isOverwritten: Bool?

    private enum CodingKeys: String, CodingKey {
        case scriptParameter, isOverwritten
    }

    public init(
                scriptParameter: ScriptParameter? = nil,
                isOverwritten: Bool? = nil
    ) {
        self.scriptParameter = scriptParameter
        self.isOverwritten = isOverwritten
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScriptParameterInfo: CustomStringConvertible {
    public var description: String { "ScriptParameterInfo()" }
}