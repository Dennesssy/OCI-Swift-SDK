import Foundation
import OCICommon

// MARK: - updatedeploymentdetails

public struct updatedeploymentdetails: Codable, Sendable {

    public var jsonData: Data?
    public var displayName: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var deploymentType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, displayName, freeformTags, definedTags, deploymentType
    }

    public init(
                jsonData: Data? = nil,
                displayName: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                deploymentType: String? = nil
    ) {
        self.jsonData = jsonData
        self.displayName = displayName
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.deploymentType = deploymentType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension updatedeploymentdetails: CustomStringConvertible {
    public var description: String { "updatedeploymentdetails()" }
}