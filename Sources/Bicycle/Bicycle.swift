/// 🚲 A two-wheeled, human-powered mode of transportation.
public class Bicycle {
    /// Frame and construction style.
    public enum Style {
        /// A style for streets or trails.
        case road

        /// A style for long journeys.
        case touring

        /// A style for casual trips around town.
        case cruiser

        /// A style for general-purpose transportation.
        case hybrid
    }

    /// Mechanism for converting pedal power into motion.
    public enum Gearing {
        /// A single, fixed gear.
        case fixed

        /// A variable-speed, disengageable gear.
        case freewheel(speeds: Int)
    }

    /// Hardware used for steering.
    public enum Handlebar {
        /// A casual handlebar.
        case riser

        /// An upright handlebar.
        case café

        /// A classic handlebar.
        case drop

        /// A powerful handlebar.
        case bullhorn
    }

    /// The style of the bicycle.
    public let style: Style

    /// The gearing of the bicycle.
    public let gearing: Gearing

    /// The handlebar of the bicycle.
    public let handlebar: Handlebar

    /// The size of the frame, in centimeters.
    public let frameSize: Int

    /// The number of trips travelled by the bicycle.
    private(set) var numberOfTrips: Int

    /// The total distance travelled by the bicycle, in meters.
    private(set) var distanceTravelled: Double

    /**
     Initializes a new bicycle with the provided parts and specifications.

     - Parameters:
        - style: The style of the bicycle
        - gearing: The gearing of the bicycle
        - handlebar: The handlebar of the bicycle
        - frameSize: The frame size of the bicycle, in centimeters

     - Returns: A beautiful, brand-new bicycle,
                custom-built just for you.
     */
    public init(style: Style,
                gearing: Gearing,
                handlebar: Handlebar,
                frameSize centimeters: Int)
    {
        self.style = style
        self.gearing = gearing
        self.handlebar = handlebar
        self.frameSize = centimeters

        self.numberOfTrips = 0
        self.distanceTravelled = 0
    }

    /**
     Take a bike out for a spin.

     - Parameter meters: The distance to travel in meters.
     - Precondition: `meters` must be greater than 0.
     */
    public func travel(distance meters: Double) {
        precondition(meters > 0)
        distanceTravelled += meters
        numberOfTrips += 1
    }
}

// MARK: CustomStringConvertible

extension Bicycle: CustomStringConvertible {
    public var description: String {
        var descriptors: [String] = []

        switch self.style {
        case .road:
            descriptors.append("A road bike for streets or trails")
        case .touring:
            descriptors.append("A touring bike for long journeys")
        case .cruiser:
            descriptors.append("A cruiser bike for casual trips around town")
        case .hybrid:
            descriptors.append("A hybrid bike for general-purpose transportation")
        }

        switch self.gearing {
        case .fixed:
            descriptors.append("with a single, fixed gear")
        case .freewheel(let n):
            descriptors.append("with a \(n)-speed freewheel gear")
        }

        switch self.handlebar {
        case .riser:
            descriptors.append("and casual, riser handlebars")
        case .café:
            descriptors.append("and upright, café handlebars")
        case .drop:
            descriptors.append("and classic, drop handlebars")
        case .bullhorn:
            descriptors.append("and powerful bullhorn handlebars")
        }

        descriptors.append("on a \(frameSize)″ frame")

        // FIXME: Use a distance formatter
        descriptors.append("with a total of \(distanceTravelled) meters traveled over \(numberOfTrips) trips.")

        // TODO: Allow bikes to be named?

        return descriptors.joined(separator: ", ")
    }
}

