import Foundation

// MARK: - VantagePointExecution

public struct VantagePointExecution: Codable, Sendable {

    public var name: String?
    public var executions: [Int64]?

    private enum CodingKeys: String, CodingKey {
        case name, executions
    }

    public init(
                name: String? = nil,
                executions: [Int64]? = nil
    ) {
        self.name = name
        self.executions = executions
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension VantagePointExecution: CustomStringConvertible {
    public var description: String { "VantagePointExecution()" }
}