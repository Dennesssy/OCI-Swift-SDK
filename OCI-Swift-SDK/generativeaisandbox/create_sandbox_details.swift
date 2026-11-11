import Foundation
import OCICommon

// MARK: - CreateSandboxDetails

public struct CreateSandboxDetails: Codable, Sendable {

    public var warmpoolName: String?
    public var source: JSONValue?
    public var displayName: String?
    public var runtime: String?
    public var shape: SandboxShapeEnum?
    public var publishedPortAuthMode: SandboxPublishedPortAuthModeEnum?
    public var publishPorts: [String]?
    public var expiresInMinutes: Int?
    public var expirationDuration: String?
    public var environmentVariables: [EnvironmentVariable]?
    public var credentialProfileLabel: String?

    private enum CodingKeys: String, CodingKey {
        case warmpoolName, source, displayName, runtime, shape, publishedPortAuthMode, publishPorts, expiresInMinutes, expirationDuration, environmentVariables, credentialProfileLabel
    }

    public init(
                warmpoolName: String? = nil,
                source: JSONValue? = nil,
                displayName: String? = nil,
                runtime: String? = nil,
                shape: SandboxShapeEnum? = nil,
                publishedPortAuthMode: SandboxPublishedPortAuthModeEnum? = nil,
                publishPorts: [String]? = nil,
                expiresInMinutes: Int? = nil,
                expirationDuration: String? = nil,
                environmentVariables: [EnvironmentVariable]? = nil,
                credentialProfileLabel: String? = nil
    ) {
        self.warmpoolName = warmpoolName
        self.source = source
        self.displayName = displayName
        self.runtime = runtime
        self.shape = shape
        self.publishedPortAuthMode = publishedPortAuthMode
        self.publishPorts = publishPorts
        self.expiresInMinutes = expiresInMinutes
        self.expirationDuration = expirationDuration
        self.environmentVariables = environmentVariables
        self.credentialProfileLabel = credentialProfileLabel
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateSandboxDetails: CustomStringConvertible {
    public var description: String { "CreateSandboxDetails()" }
}