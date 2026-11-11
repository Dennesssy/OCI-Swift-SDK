import Foundation

// MARK: - PredictWithResponseStreamRequest

public struct PredictWithResponseStreamRequest: Codable, Sendable {
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

extension PredictWithResponseStreamRequest: CustomStringConvertible {
    public var description: String { "PredictWithResponseStreamRequest()" }
}

// MARK: - PredictWithResponseStreamResponse

public struct PredictWithResponseStreamResponse: Codable, Sendable {
    public var content: Data?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case content, opcRequestId
    }

    public init(
                content: Data? = nil,
                opcRequestId: String? = nil
    ) {
        self.content = content
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PredictWithResponseStreamResponse: CustomStringConvertible {
    public var description: String { "PredictWithResponseStreamResponse()" }
}