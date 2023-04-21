//
//  PlayerView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import SwiftUI

struct PlayerView: View, KeyboardReadable {

    @Binding var expand: Bool
    var animation: Namespace.ID

    @State private var isKeyboardVisible = false
    @State private var height = UIScreen.main.bounds.height / 3
    @State private var offset: CGFloat = 0

    var body: some View {
        if expand {
            ExpandPlayer(height: height)
                .frame(maxHeight: .infinity)
                .background(
                    VStack(spacing: 0) {
                        BlurView()
                        Divider()
                    }
                )
                .cornerRadius(20)
                .offset(y: 0)
                .offset(y: offset)
                .gesture(
                    DragGesture()
                        .onEnded(onended(value:))
                        .onChanged(onchanged(value:))
                )
                .ignoresSafeArea()
        } else {
            MiniPlayer()
                .frame(maxHeight: 70)
                .background(
                    VStack(spacing: 0) {
                        BlurView()
                        Divider()
                    }
                        .onTapGesture(
                            perform: {
                                withAnimation(.spring()) {
                                    expand.toggle()
                                }
                            }
                        )
                )
                .onReceive(keyboardPublisher) { newIsKeyboardVisible in
                    isKeyboardVisible = newIsKeyboardVisible
                }
                .offset(y: isKeyboardVisible ? 0 : -49)
        }
    }

    private func onchanged(value: DragGesture.Value) {
        if value.translation.height > 0 && expand {
            offset = value.translation.height
        }
    }

    private func onended(value: DragGesture.Value) {
        withAnimation(
            .interactiveSpring(
                response: 0.5,
                dampingFraction: 0.95,
                blendDuration: 0.95
            )
        ) {
            if value.translation.height > height {
                expand = false
            }
            offset = 0
        }
    }
}
