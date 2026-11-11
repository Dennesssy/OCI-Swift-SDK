import Foundation

// MARK: - HeaderTransformationPolicy

public struct HeaderTransformationPolicy: Codable, Sendable {

    public var setHeaders: SetHeaderPolicy?
    public var renameHeaders: RenameHeaderPolicy?
    public var filterHeaders: FilterHeaderPolicy?

    private enum CodingKeys: String, CodingKey {
        case setHeaders, renameHeaders, filterHeaders
    }

    public init(
                setHeaders: SetHeaderPolicy? = nil,
                renameHeaders: RenameHeaderPolicy? = nil,
                filterHeaders: FilterHeaderPolicy? = nil
    ) {
        self.setHeaders = setHeaders
        self.renameHeaders = renameHeaders
        self.filterHeaders = filterHeaders
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension HeaderTransformationPolicy: CustomStringConvertible {
    public var description: String { "HeaderTransformationPolicy()" }
}