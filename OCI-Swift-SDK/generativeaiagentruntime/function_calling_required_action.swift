import Foundation

// MARK: - FunctionCallingRequiredAction

public struct FunctionCallingRequiredAction: Codable, Sendable {

    public var actionId: String?
    public var functionCall: FunctionCall?

    private enum CodingKeys: String, CodingKey {
        case actionId, functionCall
    }

    public init(
                actionId: String? = nil,
                functionCall: FunctionCall? = nil
    ) {
        self.actionId = actionId
        self.functionCall = functionCall
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FunctionCallingRequiredAction: CustomStringConvertible {
    public var description: String { "FunctionCallingRequiredAction()" }
}