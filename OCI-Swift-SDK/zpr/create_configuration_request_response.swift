import Foundation

// MARK: - CreateConfigurationRequest

public struct CreateConfigurationRequest: Codable, Sendable {
    public var opcRequestId: String?
    public var opcDryRun: Bool?
    public var createConfigurationDetails: CreateConfigurationDetails?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcDryRun, createConfigurationDetails
    }

    public init(
                opcRequestId: String? = nil,
                opcDryRun: Bool? = nil,
                createConfigurationDetails: CreateConfigurationDetails? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcDryRun = opcDryRun
        self.createConfigurationDetails = createConfigurationDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateConfigurationRequest: CustomStringConvertible {
    public var description: String { "CreateConfigurationRequest()" }
}

// MARK: - CreateConfigurationResponse

public struct CreateConfigurationResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var opcWorkRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, opcWorkRequestId
    }

    public init(
                opcRequestId: String? = nil,
                opcWorkRequestId: String? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.opcWorkRequestId = opcWorkRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateConfigurationResponse: CustomStringConvertible {
    public var description: String { "CreateConfigurationResponse()" }
}