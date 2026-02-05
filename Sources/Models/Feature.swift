import SwiftUI

struct Feature: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let systemImage: String
    let gradient: LinearGradient

    static let sample: [Feature] = [
        Feature(
            title: "Nova Focus",
            subtitle: "A calm, guided breathing loop to reset your mind.",
            systemImage: "sparkles",
            gradient: LinearGradient(
                colors: [.purple, .blue],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        ),
        Feature(
            title: "Orbit Tasks",
            subtitle: "Organize daily goals into quick, orbiting chips.",
            systemImage: "circle.grid.cross",
            gradient: LinearGradient(
                colors: [.teal, .mint],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        ),
        Feature(
            title: "Pulse Streak",
            subtitle: "Track streak energy with a neon pulse meter.",
            systemImage: "waveform.path.ecg",
            gradient: LinearGradient(
                colors: [.orange, .pink],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
    ]
}
