import Foundation
import OCICommon

// MARK: - CreateBatchTaskProfileDetails

public struct CreateBatchTaskProfileDetails: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var description: String?
    public var minOcpus: Int?
    public var minMemoryInGBs: Int?
    public var minDiskSizeInGBs: Int?
    public var extendedInformation: JSONValue?
    public var definedTags: [String: [String: JSONValue]]?
    public var freeformTags: [String: String]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, description, minOcpus, minMemoryInGBs, minDiskSizeInGBs, extendedInformation, definedTags, freeformTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                description: String? = nil,
                minOcpus: Int? = nil,
                minMemoryInGBs: Int? = nil,
                minDiskSizeInGBs: Int? = nil,
                extendedInformation: JSONValue? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                freeformTags: [String: String]? = nil
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.description = description
        self.minOcpus = minOcpus
        self.minMemoryInGBs = minMemoryInGBs
        self.minDiskSizeInGBs = minDiskSizeInGBs
        self.extendedInformation = extendedInformation
        self.definedTags = definedTags
        self.freeformTags = freeformTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
