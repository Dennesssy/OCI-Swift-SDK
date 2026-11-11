import Foundation

// MARK: - BulkDeActivationMetadata

public struct BulkDeActivationMetadata: Codable, Sendable {

    public var operationStatus: BulkDeActivationMetadataOperationStatusEnum
    public var operationType: BulkDeActivationMetadataOperationTypeEnum
    public var attributesDeActivated: Int?
    public var syntheticAttributesDeActivated: Int?
    public var availableStringAttributes: Int?
    public var availableNumericAttributes: Int?
    public var availableSyntheticStringAttributes: Int?
    public var availableSyntheticNumericAttributes: Int?

    private enum CodingKeys: String, CodingKey {
        case operationStatus, operationType, attributesDeActivated, syntheticAttributesDeActivated, availableStringAttributes, availableNumericAttributes, availableSyntheticStringAttributes, availableSyntheticNumericAttributes
    }

    public init(
                operationStatus: BulkDeActivationMetadataOperationStatusEnum,
                operationType: BulkDeActivationMetadataOperationTypeEnum,
                attributesDeActivated: Int? = nil,
                syntheticAttributesDeActivated: Int? = nil,
                availableStringAttributes: Int? = nil,
                availableNumericAttributes: Int? = nil,
                availableSyntheticStringAttributes: Int? = nil,
                availableSyntheticNumericAttributes: Int? = nil
    ) {
        self.operationStatus = operationStatus
        self.operationType = operationType
        self.attributesDeActivated = attributesDeActivated
        self.syntheticAttributesDeActivated = syntheticAttributesDeActivated
        self.availableStringAttributes = availableStringAttributes
        self.availableNumericAttributes = availableNumericAttributes
        self.availableSyntheticStringAttributes = availableSyntheticStringAttributes
        self.availableSyntheticNumericAttributes = availableSyntheticNumericAttributes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension BulkDeActivationMetadata: CustomStringConvertible {
    public var description: String { "BulkDeActivationMetadata()" }
}