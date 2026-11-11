import Foundation

// MARK: - computeinstancegrouprolloutpolicy

public struct computeinstancegrouprolloutpolicy: Codable, Sendable {

    public var jsonData: Data?
    public var batchDelayInSeconds: Int?
    public var policyType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, batchDelayInSeconds, policyType
    }

    public init(
                jsonData: Data? = nil,
                batchDelayInSeconds: Int? = nil,
                policyType: String? = nil
    ) {
        self.jsonData = jsonData
        self.batchDelayInSeconds = batchDelayInSeconds
        self.policyType = policyType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension computeinstancegrouprolloutpolicy: CustomStringConvertible {
    public var description: String { "computeinstancegrouprolloutpolicy()" }
}