import Foundation

// MARK: - PredictRequest

public struct PredictRequest: Codable, Sendable {
    public var modelDeploymentId: String?
    public var requestBody: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case modelDeploymentId, requestBody, opcRequestId
    }

    public init(
                modelDeploymentId: String? = nil,
                requestBody: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.modelDeploymentId = modelDeploymentId
        self.requestBody = requestBody
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PredictRequest: CustomStringConvertible {
    public var description: String { "PredictRequest()" }
}

// MARK: - PredictResponse

public struct PredictResponse: Codable, Sendable {
    public var value: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case value, opcRequestId
    }

    public init(
                value: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.value = value
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PredictResponse: CustomStringConvertible {
    public var description: String { "PredictResponse()" }
}