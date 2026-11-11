import Foundation

// MARK: - deploystagerollbackpolicy

public struct deploystagerollbackpolicy: Codable, Sendable {

    public var jsonData: Data?
    public var policyType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, policyType
    }

    public init(
                jsonData: Data? = nil,
                policyType: String? = nil
    ) {
        self.jsonData = jsonData
        self.policyType = policyType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension deploystagerollbackpolicy: CustomStringConvertible {
    public var description: String { "deploystagerollbackpolicy()" }
}