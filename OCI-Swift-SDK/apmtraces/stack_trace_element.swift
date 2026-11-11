import Foundation

// MARK: - StackTraceElement

public struct StackTraceElement: Codable, Sendable {

    public var methodName: String?
    public var fileName: String?
    public var lineNumber: Int?
    public var className: String?
    public var weightage: Float?

    private enum CodingKeys: String, CodingKey {
        case methodName, fileName, lineNumber, className, weightage
    }

    public init(
                methodName: String? = nil,
                fileName: String? = nil,
                lineNumber: Int? = nil,
                className: String? = nil,
                weightage: Float? = nil
    ) {
        self.methodName = methodName
        self.fileName = fileName
        self.lineNumber = lineNumber
        self.className = className
        self.weightage = weightage
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension StackTraceElement: CustomStringConvertible {
    public var description: String { "StackTraceElement()" }
}