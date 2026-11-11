import Foundation

// MARK: - InferenceResult

public struct InferenceResult: Codable, Sendable {

    public var data: Data

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public init(
                data: Data
    ) {
        self.data = data
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InferenceResult: CustomStringConvertible {
    public var description: String { "InferenceResult()" }
}