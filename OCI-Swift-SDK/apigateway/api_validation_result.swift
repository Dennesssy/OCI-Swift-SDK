import Foundation

// MARK: - ApiValidationResult

public struct ApiValidationResult: Codable, Sendable {

    public var name: String?
    public var result: ApiValidationResultResultEnum

    private enum CodingKeys: String, CodingKey {
        case name, result
    }

    public init(
                name: String? = nil,
                result: ApiValidationResultResultEnum
    ) {
        self.name = name
        self.result = result
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ApiValidationResult: CustomStringConvertible {
    public var description: String { "ApiValidationResult()" }
}