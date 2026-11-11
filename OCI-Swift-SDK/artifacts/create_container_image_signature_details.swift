import Foundation
import OCICommon

// MARK: - CreateContainerImageSignatureDetails

public struct CreateContainerImageSignatureDetails: Codable, Sendable {

    public var compartmentId: String?
    public var imageId: String?
    public var kmsKeyId: String?
    public var kmsKeyVersionId: String?
    public var message: String?
    public var signature: String?
    public var signingAlgorithm: CreateContainerImageSignatureDetailsSigningAlgorithmEnum
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case compartmentId, imageId, kmsKeyId, kmsKeyVersionId, message, signature, signingAlgorithm, freeformTags, definedTags
    }

    public init(
                compartmentId: String? = nil,
                imageId: String? = nil,
                kmsKeyId: String? = nil,
                kmsKeyVersionId: String? = nil,
                message: String? = nil,
                signature: String? = nil,
                signingAlgorithm: CreateContainerImageSignatureDetailsSigningAlgorithmEnum,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.compartmentId = compartmentId
        self.imageId = imageId
        self.kmsKeyId = kmsKeyId
        self.kmsKeyVersionId = kmsKeyVersionId
        self.message = message
        self.signature = signature
        self.signingAlgorithm = signingAlgorithm
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateContainerImageSignatureDetails: CustomStringConvertible {
    public var description: String { "CreateContainerImageSignatureDetails()" }
}