import SwiftUI

struct FeatureCard: View {
    let feature: Feature

    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: feature.systemImage)
                .font(.system(size: 28, weight: .semibold))
                .frame(width: 56, height: 56)
                .foregroundStyle(.white)
                .background(
                    Circle()
                        .fill(Color.white.opacity(0.2))
                )

            VStack(alignment: .leading, spacing: 6) {
                Text(feature.title)
                    .font(.headline)
                Text(feature.subtitle)
                    .font(.subheadline)
                    .foregroundStyle(.white.opacity(0.8))
            }

            Spacer()
        }
        .padding()
        .background(feature.gradient)
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .shadow(color: .black.opacity(0.18), radius: 12, x: 0, y: 10)
    }
}

#Preview {
    FeatureCard(feature: Feature.sample[0])
        .padding()
        .background(Color.black)
}
