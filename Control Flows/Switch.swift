enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
    case .sun:
        print("nice day")
    case .rain:
        print("pack an umbrella")
    default:
        print("should be okay")
}