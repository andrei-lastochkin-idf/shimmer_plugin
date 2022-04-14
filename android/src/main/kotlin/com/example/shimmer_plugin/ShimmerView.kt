package com.example.shimmer_plugin

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import com.example.shimmer_plugin.databinding.ShimmerLayoutBinding
import io.flutter.plugin.platform.PlatformView

internal class ShimmerView(context: Context) : PlatformView {
    private val binding: ShimmerLayoutBinding by lazy {
        ShimmerLayoutBinding.inflate(LayoutInflater.from(context))
    }

    private val viewContainer: View by lazy {
        binding.layoutContainer
    }

    override fun getView(): View = viewContainer

    override fun onFlutterViewAttached(flutterView: View) {
        super.onFlutterViewAttached(flutterView)
        binding.shimmerView.startShimmer()
    }

    override fun dispose() {}
}