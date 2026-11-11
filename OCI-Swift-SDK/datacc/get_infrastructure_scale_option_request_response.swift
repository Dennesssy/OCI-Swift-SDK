import Foundation

// MARK: - GetInfrastructureScaleOptionRequest

public struct GetInfrastructureScaleOptionRequest: Codable, Sendable {
    public var infrastructureId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case infrastructureId, opcRequestId
    }

    public init(
                infrastructureId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.infrastructureId = infrastructureId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetInfrastructureScaleOptionRequest: CustomStringConvertible {
    public var description: String { "GetInfrastructureScaleOptionRequest()" }
}

// MARK: - GetInfrastructureScaleOptionResponse

public struct GetInfrastructureScaleOptionResponse: Codable, Sendable {
    public var opcRequestId: String?
    public var infrastructureScaleOption: InfrastructureScaleOption?

    private enum CodingKeys: String, CodingKey {
        case opcRequestId, infrastructureScaleOption
    }

    public init(
                opcRequestId: String? = nil,
                infrastructureScaleOption: InfrastructureScaleOption? = nil
    ) {
        self.opcRequestId = opcRequestId
        self.infrastructureScaleOption = infrastructureScaleOption
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GetInfrastructureScaleOptionResponse: CustomStringConvertible {
    public var description: String { "GetInfrastructureScaleOptionResponse()" }
}