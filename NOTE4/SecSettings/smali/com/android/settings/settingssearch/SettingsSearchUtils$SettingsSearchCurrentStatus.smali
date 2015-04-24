.class public Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsSearchCurrentStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;
    }
.end annotation


# instance fields
.field private final GLOBAL:I

.field private final NONE:I

.field private final SECURE:I

.field private final SYSTEM:I

.field private final TAG:Ljava/lang/String;

.field private final devOptionKey:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mKeyMatchDBInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8071
    const-string v0, "SearchDirectSettingUpdate"

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->TAG:Ljava/lang/String;

    .line 8073
    iput v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->NONE:I

    .line 8074
    iput v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->SYSTEM:I

    .line 8075
    iput v4, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->GLOBAL:I

    .line 8076
    iput v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->SECURE:I

    .line 8087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    .line 8089
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    .line 8098
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "keep_screen_on"

    aput-object v1, v0, v2

    const-string v1, "enforce_read_external"

    aput-object v1, v0, v3

    const-string v1, "enable_adb"

    aput-object v1, v0, v4

    const-string v1, "bugreport_in_power"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "allow_mock_location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "wait_for_debugger"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "verify_apps_over_usb"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "show_touches"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pointer_location"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "debug_layout"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "show_hw_screen_udpates"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "show_hw_layers_udpates"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "show_hw_overdraw"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "show_screen_updates"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "disable_overlays"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "force_hw_ui"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "force_msaa"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "strict_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "show_cpu_usage"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "track_frame_time"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "immediately_destroy_activities"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "show_all_anrs"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "wifi_display_certification"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "force_rtl_layout_all_locales"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->devOptionKey:[Ljava/lang/String;

    .line 8092
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    .line 8093
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->initDBInof()V

    .line 8094
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9164
    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 9165
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "adb_enabled"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    .line 9180
    :cond_0
    :goto_0
    return v4

    .line 9168
    :cond_1
    const-string v6, "package_verifier_enable"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 9171
    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 9172
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9173
    .local v3, "verification":Landroid/content/Intent;
    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 9174
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9175
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 9176
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 9180
    goto :goto_0
.end method

.method private getCurrentStateNoneType(Ljava/lang/String;)I
    .locals 33
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 8708
    const/16 v23, 0x0

    .line 8709
    .local v23, "retStateValue":I
    const/4 v3, 0x0

    .line 8710
    .local v3, "bRetStateValue":Z
    new-instance v12, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v12, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 8713
    .local v12, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v30, "biometric_weak_liveliness"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 8714
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v3

    .line 8833
    :cond_0
    :goto_0
    const v30, 0x7f1006a6

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 8834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string v31, "wifi"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 8837
    .local v17, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v30

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 8839
    :cond_1
    const/4 v3, 0x1

    .line 8909
    .end local v17    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    :goto_1
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v3, v0, :cond_2f

    const/16 v23, 0x1

    .line 8910
    :goto_2
    return v23

    .line 8715
    :cond_3
    const-string v30, "allshare_onoff"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 8716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string v31, "pref_allshare"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 8718
    .local v24, "sharedPreference":Landroid/content/SharedPreferences;
    const-string v30, "allshare_onoff"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 8719
    goto :goto_0

    .end local v24    # "sharedPreference":Landroid/content/SharedPreferences;
    :cond_4
    const-string v30, "power_button_instantly_locks"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 8720
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v3

    goto :goto_0

    .line 8721
    :cond_5
    const-string v30, "visiblepattern"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 8722
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    goto/16 :goto_0

    .line 8723
    :cond_6
    const-string v30, "toggle_lock_screen_rotation_preference"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 8724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v30

    if-nez v30, :cond_7

    const/4 v3, 0x1

    :goto_3
    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 8725
    :cond_8
    const-string v30, "backup_data"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 8726
    const-string v30, "backup"

    invoke-static/range {v30 .. v30}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v13

    .line 8729
    .local v13, "mBackupManager":Landroid/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v13}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v30

    if-eqz v30, :cond_9

    .line 8730
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 8732
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 8733
    :catch_0
    move-exception v6

    .line 8735
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 8737
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v13    # "mBackupManager":Landroid/app/backup/IBackupManager;
    :cond_a
    const-string v30, "location_gps"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    .line 8738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "gps"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 8740
    :cond_b
    const-string v30, "location_vzw_gps"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 8741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "vzw_lbs"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 8743
    :cond_c
    const-string v30, "enforce_read_external"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 8744
    const-string v30, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->isPermissionEnforced(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 8745
    :cond_d
    const-string v30, "debug_layout"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 8746
    const-string v30, "debug.layout"

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto/16 :goto_0

    .line 8747
    :cond_e
    const-string v30, "show_hw_screen_udpates"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 8748
    const-string v30, "debug.hwui.show_dirty_regions"

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto/16 :goto_0

    .line 8750
    :cond_f
    const-string v30, "show_hw_layers_udpates"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 8751
    const-string v30, "debug.hwui.show_layers_updates"

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto/16 :goto_0

    .line 8753
    :cond_10
    const-string v30, "show_hw_overdraw"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_0

    .line 8756
    const-string v30, "show_screen_updates"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    .line 8758
    :try_start_1
    const-string v30, "SurfaceFlinger"

    invoke-static/range {v30 .. v30}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 8759
    .local v8, "flinger":Landroid/os/IBinder;
    if-eqz v8, :cond_0

    .line 8760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 8761
    .local v4, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v22

    .line 8762
    .local v22, "reply":Landroid/os/Parcel;
    const-string v30, "android.ui.ISurfaceComposer"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8763
    const/16 v30, 0x3f2

    const/16 v31, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v22

    move/from16 v2, v31

    invoke-interface {v8, v0, v4, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8765
    invoke-virtual/range {v22 .. v22}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 8767
    .local v26, "showCpu":I
    invoke-virtual/range {v22 .. v22}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 8768
    .local v7, "enableGL":I
    invoke-virtual/range {v22 .. v22}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 8769
    .local v27, "showUpdates":I
    if-eqz v27, :cond_11

    const/4 v3, 0x1

    .line 8770
    :goto_4
    invoke-virtual/range {v22 .. v22}, Landroid/os/Parcel;->recycle()V

    .line 8771
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 8773
    .end local v4    # "data":Landroid/os/Parcel;
    .end local v7    # "enableGL":I
    .end local v8    # "flinger":Landroid/os/IBinder;
    .end local v22    # "reply":Landroid/os/Parcel;
    .end local v26    # "showCpu":I
    .end local v27    # "showUpdates":I
    :catch_1
    move-exception v6

    .line 8775
    .restart local v6    # "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 8769
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v4    # "data":Landroid/os/Parcel;
    .restart local v7    # "enableGL":I
    .restart local v8    # "flinger":Landroid/os/IBinder;
    .restart local v22    # "reply":Landroid/os/Parcel;
    .restart local v26    # "showCpu":I
    .restart local v27    # "showUpdates":I
    :cond_11
    const/4 v3, 0x0

    goto :goto_4

    .line 8777
    .end local v4    # "data":Landroid/os/Parcel;
    .end local v7    # "enableGL":I
    .end local v8    # "flinger":Landroid/os/IBinder;
    .end local v22    # "reply":Landroid/os/Parcel;
    .end local v26    # "showCpu":I
    .end local v27    # "showUpdates":I
    :cond_12
    const-string v30, "disable_overlays"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 8779
    :try_start_2
    const-string v30, "SurfaceFlinger"

    invoke-static/range {v30 .. v30}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 8780
    .restart local v8    # "flinger":Landroid/os/IBinder;
    if-eqz v8, :cond_0

    .line 8781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 8782
    .restart local v4    # "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v22

    .line 8783
    .restart local v22    # "reply":Landroid/os/Parcel;
    const-string v30, "android.ui.ISurfaceComposer"

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8784
    const/16 v30, 0x3f2

    const/16 v31, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v22

    move/from16 v2, v31

    invoke-interface {v8, v0, v4, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8786
    invoke-virtual/range {v22 .. v22}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 8788
    .restart local v26    # "showCpu":I
    invoke-virtual/range {v22 .. v22}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 8789
    .restart local v7    # "enableGL":I
    invoke-virtual/range {v22 .. v22}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 8791
    .restart local v27    # "showUpdates":I
    invoke-virtual/range {v22 .. v22}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 8792
    .local v25, "showBackgroundn":I
    invoke-virtual/range {v22 .. v22}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 8793
    .local v5, "disableOverlays":I
    if-eqz v5, :cond_13

    const/4 v3, 0x1

    .line 8794
    :goto_5
    invoke-virtual/range {v22 .. v22}, Landroid/os/Parcel;->recycle()V

    .line 8795
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 8797
    .end local v4    # "data":Landroid/os/Parcel;
    .end local v5    # "disableOverlays":I
    .end local v7    # "enableGL":I
    .end local v8    # "flinger":Landroid/os/IBinder;
    .end local v22    # "reply":Landroid/os/Parcel;
    .end local v25    # "showBackgroundn":I
    .end local v26    # "showCpu":I
    .end local v27    # "showUpdates":I
    :catch_2
    move-exception v6

    .line 8799
    .restart local v6    # "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 8793
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v4    # "data":Landroid/os/Parcel;
    .restart local v5    # "disableOverlays":I
    .restart local v7    # "enableGL":I
    .restart local v8    # "flinger":Landroid/os/IBinder;
    .restart local v22    # "reply":Landroid/os/Parcel;
    .restart local v25    # "showBackgroundn":I
    .restart local v26    # "showCpu":I
    .restart local v27    # "showUpdates":I
    :cond_13
    const/4 v3, 0x0

    goto :goto_5

    .line 8801
    .end local v4    # "data":Landroid/os/Parcel;
    .end local v5    # "disableOverlays":I
    .end local v7    # "enableGL":I
    .end local v8    # "flinger":Landroid/os/IBinder;
    .end local v22    # "reply":Landroid/os/Parcel;
    .end local v25    # "showBackgroundn":I
    .end local v26    # "showCpu":I
    .end local v27    # "showUpdates":I
    :cond_14
    const-string v30, "force_hw_ui"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_15

    .line 8802
    const-string v30, "persist.sys.ui.hw"

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto/16 :goto_0

    .line 8803
    :cond_15
    const-string v30, "force_msaa"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    .line 8804
    const-string v30, "debug.egl.force_msaa"

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto/16 :goto_0

    .line 8805
    :cond_16
    const-string v30, "strict_mode"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_18

    .line 8806
    const-string v30, "persist.sys.strictmode.visual"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_17

    .line 8807
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 8809
    :cond_17
    const-string v30, "persist.sys.strictmode.visual"

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto/16 :goto_0

    .line 8811
    :cond_18
    const-string v30, "track_frame_time"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_19

    .line 8812
    const-string v30, "debug.hwui.profile"

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto/16 :goto_0

    .line 8813
    :cond_19
    const-string v30, "backup_data"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1a

    .line 8814
    const-string v30, "backup"

    invoke-static/range {v30 .. v30}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v13

    .line 8817
    .restart local v13    # "mBackupManager":Landroid/app/backup/IBackupManager;
    :try_start_3
    invoke-interface {v13}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    goto/16 :goto_0

    .line 8818
    :catch_3
    move-exception v6

    .line 8820
    .restart local v6    # "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 8822
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v13    # "mBackupManager":Landroid/app/backup/IBackupManager;
    :cond_1a
    const-string v30, "visiblesignature"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1b

    .line 8823
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v3

    goto/16 :goto_0

    .line 8824
    :cond_1b
    const-string v30, "location_network"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1c

    .line 8825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "network"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 8826
    :cond_1c
    const-string v30, "location_vzw_network"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1d

    .line 8827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "network"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 8828
    :cond_1d
    const-string v30, "key_simple_led_indicator_settings"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 8829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getLedIndicator(Landroid/content/Context;)Z

    move-result v3

    goto/16 :goto_0

    .line 8841
    :cond_1e
    const v30, 0x7f1006a8

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_20

    .line 8843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v18

    .line 8844
    .local v18, "manager":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-virtual/range {v18 .. v18}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v14

    .line 8845
    .local v14, "mLocalAdapter":Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-virtual {v14}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v30

    const/16 v31, 0xc

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1f

    invoke-virtual {v14}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v30

    const/16 v31, 0xb

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 8847
    :cond_1f
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 8849
    .end local v14    # "mLocalAdapter":Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .end local v18    # "manager":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :cond_20
    const v30, 0x7f1006b8

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_21

    .line 8851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v16

    .line 8852
    .local v16, "mNfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual/range {v16 .. v16}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v30

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 8853
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 8855
    .end local v16    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_21
    const-string v30, "toggle_android_beam"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_22

    .line 8856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v16

    .line 8857
    .restart local v16    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual/range {v16 .. v16}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v30

    if-eqz v30, :cond_2

    .line 8858
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 8860
    .end local v16    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_22
    const-string v30, "toggle_sbeam"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_23

    .line 8861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string v31, "pref_sbeam"

    const/16 v32, 0x5

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 8863
    .local v20, "pref":Landroid/content/SharedPreferences;
    const-string v30, "SBeam_on_off"

    const/16 v31, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 8864
    goto/16 :goto_1

    .end local v20    # "pref":Landroid/content/SharedPreferences;
    :cond_23
    const-string v30, "location_toggle"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_25

    .line 8865
    const/16 v28, 0x0

    .line 8870
    .local v28, "vzwEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "gps"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v9

    .line 8872
    .local v9, "gpsEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "network"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v19

    .line 8874
    .local v19, "networkEnabled":Z
    if-nez v28, :cond_24

    if-nez v9, :cond_24

    if-eqz v19, :cond_2

    .line 8875
    :cond_24
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 8877
    .end local v9    # "gpsEnabled":Z
    .end local v19    # "networkEnabled":Z
    .end local v28    # "vzwEnabled":Z
    :cond_25
    const-string v30, "enable_switch_wifi_ap"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_27

    .line 8878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string v31, "wifi"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 8879
    .restart local v17    # "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v29

    .line 8880
    .local v29, "wifiApState":I
    const/16 v30, 0xd

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_26

    const/4 v11, 0x1

    .line 8881
    .local v11, "isEnabled":Z
    :goto_6
    move v3, v11

    .line 8882
    goto/16 :goto_1

    .line 8880
    .end local v11    # "isEnabled":Z
    :cond_26
    const/4 v11, 0x0

    goto :goto_6

    .line 8882
    .end local v17    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v29    # "wifiApState":I
    :cond_27
    const-string v30, "fingerprint_unlock"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_29

    .line 8883
    new-instance v15, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v15, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 8884
    .local v15, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v15}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v21

    .line 8885
    .local v21, "quality":I
    const v30, 0x61000

    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_28

    .line 8886
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 8888
    :cond_28
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 8890
    .end local v15    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v21    # "quality":I
    :cond_29
    const-string v30, "power_saving_location"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2c

    .line 8891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "location_mode"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    if-eqz v30, :cond_2a

    const/4 v10, 0x1

    .line 8893
    .local v10, "isChecked":Z
    :goto_7
    if-nez v10, :cond_2b

    const/4 v3, 0x1

    .line 8894
    :goto_8
    goto/16 :goto_1

    .line 8891
    .end local v10    # "isChecked":Z
    :cond_2a
    const/4 v10, 0x0

    goto :goto_7

    .line 8893
    .restart local v10    # "isChecked":Z
    :cond_2b
    const/4 v3, 0x0

    goto :goto_8

    .line 8894
    .end local v10    # "isChecked":Z
    :cond_2c
    const-string v30, "toggle_rw_p2p"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2e

    .line 8895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v16

    .line 8896
    .restart local v16    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual/range {v16 .. v16}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v30

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2d

    .line 8897
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 8899
    :cond_2d
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 8901
    .end local v16    # "mNfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_2e
    const-string v30, "location_history"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 8905
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 8909
    :cond_2f
    const/16 v23, 0x0

    goto/16 :goto_2
.end method

.method private getDependecyExceptionState(Ljava/lang/String;)Z
    .locals 21
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 8934
    const/4 v6, 0x1

    .line 8935
    .local v6, "bDependencyExceptionState":Z
    const-string v18, "vibrate_when_ringing"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 8936
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v18

    const-string v19, "vibrate"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v18

    const-string v19, "mute"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 8937
    :cond_0
    const/4 v6, 0x0

    .line 9098
    :cond_1
    :goto_0
    return v6

    .line 8939
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 8940
    :cond_3
    const-string v18, "lock_screen_short_or_camera_widget"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 8941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "kg_multiple_lockscreen"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/4 v10, 0x1

    .line 8942
    .local v10, "isMultiple":Z
    :goto_1
    new-instance v12, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 8943
    .local v12, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v10, :cond_5

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v18

    if-nez v18, :cond_5

    .line 8944
    const/4 v6, 0x1

    goto :goto_0

    .line 8941
    .end local v10    # "isMultiple":Z
    .end local v12    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 8946
    .restart local v10    # "isMultiple":Z
    .restart local v12    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 8947
    .end local v10    # "isMultiple":Z
    .end local v12    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_6
    const-string v18, "wait_for_debugger"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 8948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "debug_app"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 8950
    .local v11, "mDebugApp":Ljava/lang/String;
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_7

    .line 8951
    const/4 v6, 0x1

    goto :goto_0

    .line 8953
    :cond_7
    const/4 v6, 0x0

    goto :goto_0

    .line 8955
    .end local v11    # "mDebugApp":Ljava/lang/String;
    :cond_8
    const-string v18, "verify_apps_over_usb"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 8956
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->enableVerifierSetting()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 8957
    const/4 v6, 0x1

    goto :goto_0

    .line 8959
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 8960
    :cond_a
    const-string v18, "multiple_lock_screenswitch"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "lock_screen_myprofile_settings"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "lock_screen_wakeup_settings"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "lock_screen_shortcut_menu"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 8962
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "easy_mode_switch"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 8963
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 8965
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 8967
    :cond_d
    const v18, 0x7f1006f1

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 8968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "access_control_enabled"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-nez v18, :cond_f

    const/4 v4, 0x1

    .line 8970
    .local v4, "bAccessControlDisabled":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "easy_mode_switch"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const/4 v5, 0x1

    .line 8973
    .local v5, "bBasicMode":Z
    :goto_3
    if-eqz v4, :cond_e

    if-nez v5, :cond_1

    .line 8974
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 8968
    .end local v4    # "bAccessControlDisabled":Z
    .end local v5    # "bBasicMode":Z
    :cond_f
    const/4 v4, 0x0

    goto :goto_2

    .line 8970
    .restart local v4    # "bAccessControlDisabled":Z
    :cond_10
    const/4 v5, 0x0

    goto :goto_3

    .line 8976
    .end local v4    # "bAccessControlDisabled":Z
    :cond_11
    const-string v18, "send_dual_captured_image_key"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 8977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "send_emergency_message"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "send_b_emergency_message"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 8978
    :cond_12
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 8980
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 8982
    :cond_14
    const-string v18, "lcd_curtain"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_15

    const-string v18, "rapid_key_input"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_15

    const-string v18, "toggle_speak_password_preference"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 8983
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v15

    .line 8984
    .local v15, "settingValue":Z
    if-nez v15, :cond_1

    .line 8985
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 8986
    .end local v15    # "settingValue":Z
    :cond_16
    const-string v18, "usb_tether_settings"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 8987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 8988
    .local v16, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v18, "usb_connection_state"

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 8989
    goto/16 :goto_0

    .end local v16    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_17
    const-string v18, "adaptive_fast_charging"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 8990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 8991
    .restart local v16    # "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v18, "battery_charging_state"

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_18

    const/4 v6, 0x1

    .line 8992
    :goto_4
    goto/16 :goto_0

    .line 8991
    :cond_18
    const/4 v6, 0x0

    goto :goto_4

    .line 8992
    .end local v16    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_19
    const-string v18, "ncm_usb_tether_settings"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 8993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 8994
    .restart local v16    # "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v18, "usb_connection_state"

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 8995
    goto/16 :goto_0

    .end local v16    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_1a
    const-string v18, "lock_screen_camera_shortcut"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 9010
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 9011
    :cond_1b
    const-string v18, "easy_mode_select_all"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 9012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "easy_mode_switch"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 9013
    .local v17, "state":I
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 9014
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 9016
    :cond_1c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 9018
    .end local v17    # "state":I
    :cond_1d
    const-string v18, "power_saving_cpu"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1e

    const-string v18, "power_saving_display"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1e

    const-string v18, "power_saving_background_color"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1e

    const-string v18, "power_saving_haptic"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1e

    const-string v18, "power_saving_touchkey"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1e

    const-string v18, "power_saving_location"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 9020
    :cond_1e
    const/4 v13, 0x0

    .line 9022
    .local v13, "powersavingState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "powersaving_switch"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f

    .line 9023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "psm_switch"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 9028
    :cond_1f
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_20

    .line 9029
    const/4 v6, 0x1

    .line 9033
    :goto_5
    const-string v18, "power_saving_location"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 9034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "location_mode"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_21

    const/4 v8, 0x1

    .line 9036
    .local v8, "isChecked":Z
    :goto_6
    if-nez v8, :cond_1

    .line 9037
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 9031
    .end local v8    # "isChecked":Z
    :cond_20
    const/4 v6, 0x0

    goto :goto_5

    .line 9034
    :cond_21
    const/4 v8, 0x0

    goto :goto_6

    .line 9040
    .end local v13    # "powersavingState":I
    :cond_22
    const-string v18, "wifi_auto_network_switch"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_24

    .line 9041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchCheckBox(Landroid/content/Context;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_23

    .line 9043
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 9045
    :cond_23
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 9047
    :cond_24
    const-string v18, "haptic_feedback"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_25

    const-string v18, "sip_feedback_vibration"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_27

    .line 9048
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "powersaving_switch"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "psm_switch"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_26

    .line 9050
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 9052
    :cond_26
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 9054
    :cond_27
    const-string v18, "smartscreen_rotation"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_29

    .line 9055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_28

    .line 9056
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 9058
    :cond_28
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 9060
    :cond_29
    const-string v18, "auto_time"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2a

    const-string v18, "auto_zone"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2d

    .line 9061
    :cond_2a
    const-string v18, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2b

    .line 9062
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 9064
    :cond_2b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 9065
    .local v3, "activePhone":I
    const/16 v18, 0x4

    move/from16 v0, v18

    if-lt v3, v0, :cond_2c

    .line 9066
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 9068
    :cond_2c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 9071
    .end local v3    # "activePhone":I
    :cond_2d
    const-string v18, "lock_info_weather"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2e

    const-string v18, "upcoming_event"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_30

    .line 9072
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lock_additional_info"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2f

    .line 9073
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 9075
    :cond_2f
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 9077
    :cond_30
    const-string v18, "help_text"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_31

    const-string v18, "steps"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_33

    .line 9078
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "lock_show_info"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_32

    .line 9079
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 9081
    :cond_32
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 9084
    :cond_33
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "false"

    aput-object v19, v14, v18

    .line 9085
    .local v14, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v20, "isDeveloperModeAllowed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v14}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 9087
    .local v9, "isDeveloperModeAllowed":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_1

    .line 9088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->devOptionKey:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_35

    .line 9089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "development_settings_enabled"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-nez v18, :cond_34

    if-nez v9, :cond_34

    .line 9090
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 9092
    :cond_34
    const/4 v6, 0x1

    .line 9093
    goto/16 :goto_0

    .line 9087
    :cond_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_7
.end method

.method private getLedIndicator(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 9126
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_charing"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_low_battery"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_missed_event"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_indicator_voice_recording"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9133
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 9135
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 9144
    const-string v1, "off"

    :goto_0
    return-object v1

    .line 9137
    :pswitch_0
    const-string v1, "off"

    goto :goto_0

    .line 9139
    :pswitch_1
    const-string v1, "vibrate"

    goto :goto_0

    .line 9141
    :pswitch_2
    const-string v1, "mute"

    goto :goto_0

    .line 9135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDBInof()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 8111
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006a6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8112
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006a8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8113
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006b8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8114
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006b9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sbeam_mode"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8115
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006db

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dormant_switch_onoff"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8116
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006dc

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8117
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006e2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "psm_switch"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8118
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006ec

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "air_view_master_onoff"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8119
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006eb

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8120
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006ed

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "voice_input_control"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8121
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f100729

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "air_motion_engine"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8122
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f10072a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "master_motion"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8123
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f10072b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "surface_motion_engine"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8124
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f10071d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "air_button_onoff"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8125
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006ab

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-direct {p0, v3, v4, v9, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8126
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006f1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "multi_window_enabled"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8127
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006f7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "personal_mode_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8128
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f10072c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "auto_adjust_touch"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8129
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006f9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "festival_effect_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8132
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "wifi_auto_network_switch"

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8133
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "notifyMe"

    const-string v4, "wifi_offload_network_notify"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8136
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006ad

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "smart_bonding"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8139
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "usb_tether_settings"

    const-string v4, "usb_tethering_enabled"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8140
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "enable_bluetooth_tethering"

    const-string v4, "bluetooth_tethering_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8141
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "enable_switch_wifi_ap"

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8144
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_airplane"

    const-string v4, "airplane_mode_on"

    invoke-direct {p0, v3, v4, v9, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8147
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "allshare_onoff"

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8150
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_android_beam"

    const v4, 0x7f1006b8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8151
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_sbeam"

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8154
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "ncm_usb_tether_settings"

    const-string v4, "usb_tethering_enabled"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8157
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "multiple_lock_screen"

    const-string v4, "kg_multiple_lockscreen"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8158
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "help_text"

    const-string v4, "unlock_text"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8159
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "say_your_wakeup"

    const-string v4, "wake_up_lock_screen"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8160
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "biometric_weak_liveliness"

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8161
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_button_instantly_locks"

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8162
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_swipe"

    const-string v4, "auto_swipe_main_user"

    invoke-direct {p0, v3, v4, v10, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8163
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "visiblepattern"

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8164
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "quick_note"

    const-string v4, "lock_screen_quick_note"

    invoke-direct {p0, v3, v4, v10, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8165
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "visiblesignature"

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8166
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_shortcut_menu"

    const-string v4, "lock_screen_shortcut"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8167
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_magazine_card"

    const-string v4, "lock_screen_card_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8168
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "safetyzone_settings"

    const-string v4, "safety_zone_enable"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8170
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "multiple_lock_screenswitch"

    const-string v4, "kg_multiple_lockscreen"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8171
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_myprofile_settings"

    const-string v4, "my_profile_enabled"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8172
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_wakeup_settings"

    const-string v4, "wake_up_lock_screen"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8173
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "dualclock_settings"

    const-string v4, "dualclock_menu_settings"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8174
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "additional_information"

    const-string v4, "lock_additional_info"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8175
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "vibration_feedback"

    const-string v4, "lock_screen_vibration_feedback"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8177
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_camera_shortcut"

    const-string v4, "set_shortcuts_mode"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8181
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_show_info"

    const-string v4, "lock_show_info"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8183
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_show_clock"

    const-string v4, "lock_screen_show_clock"

    const-string v5, "lock_show_info"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8184
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_date_and_year"

    const-string v4, "lock_screen_date_and_year"

    const-string v5, "lock_show_info"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8185
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "upcoming_event"

    const-string v4, "lock_upcoming_event"

    const-string v5, "lock_show_info"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8187
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 8188
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v3, "android.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8189
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_info_weather"

    const-string v4, "lock_additional_weather"

    const-string v5, "lock_show_info"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8190
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "steps"

    const-string v4, "lock_additional_steps"

    const-string v5, "lock_show_info"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8196
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "additional_information_for_weather"

    const-string v4, "lock_additional_weather"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8198
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_multi_window"

    const-string v4, "multi_window_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8199
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "accelerometer"

    const-string v4, "accelerometer_rotation"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8200
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "display_battery_level"

    const-string v4, "display_battery_percentage"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8201
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "edit_screen_capture"

    const-string v4, "edit_after_screen_capture"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8202
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_mode"

    const-string v4, "power_saving_mode"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8203
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_adjust_touch"

    const-string v4, "auto_adjust_touch"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8204
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "reading_mode"

    const-string v4, "e_reading_display_mode"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8205
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "screensaver"

    const-string v4, "screensaver_enabled"

    invoke-direct {p0, v3, v4, v10, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8206
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_simple_led_indicator_settings"

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8209
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "led_indicator_charging_key"

    const-string v4, "led_indicator_charing"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8210
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "led_indicator_low_battery_key"

    const-string v4, "led_indicator_low_battery"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8211
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "led_indicator_missed_event_key"

    const-string v4, "led_indicator_missed_event"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8212
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "led_indicator_voice_recording_key"

    const-string v4, "led_indicator_voice_recording"

    const-string v5, "led_indicator_missed_event_key"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8213
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "led_indicator_incoming_notification_key"

    const-string v4, "led_indicator_incoming_notification"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8216
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "vibrate_when_ringing"

    const-string v4, "vibrate_when_ringing"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8217
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "dtmf_tone"

    const-string v4, "dtmf_tone"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8218
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "sound_effects"

    const-string v4, "sound_effects_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8219
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_sounds"

    const-string v4, "lockscreen_sounds_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8220
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "gps_notification_sounds"

    const-string v4, "gps_noti_sound_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8221
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "haptic_feedback"

    const-string v4, "haptic_feedback_enabled"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8222
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "dock_audio_media_enabled"

    const-string v4, "dock_audio_media_enabled"

    invoke-direct {p0, v3, v4, v9, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8223
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "dock_sounds"

    const-string v4, "dock_sounds_enabled"

    invoke-direct {p0, v3, v4, v9, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8224
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "sip_feedback_sound"

    const-string v4, "sip_key_feedback_sound"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8225
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "sip_feedback_vibration"

    const-string v4, "sip_key_feedback_vibration"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8226
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "touch_sounds"

    const-string v4, "sound_effects_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8227
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "screen_locking_sounds"

    const-string v4, "lockscreen_sounds_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8228
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "dial_pad_tones"

    const-string v4, "dtmf_tone"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8229
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "vibrate_on_touch"

    const-string v4, "haptic_feedback_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8231
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "disable_incoming_calls"

    const-string v4, "dormant_disable_incoming_calls"

    const v5, 0x7f1006db

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8232
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "disable_notifications"

    const-string v4, "dormant_disable_notifications"

    const v5, 0x7f1006db

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8233
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "disable_alarm_and_timer"

    const-string v4, "dormant_disable_alarm_and_timer"

    const v5, 0x7f1006db

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8234
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "disable_led_indicator"

    const-string v4, "dormant_disable_led_indicator"

    const v5, 0x7f1006db

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8235
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "always"

    const-string v4, "dormant_always"

    const v5, 0x7f1006db

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8238
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "personalpage_auto_disable_screen_off"

    const-string v4, "personal_mode_auto_disable_when_screen_off"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8240
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 8242
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "incoming_call_notification"

    const-string v4, "driving_mode_incoming_call_notification"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8243
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "chaton_mode_notification"

    const-string v4, "driving_mode_chaton_call_notification"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8244
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_call_accept_hands_free"

    const-string v4, "driving_mode_air_call_accept"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8245
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "message_notification"

    const-string v4, "driving_mode_message_notification"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8246
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "email_notification"

    const-string v4, "driving_mode_email_notification"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8247
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "voice_mail_notification"

    const-string v4, "driving_mode_voice_mail_notification"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8248
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "alarm_notification"

    const-string v4, "driving_mode_alarm_notification"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8249
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "schedule_notification"

    const-string v4, "driving_mode_schedule_notification"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8250
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "unlock_screen_contents"

    const-string v4, "driving_mode_unlock_screen_contents"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8265
    :goto_1
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_incomming_calls"

    const-string v4, "voice_input_control_incomming_calls"

    const v5, 0x7f1006ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8266
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_chatonv"

    const-string v4, "voice_input_control_chatonv"

    const v5, 0x7f1006ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8267
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_alarm"

    const-string v4, "voice_input_control_alarm"

    const v5, 0x7f1006ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8268
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_camera"

    const-string v4, "voice_input_control_camera"

    const v5, 0x7f1006ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8269
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "voice_input_control_music"

    const-string v4, "voice_input_control_music"

    const v5, 0x7f1006ed

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8272
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "powersaving_tablet"

    const-string v4, "powersaving_switch"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8273
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "ultra_powersaving_tablet"

    const-string v4, "ultra_powersaving_mode"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8274
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_cpu"

    const-string v4, "psm_cpu_clock"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8275
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_display"

    const-string v4, "psm_display"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8276
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_background_color"

    const-string v4, "psm_background_colour"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8277
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_haptic"

    const-string v4, "psm_haptic_feedback"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8278
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_auto_turn_on"

    const-string v4, "psm_auto_turn_on"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8279
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_touchkey"

    const-string v4, "psm_touchkey_led"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8280
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_saving_location"

    const-string v4, "exception"

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8281
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "data_powersaving_check"

    const-string v4, "data_powersaving_mode"

    const-string v5, "powersaving_tablet"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8282
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "basic_powersaving_tablet"

    const-string v4, "psm_switch"

    const-string v5, "powersaving_tablet"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8283
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "black_grey_powersaving_tablet"

    const-string v4, "blackgrey_powersaving_mode"

    const-string v5, "powersaving_tablet"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8285
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "adaptive_fast_charging"

    const-string v4, "adaptive_fast_charging"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8288
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "dock_sounds"

    const-string v4, "dock_sounds_enabled"

    invoke-direct {p0, v3, v4, v9, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8289
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "cradle_enable"

    const-string v4, "cradle_enable"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8290
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "desk_home_screen_display"

    const-string v4, "desk_home_screen_display"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8291
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "automatic_unlock"

    const-string v4, "automatic_unlock"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8292
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "audio_applications"

    const-string v4, "audio_applications"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8293
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "book_cover_automatic_unlock"

    const-string v4, "automatic_unlock"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8296
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "easy_mode_select_all"

    const-string v4, "easy_mode_select_all"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8298
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_auto_rotate_screen_2nd_preference"

    const-string v4, "accelerometer_rotation_second"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8299
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_lock_screen_rotation_preference"

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8300
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_power_button_ends_call_preference"

    const-string v4, "incall_power_button_behavior"

    invoke-direct {p0, v3, v4, v10, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8301
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "power_key_hold"

    const-string v4, "power_key_hold"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8302
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_easy_interaction_preference"

    const-string v4, "easy_interaction"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8303
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "direct_access"

    const-string v4, "direct_access"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8304
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "notification_reminder_vibrate"

    const-string v4, "notification_reminder_vibrate"

    const-string v5, "notification_preference"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8305
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "notification_reminder_indicator"

    const-string v4, "notification_reminder_led_indicator"

    const-string v5, "notification_preference"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8308
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lcd_curtain"

    const-string v4, "lcd_curtain"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8309
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "rapid_key_input"

    const-string v4, "rapid_key_input_menu_checked"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8310
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_speak_password_preference"

    const-string v4, "speak_password"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8311
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "screen_magnification_preference_screen"

    const-string v4, "accessibility_display_magnification_enabled"

    invoke-direct {p0, v3, v4, v10, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8312
    invoke-static {}, Lcom/android/settings/accessibility/notificationreminder/GlobalConstant;->isPersistantAlert()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 8313
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "notification_preference"

    const-string v4, "notification_reminder_selectable"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8317
    :goto_2
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "high_contrast"

    const-string v4, "high_contrast"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8318
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "color_blind"

    const-string v4, "color_blind"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8319
    const/4 v1, 0x0

    .line 8321
    .local v1, "isTalkbackAvailable":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.google.android.marvin.talkback"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8322
    const/4 v1, 0x1

    .line 8326
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    .line 8327
    :cond_1
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "enable_global_gesture_preference_screen"

    const-string v4, "enable_accessibility_global_gesture_enabled"

    invoke-direct {p0, v3, v4, v9, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8331
    :cond_2
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "flash_notification_key"

    const-string v4, "flash_notification"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8332
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "all_sound_off_key"

    const-string v4, "all_sound_off"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8333
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "call_hearing_aid"

    const-string v4, "hearing_aid"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8334
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "samsung_captioning_preference_screen"

    const-string v4, "accessibility_sec_captioning_enabled"

    invoke-direct {p0, v3, v4, v10, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8335
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "google_captioning_preference_screen"

    const-string v4, "accessibility_captioning_enabled"

    invoke-direct {p0, v3, v4, v10, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8336
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "mono_audio_key"

    const-string v4, "mono_audio_db"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8337
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_haptic_key"

    const-string v4, "def_tactileassist_enable"

    invoke-direct {p0, v3, v4, v9, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8338
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.app.sounddetector"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8339
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "sound_detector_preference"

    const-string v4, "sound_detector"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8343
    :cond_3
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "assistant_menu_preference"

    const-string v4, "assistant_menu"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8344
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_wake_up"

    const-string v4, "air_motion_wake_up"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8345
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "access_control_key"

    const-string v4, "access_control_use"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8348
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "direct_accessibility"

    const-string v4, "direct_accessibility"

    const-string v5, "direct_access"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8349
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_4

    .line 8350
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "direct_talkback"

    const-string v4, "direct_talkback"

    const-string v5, "direct_access"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8352
    :cond_4
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "direct_negative"

    const-string v4, "direct_negative"

    const-string v5, "direct_access"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8353
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "direct_accesscontrol"

    const-string v4, "direct_access_control"

    const-string v5, "direct_access"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8356
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "fingerprint_unlock"

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8357
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "support_secret_box"

    const-string v4, "fingerprint_secret_box"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8358
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "support_webpass"

    const-string v4, "fingerprint_webpass"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8359
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "support_samsung_account"

    const-string v4, "fingerprint_used_samsungaccount"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8360
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_finger_print"

    const-string v4, "lock_screen_fingerprint_shortcut"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8363
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smartscreen_stay"

    const-string v4, "intelligent_sleep_mode"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8364
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smartscreen_rotation"

    const-string v4, "intelligent_rotation_mode"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8365
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smartscreen_pause"

    const-string v4, "smart_pause"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8367
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_web"

    const-string v4, "smart_scroll_adv_web"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8368
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_email_list"

    const-string v4, "smart_scroll_adv_email_list"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8369
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_email_body"

    const-string v4, "smart_scroll_adv_email_body"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8370
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_readers_hub"

    const-string v4, "smart_scroll_adv_readers_hub"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8371
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_chrome"

    const-string v4, "smart_scroll_adv_chrome"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8372
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_gmail_body"

    const-string v4, "smart_scroll_adv_gmail_body"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8373
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smartscreen_scroll"

    const-string v4, "smart_scroll"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8376
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_mouse_over"

    const-string v4, "mouse_hovering"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8379
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_preview_and_icon_labels"

    const-string v4, "mouse_hovering_information_preview"

    const-string v5, "key_mouse_over"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8380
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_list_scrolling"

    const-string v4, "mouse_hovering_list_scroll"

    const-string v5, "key_mouse_over"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8383
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_motion"

    const-string v4, "air_motion_engine"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8384
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "motion"

    const-string v4, "master_motion"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8385
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "surface"

    const-string v4, "surface_motion_engine"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8388
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_turn_and_scroll"

    const-string v4, "air_motion_scroll"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8389
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "merged_mute_or_pause"

    const-string v4, "motion_merged_mute_pause"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8390
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "camera_quick_access"

    const-string v4, "camera_quick_access"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8391
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "quick_application_access"

    const-string v4, "quick_application_access"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8393
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pick_up_switch"

    const-string v4, "motion_pick_up"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8394
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pick_up_to_call_out_switch"

    const-string v4, "motion_pick_up_to_call_out"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8395
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "merged_mute_or_pause_switch"

    const-string v4, "motion_merged_mute_pause"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8396
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "palm_swipe_switch"

    const-string v4, "surface_palm_swipe"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8399
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "email_body"

    const-string v4, "air_motion_scroll_email_body"

    const-string v5, "air_turn_and_scroll"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8400
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "single_photo_view"

    const-string v4, "air_motion_turn_single_photo_view"

    const-string v5, "air_turn_and_scroll"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8401
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "internet_window"

    const-string v4, "air_motion_turn_internet_window"

    const-string v5, "air_turn_and_scroll"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8402
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "now_playing_on_music"

    const-string v4, "air_motion_turn_now_playing_on_music"

    const-string v5, "air_turn_and_scroll"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8403
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "bgm_on_lock_screen"

    const-string v4, "air_motion_turn_bgm_on_lock_screen"

    const-string v5, "air_turn_and_scroll"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8404
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "note_page_view"

    const-string v4, "air_motion_turn_note_page_view"

    const-string v5, "air_turn_and_scroll"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8407
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 8408
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "palm_touch"

    const-string v4, "surface_palm_touch"

    const-string v5, "merged_mute_or_pause"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8409
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "turn_over"

    const-string v4, "motion_overturn"

    const-string v5, "merged_mute_or_pause"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8415
    :goto_4
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_pause"

    const-string v4, "smart_pause"

    const-string v5, "merged_mute_or_pause"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8417
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "palm_touch_switch"

    const-string v4, "surface_palm_touch"

    const-string v5, "merged_mute_or_pause_switch"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8418
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_pause_switch"

    const-string v4, "smart_pause"

    const-string v5, "merged_mute_or_pause_switch"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8421
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "camera_quick_access_sound_feedback"

    const-string v4, "camera_quick_access_sound_feedback"

    const-string v5, "camera_quick_access"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8424
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "quick_glance"

    const-string v4, "air_motion_glance_view"

    const-string v5, "air_motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8425
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_scroll"

    const-string v4, "air_motion_scroll"

    const-string v5, "air_motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8426
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_turn"

    const-string v4, "air_motion_turn"

    const-string v5, "air_motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8427
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_move"

    const-string v4, "air_motion_item_move"

    const-string v5, "air_motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8428
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_call_accept"

    const-string v4, "air_motion_call_accept"

    const-string v5, "air_motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8429
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_pin"

    const-string v4, "air_motion_clip"

    const-string v5, "air_motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8432
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pick_up_to_call_out"

    const-string v4, "motion_pick_up_to_call_out"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8433
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pick_up"

    const-string v4, "motion_pick_up"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8434
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "tilt"

    const-string v4, "motion_zooming"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8435
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pan_to_browse_image"

    const-string v4, "motion_pan_to_browse_image"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8438
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "palm_swipe"

    const-string v4, "surface_palm_swipe"

    const-string v5, "surface"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8441
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "time_and_date"

    const-string v4, "air_motion_turn_single_photo_view"

    const-string v5, "quick_glance"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8444
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "advanced_air_call_accept_auto_start_speaker"

    const-string v4, "air_motion_call_accept_auto_start_speaker"

    const-string v5, "air_call_accept"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8448
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "backup_data"

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8449
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_restore"

    const-string v4, "backup_auto_restore"

    const-string v5, "backup_data"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8453
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "location_gps"

    const-string v4, "location_toggle"

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8454
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "mNetwork"

    const-string v4, "location_toggle"

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8455
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "assisted_gps"

    const-string v4, "assisted_gps_enabled"

    const-string v5, "location_toggle"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8470
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "location_toggle"

    invoke-direct {p0, v3, v7, v8, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8473
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "LockMyMobile"

    const-string v4, "lock_my_mobile"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8474
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_password"

    const-string v4, "show_password"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8475
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_install_applications"

    const-string v4, "install_non_market_apps"

    invoke-direct {p0, v3, v4, v9, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8476
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toggle_verify_applications"

    const-string v4, "package_verifier_enable"

    invoke-direct {p0, v3, v4, v9, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8477
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_policy_update"

    const-string v4, "security_update_db"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8478
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "use_wifi_only"

    const-string v4, "use_wifi_only_db"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8479
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "security_reports"

    const-string v4, "send_security_reports"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8482
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_policy_update"

    const-string v4, "security_update_db"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8485
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_time"

    const-string v4, "auto_time"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8486
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_zone"

    const-string v4, "auto_time_zone"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8487
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "24 hour"

    const-string v4, "time_12_24"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8490
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "keep_screen_on"

    const-string v4, "stay_on_while_plugged_in"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8491
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "enforce_read_external"

    const-string v4, "exception"

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8492
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "enable_adb"

    const-string v4, "adb_enabled"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8493
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "bugreport_in_power"

    const-string v4, "bugreport_in_power_menu"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8494
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "allow_mock_location"

    const-string v4, "mock_location"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8495
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "wait_for_debugger"

    const-string v4, "wait_for_debugger"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8496
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "verify_apps_over_usb"

    const-string v4, "verifier_verify_adb_installs"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8497
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_touches"

    const-string v4, "show_touches"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8498
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pointer_location"

    const-string v4, "pointer_location"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8499
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "debug_layout"

    const-string v4, "exception"

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8500
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_hw_screen_udpates"

    const-string v4, "exception"

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8501
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_hw_layers_udpates"

    const-string v4, "exception"

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8502
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "force_rtl_layout_all_locales"

    const-string v4, "debug.force_rtl"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8503
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_hw_overdraw"

    const-string v4, "exception"

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8504
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_screen_updates"

    const-string v4, "exception"

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8505
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "disable_overlays"

    const-string v4, "exception"

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8506
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "force_hw_ui"

    const-string v4, "exception"

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8507
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "force_msaa"

    const-string v4, "exception"

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8508
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "strict_mode"

    const-string v4, "exception"

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8509
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_cpu_usage"

    const-string v4, "show_processes"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8510
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "track_frame_time"

    const-string v4, "exception"

    invoke-direct {p0, v3, v7, v8, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8511
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "immediately_destroy_activities"

    const-string v4, "always_finish_activities"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8512
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_all_anrs"

    const-string v4, "anr_show_background"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v10, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8514
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8515
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "wifi_display_certification"

    const-string v4, "wifi_display_certification_on"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v9, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8519
    :cond_5
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_diagnostics_info"

    const-string v4, "samsung_errorlog_agree"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8522
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "torchlight_enable"

    const-string v4, "torchlight_enable"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8525
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "brightness_adjustment"

    const-string v4, "notification_panel_brightness_adjustment"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8526
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "toolbox"

    const-string v4, "toolbox_onoff"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8530
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "open_multi_window_view"

    const-string v4, "open_multi_window_view"

    const v5, 0x7f1006f1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8531
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "popup_view_shortcut"

    const-string v4, "db_popup_view_shortcut"

    const v5, 0x7f1006f1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8534
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_briefing_information"

    const-string v4, "show_briefing_information"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8535
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "show_camera_shortcut"

    const-string v4, "camera_quick_access"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8538
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_visual_feedback_icon"

    const-string v4, "smart_scroll_visual_feedback_icon"

    const-string v5, "smartscreen_scroll"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8539
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_web"

    const-string v4, "smart_scroll_adv_web"

    const-string v5, "smartscreen_scroll"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8540
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_email_list"

    const-string v4, "smart_scroll_adv_email_list"

    const-string v5, "smartscreen_scroll"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8541
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_email_body"

    const-string v4, "smart_scroll_adv_email_body"

    const-string v5, "smartscreen_scroll"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8542
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_readers_hub"

    const-string v4, "smart_scroll_adv_readers_hub"

    const-string v5, "smartscreen_scroll"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8543
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_chrome"

    const-string v4, "smart_scroll_adv_chrome"

    const-string v5, "smartscreen_scroll"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8544
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "smart_scroll_adv_gmail_body"

    const-string v4, "smart_scroll_adv_gmail_body"

    const-string v5, "smartscreen_scroll"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8548
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_pen_information_preview"

    const-string v4, "pen_hovering_information_preview"

    const-string v5, "pen_air_view"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8549
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_pen_progress_preview"

    const-string v4, "pen_hovering_progress_preview"

    const-string v5, "pen_air_view"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8550
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 8551
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_pen_speed_dial_preview"

    const-string v4, "pen_hovering_speed_dial_preview"

    const-string v5, "pen_air_view"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8553
    :cond_6
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_pen_webpage_magnifier"

    const-string v4, "pen_hovering_webpage_magnifier"

    const-string v5, "pen_air_view"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8554
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_pen_icon_label"

    const-string v4, "pen_hovering_icon_label"

    const-string v5, "pen_air_view"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8555
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_pen_list_scroll"

    const-string v4, "pen_hovering_list_scroll"

    const-string v5, "pen_air_view"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8556
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_pen_sound_and_haptic_feedback"

    const-string v4, "pen_hovering_sound"

    const-string v5, "pen_air_view"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8559
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "information_preview"

    const-string v4, "finger_air_view_information_preview"

    const v5, 0x7f1006eb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8560
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "progress_bar_preview"

    const-string v4, "finger_air_view_pregress_bar_preview"

    const v5, 0x7f1006eb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8561
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "speed_dial_tip"

    const-string v4, "finger_air_view_speed_dial_tip"

    const v5, 0x7f1006eb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8562
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "magnifier"

    const-string v4, "finger_air_view_magnifier"

    const v5, 0x7f1006eb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8563
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "sound_and_haptic_feedback"

    const-string v4, "finger_air_view_sound_and_haptic_feedback"

    const v5, 0x7f1006eb

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8564
    const-string v2, "hltejs01dcm"

    const-string v3, "ro.product.device"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "SC-02F"

    const-string v3, "ro.product.model"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 8565
    :cond_7
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const v3, 0x7f1006eb

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8569
    :cond_8
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_spen_pointer"

    const-string v4, "pen_hovering_pointer"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8570
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "battery_saving"

    const-string v4, "pen_detect_mode_disabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8571
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "loss_prevention_alert"

    const-string v4, "pen_detachment_alert"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8572
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_writing_buddy"

    const-string v4, "pen_writing_buddy"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8573
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pen_attach_detach_vibration"

    const-string v4, "pen_attach_detach_vibration"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8574
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "writing_haptic_feedback"

    const-string v4, "pen_writing_haptic_feedback"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8575
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "writing_sound"

    const-string v4, "pen_writing_sound"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8576
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_air_button"

    const-string v4, "air_button_onoff"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8577
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pen_air_view"

    const-string v4, "pen_hovering"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8578
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_additional_feedback_pen_sound"

    const-string v4, "spen_feedback_sound"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8579
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "key_additional_feedback_pen_haptic"

    const-string v4, "spen_feedback_haptic"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8582
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "sound_feedback_air_command"

    const-string v4, "spen_feedback_sound_air_command"

    const-string v5, "key_additional_feedback_pen_sound"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8583
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "sound_feedback_air_view"

    const-string v4, "spen_feedback_sound_air_view"

    const-string v5, "key_additional_feedback_pen_sound"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8584
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "sound_feedback_handwriting"

    const-string v4, "pen_writing_sound"

    const-string v5, "key_additional_feedback_pen_sound"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8587
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "haptic_feedback_air_command"

    const-string v4, "spen_feedback_haptic_air_command"

    const-string v5, "key_additional_feedback_pen_haptic"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8588
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "haptic_feedback_air_view"

    const-string v4, "spen_feedback_haptic_air_view"

    const-string v5, "key_additional_feedback_pen_haptic"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8589
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "haptic_feedback_handwriting"

    const-string v4, "pen_writing_haptic_feedback"

    const-string v5, "key_additional_feedback_pen_haptic"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8590
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "haptic_feedback_pen_gesture"

    const-string v4, "spen_feedback_haptic_pen_gesture"

    const-string v5, "key_additional_feedback_pen_haptic"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8593
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "interaction_area"

    const-string v4, "interactionarea_switch"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8594
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "sidesoftkey"

    const-string v4, "sidesoftkey_switch"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8595
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "any_screen"

    const-string v4, "any_screen_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8596
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.floating_side_softkey"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 8597
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "dialer"

    const-string v4, "onehand_dialer_enabled"

    const-string v5, "interaction_area"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8598
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "samsung_keypad"

    const-string v4, "onehand_samsungkeypad_enabled"

    const-string v5, "interaction_area"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8599
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "calculator"

    const-string v4, "onehand_calculator_enabled"

    const-string v5, "interaction_area"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8600
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pattern"

    const-string v4, "onehand_pattern_enabled"

    const-string v5, "interaction_area"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8607
    :goto_5
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "onehand_sidesoftkey_minimise"

    const-string v4, "sidesoftkey_minimise"

    const-string v5, "sidesoftkey"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8610
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 8611
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "notification_panel_j"

    const-string v4, "festival_effect_notification_panel"

    const v5, 0x7f1006f9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8612
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_wallpaper_j"

    const-string v4, "festival_effect_home_lock_screen"

    const v5, 0x7f1006f9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8613
    const-string v2, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 8614
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "messages_background_j"

    const-string v4, "festival_effect_messages_background"

    const v5, 0x7f1006f9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8631
    :cond_9
    :goto_6
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "sim_toggle"

    const-string v4, "icc_lock_enable"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8634
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "auto_update"

    const-string v4, "SOFTWARE_UPDATE_AUTO_UPDATE"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8635
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "wifi_only"

    const-string v4, "SOFTWARE_UPDATE_WIFI_ONLY"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8638
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_short_or_camera_widget"

    const-string v4, "kg_enable_camera_widget"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8641
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pen_air_view"

    const-string v4, "pen_hovering"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8644
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "weather"

    const-string v4, "weather_cover"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8645
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "walking_mate"

    const-string v4, "walk_mate"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8646
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "scover_airmessage"

    const-string v4, "air_message"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8648
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "send_dual_captured_image_key"

    const-string v4, "send_dual_captured_image"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8651
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "capture_by_active_key"

    const-string v4, "capture_by_active_key"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8652
    return-void

    .line 8193
    .end local v1    # "isTalkbackAvailable":Z
    :cond_a
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_info_weather"

    const-string v4, "lock_additional_weather"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8194
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "steps"

    const-string v4, "lock_additional_steps"

    const-string v5, "exception"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 8253
    :cond_b
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "incoming_call_notification"

    const-string v4, "driving_mode_incoming_call_notification"

    const v5, 0x7f1006dc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8254
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "chaton_mode_notification"

    const-string v4, "driving_mode_chaton_call_notification"

    const v5, 0x7f1006dc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8255
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "air_call_accept_hands_free"

    const-string v4, "driving_mode_air_call_accept"

    const v5, 0x7f1006dc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8256
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "message_notification"

    const-string v4, "driving_mode_message_notification"

    const v5, 0x7f1006dc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8257
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "email_notification"

    const-string v4, "driving_mode_email_notification"

    const v5, 0x7f1006dc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8258
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "voice_mail_notification"

    const-string v4, "driving_mode_voice_mail_notification"

    const v5, 0x7f1006dc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8259
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "alarm_notification"

    const-string v4, "driving_mode_alarm_notification"

    const v5, 0x7f1006dc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8260
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "schedule_notification"

    const-string v4, "driving_mode_schedule_notification"

    const v5, 0x7f1006dc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8261
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "unlock_screen_contents"

    const-string v4, "driving_mode_unlock_screen_contents"

    const v5, 0x7f1006dc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 8315
    :cond_c
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "notification_preference"

    const-string v4, "notification_reminder"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 8323
    .restart local v1    # "isTalkbackAvailable":Z
    :catch_0
    move-exception v0

    .line 8324
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 8412
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_d
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "palm_touch"

    const-string v4, "surface_palm_touch"

    const-string v5, "surface"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8413
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "turn_over"

    const-string v4, "motion_overturn"

    const-string v5, "motion"

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 8602
    :cond_e
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "dialer"

    const-string v4, "onehand_dialer_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8603
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "samsung_keypad"

    const-string v4, "onehand_samsungkeypad_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8604
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "calculator"

    const-string v4, "onehand_calculator_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8605
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "pattern"

    const-string v4, "onehand_pattern_enabled"

    invoke-direct {p0, v3, v4, v6, v7}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 8617
    :cond_f
    const-string v2, "2"

    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getFestivalType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 8618
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "home_lock_screen"

    const-string v4, "festival_effect_home_lock_screen"

    const v5, 0x7f1006f9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8619
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "notification_panel"

    const-string v4, "festival_effect_notification_panel"

    const v5, 0x7f1006f9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 8621
    :cond_10
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "notification_panel"

    const-string v4, "festival_effect_notification_panel"

    const v5, 0x7f1006f9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8622
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "festival_home"

    const-string v4, "festival_effect_festival_home"

    const v5, 0x7f1006f9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8623
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "lock_screen_wallpaper"

    const-string v4, "festival_effect_lockscreen_wallpaper"

    const v5, 0x7f1006f9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8624
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "unlock_effect"

    const-string v4, "festival_effect_unlock_effect"

    const v5, 0x7f1006f9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8625
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "charging_effect"

    const-string v4, "festival_effect_charging_effect"

    const v5, 0x7f1006f9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8626
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    const-string v3, "messages_background"

    const-string v4, "festival_effect_messages_background"

    const v5, 0x7f1006f9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6
.end method

.method private isPermissionEnforced(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 9102
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->isPermissionEnforced(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 9103
    :catch_0
    move-exception v0

    .line 9104
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setDirectDBInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "DBName"    # Ljava/lang/String;
    .param p3, "DBType"    # I
    .param p4, "dependencyKey"    # Ljava/lang/String;

    .prologue
    .line 8655
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;-><init>(Lcom/android/settings/settingssearch/SettingsSearchUtils$1;)V

    .line 8657
    .local v0, "directDBinfoItem":Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;
    iput-object p1, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    .line 8658
    iput-object p2, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->DBName:Ljava/lang/String;

    .line 8659
    iput p3, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->DBType:I

    .line 8660
    iput-object p4, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->dependencyKey:Ljava/lang/String;

    .line 8662
    return-object v0
.end method


# virtual methods
.method public getCurrentState(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 8666
    const/4 v4, 0x0

    .line 8667
    .local v4, "retValue":I
    const/4 v1, -0x1

    .line 8668
    .local v1, "DBType":I
    const/4 v0, 0x0

    .line 8669
    .local v0, "DBName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 8671
    .local v3, "retResultValue":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 8672
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget-object v5, v5, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8673
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget-object v0, v5, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->DBName:Ljava/lang/String;

    .line 8674
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget v1, v5, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->DBType:I

    .line 8679
    :cond_0
    if-ne v1, v6, :cond_4

    .line 8680
    const-string v5, "lock_show_info"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "show_camera_shortcut"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "lock_screen_show_clock"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "key_diagnostics_info"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "lock_info_weather"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "steps"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "show_password"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8681
    :cond_1
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 8698
    :goto_1
    const-string v5, "24 hour"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 8699
    const/16 v5, 0x18

    if-ne v4, v5, :cond_8

    move v3, v6

    .line 8704
    :goto_2
    return v3

    .line 8671
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8683
    :cond_3
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    .line 8685
    :cond_4
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 8686
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    .line 8687
    :cond_5
    const/4 v5, 0x3

    if-ne v1, v5, :cond_7

    .line 8688
    const-string v5, "auto_restore"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 8689
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    .line 8691
    :cond_6
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    .line 8695
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getCurrentStateNoneType(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_8
    move v3, v7

    .line 8699
    goto :goto_2

    .line 8701
    :cond_9
    if-eqz v4, :cond_a

    move v3, v6

    :goto_3
    goto :goto_2

    :cond_a
    move v3, v7

    goto :goto_3
.end method

.method public getDependecyState(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 8914
    const/4 v0, 0x1

    .line 8915
    .local v0, "bState":Z
    const/4 v1, 0x0

    .line 8917
    .local v1, "dependencyKey":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 8918
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget-object v3, v3, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->keyName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8919
    iget-object v3, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->mKeyMatchDBInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;

    iget-object v1, v3, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus$SearchDirectDBInfo;->dependencyKey:Ljava/lang/String;

    .line 8924
    :cond_0
    const-string v3, "exception"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8925
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getDependecyExceptionState(Ljava/lang/String;)Z

    move-result v0

    .line 8930
    :cond_1
    :goto_1
    return v0

    .line 8917
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8926
    :cond_3
    if-eqz v1, :cond_1

    .line 8927
    invoke-virtual {p0, v1}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchCurrentStatus;->getCurrentState(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method
