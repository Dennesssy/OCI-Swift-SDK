import Foundation

// MARK: - OracleFunctionBackend

public struct OracleFunctionBackend: Codable, Sendable {

    public var functionId: String?

    private enum CodingKeys: String, CodingKey {
        case functionId
    }

    public init(
                functionId: String? = nil
    ) {
        self.functionId = functionId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OracleFunctionBackend: CustomStringConvertible {
    public var description: String { "OracleFunctionBackend()" }
}