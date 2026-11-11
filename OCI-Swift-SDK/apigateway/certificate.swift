import Foundation
import OCICommon

// MARK: - Certificate

public struct Certificate: Codable, Sendable {

    public var id: String?
    public var displayName: String?
    public var compartmentId: String?
    public var subjectNames: [String]
    public var timeNotValidAfter: Date?
    public var certificate: String?
    public var timeCreated: Date?
    public var intermediateCertificates: String?
    public var timeUpdated: Date?
    public var locks: [ResourceLock]?
    public var lifecycleState: CertificateLifecycleStateEnum?
    public var lifecycleDetails: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var systemTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case id, displayName, compartmentId, subjectNames, timeNotValidAfter, certificate, timeCreated, intermediateCertificates, timeUpdated, locks, lifecycleState, lifecycleDetails, freeformTags, definedTags, systemTags
    }

    public init(
                id: String? = nil,
                displayName: String? = nil,
                compartmentId: String? = nil,
                subjectNames: [String],
                timeNotValidAfter: Date? = nil,
                certificate: String? = nil,
                timeCreated: Date? = nil,
                intermediateCertificates: String? = nil,
                timeUpdated: Date? = nil,
                locks: [ResourceLock]? = nil,
                lifecycleState: CertificateLifecycleStateEnum? = nil,
                lifecycleDetails: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                systemTags: [String: [String: JSONValue]]? = nil
    ) {
        self.id = id
        self.displayName = displayName
        self.compartmentId = compartmentId
        self.subjectNames = subjectNames
        self.timeNotValidAfter = timeNotValidAfter
        self.certificate = certificate
        self.timeCreated = timeCreated
        self.intermediateCertificates = intermediateCertificates
        self.timeUpdated = timeUpdated
        self.locks = locks
        self.lifecycleState = lifecycleState
        self.lifecycleDetails = lifecycleDetails
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Certificate: CustomStringConvertible {
    public var description: String { "Certificate()" }
}