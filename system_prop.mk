# system.prop for mt6765-common

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
   ro.config.vc_call_vol_steps=7 \
   ro.config.media_vol_steps=25

# Performance
PRODUCT_PROPERTY_OVERRIDES += \
    ro.mtk_perf_simple_start_win=1 \
    ro.mtk_perf_fast_start_win=1 \
    ro.mtk_perf_response_time=1

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.rild.libpath=mtk-ril.so \
    vendor.rild.libargs=-d/dev/ttyC0

# Surfaceflinger
PRODUCT_PROPERTY_OVERRIDES += \
   ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
   ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
   ro.surface_flinger.vsync_event_phase_offset_ns=8300000 \
   ro.surface_flinger.vsync_sf_event_phase_offset_ns=830000 \0
   ro.surface_flinger.present_time_offset_from_vsync_ns=0
