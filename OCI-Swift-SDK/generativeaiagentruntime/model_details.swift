import Foundation

// MARK: - ModelDetails

public struct ModelDetails: Codable, Sendable {

    public var modelName: String?
    public var modelVersion: String?
    public var modelParams: ModelParams?

    private enum CodingKeys: String, CodingKey {
        case modelName, modelVersion, modelParams
    }

    public init(
                modelName: String? = nil,
                modelVersion: String? = nil,
                modelParams: ModelParams? = nil
    ) {
        self.modelName = modelName
        self.modelVersion = modelVersion
        self.modelParams = modelParams
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ModelDetails: CustomStringConvertible {
    public var description: String { "ModelDetails()" }
}