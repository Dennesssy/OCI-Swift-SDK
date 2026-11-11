import Foundation

// MARK: - MonitorScriptParameter

public struct MonitorScriptParameter: Codable, Sendable {

    public var paramName: String?
    public var paramValue: String?

    private enum CodingKeys: String, CodingKey {
        case paramName, paramValue
    }

    public init(
                paramName: String? = nil,
                paramValue: String? = nil
    ) {
        self.paramName = paramName
        self.paramValue = paramValue
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension MonitorScriptParameter: CustomStringConvertible {
    public var description: String { "MonitorScriptParameter()" }
}