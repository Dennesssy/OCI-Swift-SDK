import Foundation
import OCICommon

// MARK: - UpdateAgentEndpointDetails

public struct UpdateAgentEndpointDetails: Codable, Sendable {

    public var displayName: String?
    public var description: String?
    public var contentModerationConfig: ContentModerationConfig?
    public var guardrailConfig: GuardrailConfig?
    public var metadata: [String: String]?
    public var humanInputConfig: HumanInputConfig?
    public var outputConfig: OutputConfig?
    public var shouldEnableTrace: Bool?
    public var shouldEnableCitation: Bool?
    public var shouldEnableMultiLanguage: Bool?
    public var sessionConfig: SessionConfig?
    public var provisionedCapacityConfig: ProvisionedCapacityConfig?
    public var freeformTags: [String: String]?
    public var definedTags: [String: [String: JSONValue]]?

    private enum CodingKeys: String, CodingKey {
        case displayName, description, contentModerationConfig, guardrailConfig, metadata, humanInputConfig, outputConfig, shouldEnableTrace, shouldEnableCitation, shouldEnableMultiLanguage, sessionConfig, provisionedCapacityConfig, freeformTags, definedTags
    }

    public init(
                displayName: String? = nil,
                description: String? = nil,
                contentModerationConfig: ContentModerationConfig? = nil,
                guardrailConfig: GuardrailConfig? = nil,
                metadata: [String: String]? = nil,
                humanInputConfig: HumanInputConfig? = nil,
                outputConfig: OutputConfig? = nil,
                shouldEnableTrace: Bool? = nil,
                shouldEnableCitation: Bool? = nil,
                shouldEnableMultiLanguage: Bool? = nil,
                sessionConfig: SessionConfig? = nil,
                provisionedCapacityConfig: ProvisionedCapacityConfig? = nil,
                freeformTags: [String: String]? = nil,
                definedTags: [String: [String: JSONValue]]? = nil
    ) {
        self.displayName = displayName
        self.description = description
        self.contentModerationConfig = contentModerationConfig
        self.guardrailConfig = guardrailConfig
        self.metadata = metadata
        self.humanInputConfig = humanInputConfig
        self.outputConfig = outputConfig
        self.shouldEnableTrace = shouldEnableTrace
        self.shouldEnableCitation = shouldEnableCitation
        self.shouldEnableMultiLanguage = shouldEnableMultiLanguage
        self.sessionConfig = sessionConfig
        self.provisionedCapacityConfig = provisionedCapacityConfig
        self.freeformTags = freeformTags
        self.definedTags = definedTags
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
