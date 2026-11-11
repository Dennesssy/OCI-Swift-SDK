import Foundation

// MARK: - approvalpolicy

public struct approvalpolicy: Codable, Sendable {

    public var jsonData: Data?
    public var approvalPolicyType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, approvalPolicyType
    }

    public init(
                jsonData: Data? = nil,
                approvalPolicyType: String? = nil
    ) {
        self.jsonData = jsonData
        self.approvalPolicyType = approvalPolicyType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension approvalpolicy: CustomStringConvertible {
    public var description: String { "approvalpolicy()" }
}