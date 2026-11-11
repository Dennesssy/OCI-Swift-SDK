import Foundation
import OCICommon

// MARK: - ContainerImageSignatureSummary

public struct ContainerImageSignatureSummary: Codable, Sendable {

    public var compartmentId: String?
    public var displayName: String?
    public var id: String?
    public var imageId: String?
    public var kmsKeyId: String?
    public var kmsKeyVersionId: String?
    public var message: String?
    public var signature: String?
    public var signingAlgorithm: ContainerImageSignatureSummarySigningAlgorithmEnum
    public var timeCreated: Date?
    public var lifecycleState: ContainerImageSignatureLifecycleStateEnum
    public var freeformTags: [String: String]
    public var definedTags: [String: [String: JSONValue]]
    public var systemTags: [String: [String: JSONValue]]

    private enum CodingKeys: String, CodingKey {
        case compartmentId, displayName, id, imageId, kmsKeyId, kmsKeyVersionId, message, signature, signingAlgorithm, timeCreated, lifecycleState, freeformTags, definedTags, systemTags
    }

    public init(
                compartmentId: String? = nil,
                displayName: String? = nil,
                id: String? = nil,
                imageId: String? = nil,
                kmsKeyId: String? = nil,
                kmsKeyVersionId: String? = nil,
                message: String? = nil,
                signature: String? = nil,
                signingAlgorithm: ContainerImageSignatureSummarySigningAlgorithmEnum,
                timeCreated: Date? = nil,
                lifecycleState: ContainerImageSignatureLifecycleStateEnum,
                freeformTags: [String: String],
                definedTags: [String: [String: JSONValue]],
                systemTags: [String: [String: JSONValue]]
    ) {
        self.compartmentId = compartmentId
        self.displayName = displayName
        self.id = id
        self.imageId = imageId
        self.kmsKeyId = kmsKeyId
        self.kmsKeyVersionId = kmsKeyVersionId
        self.message = message
        self.signature = signature
        self.signingAlgorithm = signingAlgorithm
        self.timeCreated = timeCreated
        self.lifecycleState = lifecycleState
        self.freeformTags = freeformTags
        self.definedTags = definedTags
        self.systemTags = systemTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ContainerImageSignatureSummary: CustomStringConvertible {
    public var description: String { "ContainerImageSignatureSummary()" }
}