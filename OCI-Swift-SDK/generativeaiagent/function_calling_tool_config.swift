import Foundation

// MARK: - FunctionCallingToolConfig

public struct FunctionCallingToolConfig: Codable, Sendable {

    public var function: Function?

    private enum CodingKeys: String, CodingKey {
        case function
    }

    public init(
                function: Function? = nil
    ) {
        self.function = function
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FunctionCallingToolConfig: CustomStringConvertible {
    public var description: String { "FunctionCallingToolConfig()" }
}