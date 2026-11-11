import Foundation

// MARK: - FunctionCallingPerformedAction

public struct FunctionCallingPerformedAction: Codable, Sendable {

    public var actionId: String?
    public var functionCallOutput: String?

    private enum CodingKeys: String, CodingKey {
        case actionId, functionCallOutput
    }

    public init(
                actionId: String? = nil,
                functionCallOutput: String? = nil
    ) {
        self.actionId = actionId
        self.functionCallOutput = functionCallOutput
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FunctionCallingPerformedAction: CustomStringConvertible {
    public var description: String { "FunctionCallingPerformedAction()" }
}