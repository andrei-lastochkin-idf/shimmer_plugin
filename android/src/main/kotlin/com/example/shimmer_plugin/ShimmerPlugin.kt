package com.example.shimmer_plugin

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin

/** ShimmerPlugin */
class ShimmerPlugin : FlutterPlugin {
    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        flutterPluginBinding
            .platformViewRegistry
            .registerViewFactory("shimmerNative", NativeViewFactory())
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {}
}
