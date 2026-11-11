import Foundation

// MARK: - PropertySetApexDocumentGeneratorPrintServerTypeEnum

public enum PropertySetApexDocumentGeneratorPrintServerTypeEnum: String, Codable, Sendable {
    case documentGenerator = "DOCUMENT_GENERATOR"
    case none = "NONE"
    case standard = "STANDARD"
    case advanced = "ADVANCED"
    case aop = "AOP"
    case other = "OTHER"
}

public extension PropertySetApexDocumentGeneratorPrintServerTypeEnum {
    static var allValues: [PropertySetApexDocumentGeneratorPrintServerTypeEnum] { [.documentGenerator, .none, .standard, .advanced, .aop, .other] }
    static var allStringValues: [String] { ["DOCUMENT_GENERATOR", "NONE", "STANDARD", "ADVANCED", "AOP", "OTHER"] }
    static func fromString(_ value: String) -> PropertySetApexDocumentGeneratorPrintServerTypeEnum? { PropertySetApexDocumentGeneratorPrintServerTypeEnum(rawValue: value) }
}