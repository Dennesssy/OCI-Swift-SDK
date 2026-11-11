import Foundation
import OCICommon

// MARK: - UpdateDedicatedVantagePointDetails

public struct UpdateDedicatedVantagePointDetails: Codable, Sendable {

    public var status: DedicatedVantagePointStatusEnum?
    public var dvpStackDetails: JSONValue?
    public var region: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case status, dvpStackDetails, region, freeformTags, definedTags
    }

    public init(
                status: DedicatedVantagePointStatusEnum? = nil,
                dvpStackDetails: JSONValue? = nil,
                region: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.status = status
        self.dvpStackDetails = dvpStackDetails
        self.region = region
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension UpdateDedicatedVantagePointDetails: CustomStringConvertible {
    public var description: String { "UpdateDedicatedVantagePointDetails()" }
}