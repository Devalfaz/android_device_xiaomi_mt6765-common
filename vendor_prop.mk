# Audio
PRODUCT_PROPERTY_OVERRIDES += \
ro.have_aacencode_feature=1 \
ro.vendor.mtk_audio_alac_support=1 \
ro.vendor.mtk_audio_ape_support=1 \
ro.config.media_vol_steps=25 \
ro.config.vc_call_vol_steps=7

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.mtk_cam_lomo_support=1 \
ro.vendor.mtk_slow_motion_support=1 \
vendor.camera.mdp.cz.enable=1 \
vendor.camera.mdp.dre.enable=0 \
vendor.camera.mdp.hfg.enable=0 \
persist.vendor.camera3.pipeline.bufnum.min.high_ram.imgo=8 \
persist.vendor.camera3.pipeline.bufnum.min.low_ram.imgo=6 \
persist.vendor.camera3.pipeline.bufnum.base.imgo=5 \
persist.vendor.camera3.pipeline.bufnum.min.high_ram.rrzo=8 \
persist.vendor.camera3.pipeline.bufnum.min.low_ram.rrzo=6 \
persist.vendor.camera3.pipeline.bufnum.base.rrzo=5 \
persist.vendor.camera3.pipeline.bufnum.min.high_ram.lcso=8 \
persist.vendor.camera3.pipeline.bufnum.min.low_ram.lcso=6 \
persist.vendor.camera3.pipeline.bufnum.base.lcso=5 \
persist.vendor.camera3.pipeline.bufnum.min.high_ram.rsso=8 \
persist.vendor.camera3.pipeline.bufnum.min.low_ram.rsso=6 \
persist.vendor.camera3.pipeline.bufnum.base.rsso=5 \
persist.vendor.camera3.pipeline.bufnum.min.high_ram.fdyuv=8 \
persist.vendor.camera3.pipeline.bufnum.min.low_ram.fdyuv=6 \

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
dalvik.vm.heapgrowthlimit=256m \
dalvik.vm.heapsize=384m

# Display
PRODUCT_PROPERTY_OVERRIDES += \
ro.opengles.version=196610 \
debug.sf.disable_backpressure=1 \
ro.sf.hwrotation=0 \
ro.sf.lcd_density=290 \
qemu.hw.mainkeys=0 \
ro.vendor.mtk_pq_support=2 \
ro.vendor.mtk_pq_color_mode=1 \
ro.vendor.mtk_blulight_def_support=1 \

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
drm.service.enabled=true \
ro.mtk_cta_drm_support=1 \
ro.vendor.mtk_oma_drm_support=1 \
ro.vendor.mtk_widevine_drm_l3_support=1

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
ro.frp.pst=/dev/block/platform/bootdevice/by-name/frp

# Keymaster
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.mtk_tee_gp_support=1 \
ro.vendor.mtk_microtrust_tee_support=1 \
ro.crypto.volume.filenames_mode=aes-256-cts

# Media
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.mtk_flv_playback_support=1 \
ro.vendor.mtk_wmv_playback_support=1 \
vendor.mtk.vdec.waitkeyframeforplay=1 \
ro.sys.sdcardfs=1 \
persist.service.acm.enable=1

# Memory optimization
PRODUCT_PROPERTY_OVERRIDES += \
ro.sys.fw.bservice_enable=true \
ro.sys.fw.bservice_limit=5 \
ro.sys.fw.bservice_age=5000 \
ro.am.reschedule_service=true \
ro.sys.fw.bg_apps_limit=24 \
ro.mtk_config_max_dram_size=0x800000000

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
ro.mtk_pow_perf_support=1 \
sys.vendor.shutdown.waittime=500

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
ro.mediatek.chip_ver=S01 \
ro.vendor.mediatek.platform=MT6765 \
rild.libpath=/vendor/lib/libmtk-ril.so \
vendor.rild.libpath=/vendor/lib/mtk-ril.so \
ril.external.md=0 \
ril.first.md=1 \
ril.flightmode.poweroffMD=0 \
ril.telephony.mode=0 \
ril.read.imsi=1 \
ril.radiooff.poweroffMD=0 \
mtk.eccci.c2k=enabled \
ro.vendor.mtk_protocol1_rat_config=C/Lf/Lt/W/T/G \
ro.vendor.num_md_protocol=2 \
persist.radio.multisim.config=dsds \
persist.vendor.radio.msimmode=dsds \
ro.vendor.mtk_c2k_support=1 \
persist.vendor.radio.fd.counter=150 \
persist.vendor.radio.fd.off.counter=50 \
persist.vendor.radio.fd.r8.counter=150 \
persist.vendor.radio.fd.off.r8.counter=50 \
persist.vendor.radio.flashless.fsm=0 \
persist.vendor.radio.flashless.fsm_cst=0 \
persist.vendor.radio.flashless.fsm_rw=0 \
telephony.lteOnCdmaDevice=1 \
ro.telephony.default_network=10,10 \
ro.vendor.mtk_ril_mode=c6m_1rild \
ro.vendor.md_prop_ver=1 \
ro.mtk_enable_md1=1 \
ro.vendor.mtk_world_phone_policy=0 \
ro.vendor.mtk_md_world_mode_support=1 \
ro.vendor.mtk_cta_set=1 \
ro.vendor.mtk_rild_read_imsi=1 \
ro.vendor.sim_refresh_reset_by_modem=1 \
ro.vendor.mtk_external_sim_support=1 \
ro.vendor.mtk_external_sim_only_slots=0 \
ro.vendor.sim_me_lock_mode=0 \
persist.radio.mobile.data=0,0 \
persist.meta.dumpdata=0 \
ro.mtk_deinterlace_support=1 \
ro.vendor.mtk_data_config=1 \
ro.vendor.mtk_embms_support=1 \
ro.vendor.mtk_single_bin_modem_support=1 \
persist.vendor.mtk_sim_switch_policy=2 \
persist.radio.lte.chip=0 \
persist.vendor.radio.mtk_dsbp_support=1 \
persist.vendor.mtk_ct_volte_support=2 \
persist.vendor.radio.mtk_ps2_rat=L/W/G \
persist.vendor.radio.mtk_ps3_rat=G \
persist.vendor.ims_support=1 \
persist.vendor.mtk_dynamic_ims_switch=1 \
persist.vendor.mims_support=2 \
persist.vendor.mtk_wfc_support=1 \
persist.vendor.volte_support=1 \
persist.vendor.mtk.volte.enable=1 \
persist.vendor.vilte_support=1 \
persist.vendor.viwifi_support=1 \
persist.vendor.vt.data_simulate=0 \
persist.vendor.vt.rotate_delay=500

# Connsys related
PRODUCT_PROPERTY_OVERRIDES += \
mediatek.wlan.chip=CONSYS_MT6765 \
mediatek.wlan.module.postfix=_consys_mt6765 \
ro.vendor.mtk_wapi_support=1 \
ro.mtk_bt_support=1 \
ro.vendor.mtk_wappush_support=1 \
ro.vendor.mtk_agps_app=1 \
ro.vendor.mtk_gps_support=1 \
ro.vendor.mtk_omacp_support=1 \
ro.vendor.mtk_dhcpv6c_wifi=1 \
persist.vendor.connsys.chipid=-1 \
persist.vendor.connsys.patch.version=-1 \
persist.vendor.connsys.dynamic.dump=0 \
vendor.connsys.driver.ready=no \
fmradio.driver.enable=0 \
ro.vendor.wlan.gen=gen4m

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
ro.mtkrc.path=/vendor/etc/init/hw/

# temp P migrate (vendor/etc/init/init.migrate_legacy_props_needed.rc)
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.migrate_legacy_props=needed
