package com.example.shimmer_plugin

import android.content.Context
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory

class NativeViewFactory : PlatformViewFactory(StandardMessageCodec.INSTANCE) {
    @Suppress("UNCHECKED_CAST")
    override fun create(context: Context, viewId: Int, args: Any?): PlatformView =
        ShimmerView(context)
}