import Foundation

// MARK: - SingleSelectionSourcePolicy

public struct SingleSelectionSourcePolicy: Codable, Sendable {

    public var selector: String?

    private enum CodingKeys: String, CodingKey {
        case selector
    }

    public init(
                selector: String? = nil
    ) {
        self.selector = selector
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SingleSelectionSourcePolicy: CustomStringConvertible {
    public var description: String { "SingleSelectionSourcePolicy()" }
}