# Flutter wrapper
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }

# LiveKit specific rules
-keep class org.webrtc.** { *; }
-keep class io.livekit.** { *; }

# Remove unused Flutter deferred components support (we don't use Play Store split APKs)
# This eliminates the dependency on the deprecated Play Core library
-assumenosideeffects class io.flutter.embedding.engine.deferredcomponents.PlayStoreDeferredComponentManager {
    *;
}

# Suppress warnings for Play Core classes we're not using
-dontwarn com.google.android.play.core.**

# Preserve line numbers for debugging stack traces
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile
