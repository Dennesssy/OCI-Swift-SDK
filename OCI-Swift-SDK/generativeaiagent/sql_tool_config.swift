import Foundation
import OCICommon

// MARK: - SqlToolConfig

public struct SqlToolConfig: Codable, Sendable {

    public var iclExamples: JSONValue?
    public var databaseSchema: JSONValue?
    public var shouldEnableSqlExecution: Bool?
    public var shouldEnableSelfCorrection: Bool?
    public var tableAndColumnDescription: JSONValue?
    public var generationLlmCustomization: LlmCustomization?
    public var databaseConnection: JSONValue?
    public var runtimeVersion: String?
    public var dialect: SqlToolConfigDialectEnum
    public var modelSize: SqlToolConfigModelSizeEnum?

    private enum CodingKeys: String, CodingKey {
        case iclExamples, databaseSchema, shouldEnableSqlExecution, shouldEnableSelfCorrection, tableAndColumnDescription, generationLlmCustomization, databaseConnection, runtimeVersion, dialect, modelSize
    }

    public init(
                iclExamples: JSONValue? = nil,
                databaseSchema: JSONValue? = nil,
                shouldEnableSqlExecution: Bool? = nil,
                shouldEnableSelfCorrection: Bool? = nil,
                tableAndColumnDescription: JSONValue? = nil,
                generationLlmCustomization: LlmCustomization? = nil,
                databaseConnection: JSONValue? = nil,
                runtimeVersion: String? = nil,
                dialect: SqlToolConfigDialectEnum,
                modelSize: SqlToolConfigModelSizeEnum? = nil
    ) {
        self.iclExamples = iclExamples
        self.databaseSchema = databaseSchema
        self.shouldEnableSqlExecution = shouldEnableSqlExecution
        self.shouldEnableSelfCorrection = shouldEnableSelfCorrection
        self.tableAndColumnDescription = tableAndColumnDescription
        self.generationLlmCustomization = generationLlmCustomization
        self.databaseConnection = databaseConnection
        self.runtimeVersion = runtimeVersion
        self.dialect = dialect
        self.modelSize = modelSize
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SqlToolConfig: CustomStringConvertible {
    public var description: String { "SqlToolConfig()" }
}