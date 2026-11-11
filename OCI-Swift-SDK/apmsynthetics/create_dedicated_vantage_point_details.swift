import Foundation
import OCICommon

// MARK: - CreateDedicatedVantagePointDetails

public struct CreateDedicatedVantagePointDetails: Codable, Sendable {

    public var displayName: String?
    public var dvpStackDetails: JSONValue
    public var region: String?
    public var status: DedicatedVantagePointStatusEnum?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, dvpStackDetails, region, status, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                dvpStackDetails: JSONValue,
                region: String? = nil,
                status: DedicatedVantagePointStatusEnum? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.dvpStackDetails = dvpStackDetails
        self.region = region
        self.status = status
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateDedicatedVantagePointDetails: CustomStringConvertible {
    public var description: String { "CreateDedicatedVantagePointDetails()" }
}