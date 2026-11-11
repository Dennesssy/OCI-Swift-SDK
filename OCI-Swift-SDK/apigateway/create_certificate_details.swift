import Foundation
import OCICommon

// MARK: - CreateCertificateDetails

public struct CreateCertificateDetails: Codable, Sendable {

    public var compartmentId: String?
    public var privateKey: String?
    public var certificate: String?
    public var displayName: String?
    public var intermediateCertificates: String?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?
    public var locks: [AddResourceLockDetails]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, privateKey, certificate, displayName, intermediateCertificates, freeformTags, definedTags, locks
    }

    public init(
                compartmentId: String? = nil,
                privateKey: String? = nil,
                certificate: String? = nil,
                displayName: String? = nil,
                intermediateCertificates: String? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil,
                locks: [AddResourceLockDetails]? = nil
    ) {
        self.compartmentId = compartmentId
        self.privateKey = privateKey
        self.certificate = certificate
        self.displayName = displayName
        self.intermediateCertificates = intermediateCertificates
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.locks = locks
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateCertificateDetails: CustomStringConvertible {
    public var description: String { "CreateCertificateDetails()" }
}