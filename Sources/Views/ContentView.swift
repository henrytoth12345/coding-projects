import SwiftUI

struct ContentView: View {
    @State private var ambientMode = true
    @State private var energyLevel = 0.72

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.05, green: 0.07, blue: 0.16),
                    Color(red: 0.12, green: 0.14, blue: 0.3)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    header
                    moodCard

                    Text("Daily Boosts")
                        .font(.title2.bold())
                        .foregroundStyle(.white)

                    ForEach(Feature.sample) { feature in
                        FeatureCard(feature: feature)
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 32)
            }
        }
        .preferredColorScheme(.dark)
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Stellar Flow")
                .font(.largeTitle.bold())
                .foregroundStyle(.white)

            Text("A cool SwiftUI home base for focus, energy, and daily momentum.")
                .font(.body)
                .foregroundStyle(.white.opacity(0.8))
        }
    }

    private var moodCard: some View {
        VStack(alignment: .leading, spacing: 18) {
            HStack {
                Text("Ambient Mode")
                    .font(.headline)
                Spacer()
                Toggle("Ambient Mode", isOn: $ambientMode)
                    .labelsHidden()
            }

            VStack(alignment: .leading, spacing: 10) {
                Text("Energy Level")
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.7))

                Slider(value: $energyLevel, in: 0...1)
                    .tint(.mint)
            }

            HStack(spacing: 12) {
                Image(systemName: ambientMode ? "moon.stars.fill" : "sun.max.fill")
                    .font(.title2)
                    .foregroundStyle(ambientMode ? .mint : .orange)
                Text(ambientMode ? "Drift into a calm, focused vibe." : "Let the energy spike with bright focus.")
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.85))
            }
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 24, style: .continuous)
                .fill(Color.white.opacity(0.08))
                .overlay(
                    RoundedRectangle(cornerRadius: 24, style: .continuous)
                        .stroke(Color.white.opacity(0.1), lineWidth: 1)
                )
        )
    }
}

#Preview {
    ContentView()
}
