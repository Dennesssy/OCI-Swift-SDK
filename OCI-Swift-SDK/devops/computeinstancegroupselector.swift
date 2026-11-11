import Foundation

// MARK: - computeinstancegroupselector

public struct computeinstancegroupselector: Codable, Sendable {

    public var jsonData: Data?
    public var selectorType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, selectorType
    }

    public init(
                jsonData: Data? = nil,
                selectorType: String? = nil
    ) {
        self.jsonData = jsonData
        self.selectorType = selectorType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension computeinstancegroupselector: CustomStringConvertible {
    public var description: String { "computeinstancegroupselector()" }
}