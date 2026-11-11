import Foundation

// MARK: - MonitorScriptParameterInfo

public struct MonitorScriptParameterInfo: Codable, Sendable {

    public var monitorScriptParameter: MonitorScriptParameter?
    public var isSecret: Bool?
    public var isOverwritten: Bool?

    private enum CodingKeys: String, CodingKey {
        case monitorScriptParameter, isSecret, isOverwritten
    }

    public init(
                monitorScriptParameter: MonitorScriptParameter? = nil,
                isSecret: Bool? = nil,
                isOverwritten: Bool? = nil
    ) {
        self.monitorScriptParameter = monitorScriptParameter
        self.isSecret = isSecret
        self.isOverwritten = isOverwritten
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MonitorScriptParameterInfo: CustomStringConvertible {
    public var description: String { "MonitorScriptParameterInfo()" }
}