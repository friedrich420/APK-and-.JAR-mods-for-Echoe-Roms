.class public final Lcom/android/settings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Utils$LengthFilter;,
        Lcom/android/settings/Utils$CustomCscParser;,
        Lcom/android/settings/Utils$IndexAscCompare;,
        Lcom/android/settings/Utils$ApInfo;
    }
.end annotation


# static fields
.field public static AUTO_AIR_VIEW_MODE:I

.field public static final BADNESS_COLORS:[I

.field public static final ENABLE_DISC_BUTTON_APNLIST:Z

.field public static final ENABLE_SIM_SELECTION_UI:Z

.field public static final ENABLE_WIFI_CONNECTION_TYPE:Z

.field public static final ENABLE_WIFI_PRIORITY_MENU:Z

.field public static FINGER_AIR_VIEW_MODE:I

.field public static MASTER_AIR_VIEW_OFF:I

.field public static MASTER_AIR_VIEW_ON:I

.field public static PEN_AIR_VIEW_MODE:I

.field public static final SHOW_DETAILED_AP_INFO:Z

.field private static fileDefaultPath:Ljava/io/File;

.field private static filePath:Ljava/io/File;

.field public static flagForDefaultAp:Z

.field private static final isMultiSim:Z

.field private static mApInfo:[Lcom/android/settings/Utils$ApInfo;

.field public static mDeviceType:Ljava/lang/String;

.field private static final mExclusionSalesCodes:[Ljava/lang/String;

.field private static mExistCoverNotePackage:Ljava/lang/Boolean;

.field private static mFeatureChecked:Z

.field private static mFeatureEnabled:Z

.field private static mGridListUIFeatureChecked:Z

.field private static mGridListUIFeatureEnabled:Z

.field public static mInitialOSVersion:D

.field private static final mRemoveApkCountryCodes:[Ljava/lang/String;

.field private static mRoamingState:Z

.field public static mSViewWallpaperDrawable:Landroid/graphics/drawable/Drawable;

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 214
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    sput-wide v4, Lcom/android/settings/Utils;->mInitialOSVersion:D

    .line 219
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/Utils;->BADNESS_COLORS:[I

    .line 271
    sput-boolean v2, Lcom/android/settings/Utils;->mFeatureChecked:Z

    .line 272
    sput-boolean v2, Lcom/android/settings/Utils;->mFeatureEnabled:Z

    .line 274
    sput-boolean v2, Lcom/android/settings/Utils;->mGridListUIFeatureChecked:Z

    .line 275
    sput-boolean v2, Lcom/android/settings/Utils;->mGridListUIFeatureEnabled:Z

    .line 281
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/Utils;->isMultiSim:Z

    .line 285
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/Utils;->mSViewWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 2170
    sput-boolean v2, Lcom/android/settings/Utils;->flagForDefaultAp:Z

    .line 3028
    sput v2, Lcom/android/settings/Utils;->PEN_AIR_VIEW_MODE:I

    .line 3029
    sput v1, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    .line 3030
    sput v6, Lcom/android/settings/Utils;->AUTO_AIR_VIEW_MODE:I

    .line 3031
    sput v7, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    .line 3032
    sput v8, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    .line 3229
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    .line 4954
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "KEN"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/settings/Utils;->mExclusionSalesCodes:[Ljava/lang/String;

    .line 4958
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "RU"

    aput-object v3, v0, v2

    const-string v3, "ID"

    aput-object v3, v0, v1

    const-string v1, "VN"

    aput-object v1, v0, v6

    const-string v1, "TW"

    aput-object v1, v0, v7

    const-string v1, "AE"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v3, "QA"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "KW"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "OM"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "ZA"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "KE"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "SN"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "GH"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "NG"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "LY"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "AO"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "NA"

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v3, "PK"

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const-string v3, "MU"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v3, "MR"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/settings/Utils;->mRemoveApkCountryCodes:[Ljava/lang/String;

    .line 5276
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ShowDetailedApInfo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    .line 5277
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuPriority"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_WIFI_PRIORITY_MENU:Z

    .line 5278
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuConnectionType"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    .line 5279
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportSimSelectionForEapSimAka"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_SIM_SELECTION_UI:Z

    .line 5285
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDiscButtonApnList"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    return-void

    :cond_0
    move v0, v2

    .line 281
    goto/16 :goto_0

    .line 219
    nop

    :array_0
    .array-data 4
        0x0
        -0x3bc7d8
        -0x1ab6e8
        -0xb8500
        -0x540d4
        -0x9861c9
        -0xf580be
    .end array-data
.end method

.method public static DisableCloud()Z
    .locals 2

    .prologue
    .line 2914
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2915
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "MAX"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TRG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static Disable_PSM_Browser()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3615
    const-string v2, "americano"

    const-string v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSetupProject_KK_OS()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3616
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "c1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3622
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3619
    goto :goto_0
.end method

.method public static SetAirViewMasterValue(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "val"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3035
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3036
    .local v1, "cr":Landroid/content/ContentResolver;
    packed-switch p1, :pswitch_data_0

    .line 3062
    :cond_0
    :goto_0
    return-void

    .line 3038
    :pswitch_0
    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3039
    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3042
    :pswitch_1
    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3043
    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3046
    :pswitch_2
    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3047
    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3050
    :pswitch_3
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3051
    const-string v2, "air_view_master_onoff"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3052
    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3053
    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3057
    :pswitch_4
    const-string v2, "air_view_master_onoff"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3058
    const-string v2, "air_view_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3059
    .local v0, "airViewIndex":I
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    goto :goto_0

    .line 3036
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static autoTurnOffAirMotionEngine(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 759
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 761
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/Utils;->isAllAirMotionDisabled2014(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "air_motion_call_accept"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "master_motion"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 763
    :cond_0
    const-string v2, "air_motion_engine"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 764
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 765
    .local v1, "motion_changed":Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 766
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 768
    .end local v1    # "motion_changed":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static autoTurnOffMotionEngine(Landroid/content/Context;)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 678
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 679
    .local v9, "mResolver":Landroid/content/ContentResolver;
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 680
    .local v8, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    .line 681
    .local v6, "isTablet":Z
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    .line 682
    .local v7, "isVoiceCapable":Z
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    const/4 v3, 0x0

    .line 688
    .local v3, "detail_motion":I
    const-string v26, "master_motion"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 689
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TILT"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_4

    const-string v26, "motion_zooming"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 691
    .local v24, "tiltZoom":I
    :goto_1
    const/16 v23, 0x0

    .line 693
    .local v23, "tiltScroll":I
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string v26, "motion_panning"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 695
    .local v15, "panMove":I
    :goto_2
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN_TO_BROWSE_IMAGE"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    const-string v26, "motion_pan_to_browse_image"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 697
    .local v14, "panBrowse":I
    :goto_3
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_SHAKE"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    if-nez v6, :cond_7

    const-string v26, "motion_shake"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 699
    .local v20, "shake":I
    :goto_4
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_DOUBLE_TAP"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8

    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_8

    if-nez v6, :cond_8

    const-string v26, "motion_double_tap"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 701
    .local v5, "doubleTap":I
    :goto_5
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_9

    if-nez v7, :cond_9

    const-string v26, "motion_pick_up"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 703
    .local v22, "smartAlert":I
    :goto_6
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    if-nez v6, :cond_a

    const-string v26, "motion_pick_up_to_call_out"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 705
    .local v4, "directCall":I
    :goto_7
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_b

    const-string v26, "motion_merged_mute_pause"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 707
    .local v12, "mute_pause":I
    :goto_8
    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_c

    if-nez v6, :cond_c

    const-string v26, "motion_overturn"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 709
    .local v25, "turnover":I
    :goto_9
    and-int v25, v25, v12

    .line 710
    const/16 v18, 0x0

    .line 712
    .local v18, "peekViewAlbumsList":I
    const/16 v17, 0x0

    .line 715
    .local v17, "peekChapterPreview":I
    or-int v26, v24, v23

    or-int v26, v26, v15

    or-int v26, v26, v14

    or-int v26, v26, v20

    or-int v26, v26, v5

    or-int v26, v26, v22

    or-int v26, v26, v4

    or-int v26, v26, v25

    or-int v26, v26, v18

    or-int v3, v26, v17

    .line 718
    .end local v4    # "directCall":I
    .end local v5    # "doubleTap":I
    .end local v12    # "mute_pause":I
    .end local v14    # "panBrowse":I
    .end local v15    # "panMove":I
    .end local v17    # "peekChapterPreview":I
    .end local v18    # "peekViewAlbumsList":I
    .end local v20    # "shake":I
    .end local v22    # "smartAlert":I
    .end local v23    # "tiltScroll":I
    .end local v24    # "tiltZoom":I
    .end local v25    # "turnover":I
    :cond_2
    const/4 v10, 0x0

    .line 720
    .local v10, "motionUnlock":I
    const/4 v2, 0x0

    .line 723
    .local v2, "CameraQuickAccess":I
    const/16 v21, 0x0

    .line 724
    .local v21, "side_motion":I
    const-string v26, "master_side_motion"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 725
    const-string v26, "side_motion_one_hand_operation"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 726
    .local v13, "oneHandOperation":I
    const-string v26, "side_motion_peek"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 728
    .local v16, "peek":I
    or-int v21, v13, v16

    .line 730
    .end local v13    # "oneHandOperation":I
    .end local v16    # "peek":I
    :cond_3
    or-int v26, v3, v10

    or-int v26, v26, v2

    or-int v26, v26, v21

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    const/16 v19, 0x1

    .line 732
    .local v19, "result":Z
    :goto_a
    if-eqz v19, :cond_0

    .line 734
    const-string v26, "motion_engine"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 735
    new-instance v11, Landroid/content/Intent;

    const-string v26, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    .local v11, "motion_changed":Landroid/content/Intent;
    const-string v26, "isEnable"

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 737
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 689
    .end local v2    # "CameraQuickAccess":I
    .end local v10    # "motionUnlock":I
    .end local v11    # "motion_changed":Landroid/content/Intent;
    .end local v19    # "result":Z
    .end local v21    # "side_motion":I
    :cond_4
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 693
    .restart local v23    # "tiltScroll":I
    .restart local v24    # "tiltZoom":I
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 695
    .restart local v15    # "panMove":I
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 697
    .restart local v14    # "panBrowse":I
    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 699
    .restart local v20    # "shake":I
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 701
    .restart local v5    # "doubleTap":I
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 703
    .restart local v22    # "smartAlert":I
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 705
    .restart local v4    # "directCall":I
    :cond_b
    const/4 v12, 0x1

    goto/16 :goto_8

    .line 707
    .restart local v12    # "mute_pause":I
    :cond_c
    const/16 v25, 0x0

    goto/16 :goto_9

    .line 730
    .end local v4    # "directCall":I
    .end local v5    # "doubleTap":I
    .end local v12    # "mute_pause":I
    .end local v14    # "panBrowse":I
    .end local v15    # "panMove":I
    .end local v20    # "shake":I
    .end local v22    # "smartAlert":I
    .end local v23    # "tiltScroll":I
    .end local v24    # "tiltZoom":I
    .restart local v2    # "CameraQuickAccess":I
    .restart local v10    # "motionUnlock":I
    .restart local v21    # "side_motion":I
    :cond_d
    const/16 v19, 0x0

    goto :goto_a
.end method

.method public static buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "positiveAction"    # Ljava/lang/Runnable;

    .prologue
    .line 1950
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1951
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1952
    const v1, 0x7f0a0e3f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1953
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/Utils$2;

    invoke-direct {v2, p2}, Lcom/android/settings/Utils$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1959
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1961
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static checkPackageState(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3347
    const/4 v1, 0x0

    .line 3350
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3351
    if-eqz v1, :cond_0

    .line 3352
    const/4 v2, 0x1

    .line 3357
    :cond_0
    :goto_0
    return v2

    .line 3356
    :catch_0
    move-exception v0

    .line 3357
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static checkVlingoAccepted(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3377
    const/4 v8, 0x0

    .line 3378
    .local v8, "isAccepted":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3379
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 3380
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "content://com.vlingo.client.vlingoconfigprovider/tos_accepted"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3382
    const/4 v6, 0x0

    .line 3385
    .local v6, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3386
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3387
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3388
    .local v9, "value":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 3395
    .end local v9    # "value":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_0

    .line 3396
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3397
    const/4 v6, 0x0

    .line 3400
    :cond_0
    :goto_1
    return v8

    .line 3390
    :cond_1
    :try_start_1
    const-string v2, "Utils"

    const-string v3, "cursor is null in checkVlingoAccepted"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3392
    :catch_0
    move-exception v7

    .line 3393
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3395
    if-eqz v6, :cond_0

    .line 3396
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3397
    const/4 v6, 0x0

    goto :goto_1

    .line 3395
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 3396
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3397
    const/4 v6, 0x0

    :cond_2
    throw v2
.end method

.method public static checkWeatherWidgetEnabled(Landroid/content/Context;)Z
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 4810
    const-string v2, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4812
    .local v1, "ACCU_SETTING_URI":Landroid/net/Uri;
    const-string v6, "WIDGET_COUNT"

    .line 4813
    .local v6, "COL_SETTINGS_WIDGET_COUNT":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4814
    .local v8, "widgetCnt":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4815
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 4816
    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "WIDGET_COUNT"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4819
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 4820
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4821
    const-string v2, "WIDGET_COUNT"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 4823
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4826
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkWeatherWidgetEnabled count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4827
    if-lt v8, v9, :cond_2

    move v2, v9

    .line 4830
    :goto_0
    return v2

    :cond_2
    move v2, v10

    goto :goto_0
.end method

.method public static checkWifiPreCondition(Landroid/content/Context;Z)V
    .locals 11
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1587
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1588
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 1589
    .local v3, "wifiState":I
    const-string v4, "UsbTether"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    const-string v7, "UsbTether"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifiState == WifiManager.WIFI_STATE_ENABLING: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne v3, v9, :cond_5

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const-string v7, "UsbTether"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifiState == WifiManager.WIFI_STATE_ENABLED: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-ne v3, v10, :cond_6

    move v4, v5

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    if-eqz p1, :cond_3

    if-eq v3, v9, :cond_0

    if-ne v3, v10, :cond_3

    .line 1595
    :cond_0
    if-eq v3, v9, :cond_1

    if-ne v3, v10, :cond_2

    .line 1597
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "pre_wifi_state_for_usb_tether"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1599
    :cond_2
    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1601
    const-wide/16 v8, 0x258

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    :cond_3
    :goto_2
    if-nez p1, :cond_4

    .line 1608
    const/4 v2, 0x0

    .line 1610
    .local v2, "wifiSavedState":I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "pre_wifi_state_for_usb_tether"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 1614
    :goto_3
    if-ne v2, v5, :cond_4

    .line 1615
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1616
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pre_wifi_state_for_usb_tether"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1619
    .end local v2    # "wifiSavedState":I
    :cond_4
    return-void

    :cond_5
    move v4, v6

    .line 1590
    goto :goto_0

    :cond_6
    move v4, v6

    .line 1591
    goto :goto_1

    .line 1602
    :catch_0
    move-exception v0

    .line 1603
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1611
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "wifiSavedState":I
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v5, 0x1

    .line 1818
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 1820
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    .line 1824
    .local v0, "avatarDataStream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 1825
    const/4 v5, 0x0

    .line 1834
    :goto_0
    return v5

    .line 1827
    :cond_0
    if-eqz p1, :cond_1

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 1828
    .local v4, "userId":I
    :goto_1
    const-string v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1829
    .local v3, "um":Landroid/os/UserManager;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1830
    .local v2, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1832
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1833
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1827
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userId":I
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    goto :goto_1
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .param p0, "localeStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1653
    if-nez p0, :cond_0

    .line 1654
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1662
    :goto_0
    return-object v1

    .line 1655
    :cond_0
    const-string v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1657
    .local v0, "brokenDownLocale":[Ljava/lang/String;
    array-length v1, v0

    if-ne v4, v1, :cond_1

    .line 1658
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1659
    :cond_1
    array-length v1, v0

    if-ne v5, v1, :cond_2

    .line 1660
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1662
    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createRemoveConfirmationDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "removingUserId"    # I
    .param p2, "onConfirmListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 2427
    const-string v5, "user"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 2428
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 2431
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 2432
    const v2, 0x7f0a0e21

    .line 2433
    .local v2, "titleResId":I
    const v1, 0x7f0a0e25

    .line 2444
    .local v1, "messageResId":I
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0e2c

    invoke-virtual {v5, v6, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2451
    .local v0, "dlg":Landroid/app/Dialog;
    return-object v0

    .line 2434
    .end local v0    # "dlg":Landroid/app/Dialog;
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :cond_0
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2435
    const v2, 0x7f0a0e23

    .line 2436
    .restart local v2    # "titleResId":I
    const v1, 0x7f0a0e29

    .restart local v1    # "messageResId":I
    goto :goto_0

    .line 2437
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2438
    const v2, 0x7f0a0e24

    .line 2439
    .restart local v2    # "titleResId":I
    const v1, 0x7f0a0e27

    .restart local v1    # "messageResId":I
    goto :goto_0

    .line 2441
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :cond_2
    const v2, 0x7f0a0e22

    .line 2442
    .restart local v2    # "titleResId":I
    const v1, 0x7f0a0e28

    .restart local v1    # "messageResId":I
    goto :goto_0
.end method

.method public static createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings/UserSpinnerAdapter;
    .locals 7
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2291
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 2294
    .local v4, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 2295
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0x64

    if-lt v5, v6, :cond_0

    .line 2296
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2297
    add-int/lit8 v1, v1, -0x1

    .line 2294
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2302
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 2303
    const/4 v5, 0x0

    .line 2316
    :goto_1
    return-object v5

    .line 2306
    :cond_2
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 2308
    .local v2, "myUserHandle":Landroid/os/UserHandle;
    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2309
    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2311
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2312
    .local v3, "userDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/UserSpinnerAdapter$UserDetails;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 2313
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 2314
    new-instance v6, Lcom/android/settings/UserSpinnerAdapter$UserDetails;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-direct {v6, v5, p0, p1}, Lcom/android/settings/UserSpinnerAdapter$UserDetails;-><init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2313
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2316
    :cond_3
    new-instance v5, Lcom/android/settings/UserSpinnerAdapter;

    invoke-direct {v5, p1, v3}, Lcom/android/settings/UserSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public static deleteWifiFiles()V
    .locals 11

    .prologue
    .line 1912
    const-string v3, "/data/misc/wifi/"

    .line 1914
    .local v3, "folder":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1915
    .local v7, "scanFile":Ljava/io/File;
    new-instance v9, Lcom/android/settings/Utils$1;

    invoke-direct {v9}, Lcom/android/settings/Utils$1;-><init>()V

    invoke-virtual {v7, v9}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 1926
    .local v6, "list":[Ljava/lang/String;
    if-nez v6, :cond_1

    .line 1945
    :cond_0
    return-void

    .line 1929
    :cond_1
    array-length v9, v6

    if-eqz v9, :cond_0

    .line 1935
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 1936
    .local v2, "file":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1942
    .local v8, "temp":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1943
    .local v1, "deleteFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1935
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static enableQuickApplicationAccess(Z)Z
    .locals 3
    .param p0, "enable"    # Z

    .prologue
    .line 4907
    :try_start_0
    const-string v2, "/sys/class/sec/tsp/cmd"

    if-eqz p0, :cond_0

    const-string v1, "quick_app_access_enable,1"

    :goto_0
    invoke-static {v2, v1}, Lcom/android/settings/Utils;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 4912
    :goto_1
    return v1

    .line 4907
    :cond_0
    const-string v1, "quick_app_access_enable,0"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4909
    :catch_0
    move-exception v0

    .line 4910
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 4912
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static forceCustomPadding(Landroid/view/View;Z)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "additive"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1775
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1776
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0f008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1778
    .local v2, "paddingSide":I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    :goto_0
    add-int v3, v2, v5

    .line 1779
    .local v3, "paddingStart":I
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    :goto_1
    add-int v1, v2, v5

    .line 1780
    .local v1, "paddingEnd":I
    const v5, 0x1050023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1783
    .local v0, "paddingBottom":I
    invoke-virtual {p0, v3, v6, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1784
    return-void

    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingEnd":I
    .end local v3    # "paddingStart":I
    :cond_0
    move v5, v6

    .line 1778
    goto :goto_0

    .restart local v3    # "paddingStart":I
    :cond_1
    move v5, v6

    .line 1779
    goto :goto_1
.end method

.method public static forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/widget/ListView;
    .param p3, "ignoreSidePadding"    # Z

    .prologue
    .line 1744
    const/high16 v0, 0x2000000

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 1745
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 1746
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 1747
    return-void
.end method

.method public static formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # D
    .param p3, "withSeconds"    # Z

    .prologue
    const v5, 0x15180

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2539
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 2540
    .local v4, "seconds":I
    if-nez p3, :cond_0

    .line 2542
    add-int/lit8 v4, v4, 0x1e

    .line 2545
    :cond_0
    const/4 v0, 0x0

    .local v0, "days":I
    const/4 v1, 0x0

    .local v1, "hours":I
    const/4 v2, 0x0

    .line 2546
    .local v2, "minutes":I
    if-lt v4, v5, :cond_1

    .line 2547
    div-int v0, v4, v5

    .line 2548
    mul-int/2addr v5, v0

    sub-int/2addr v4, v5

    .line 2550
    :cond_1
    const/16 v5, 0xe10

    if-lt v4, v5, :cond_2

    .line 2551
    div-int/lit16 v1, v4, 0xe10

    .line 2552
    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v4, v5

    .line 2554
    :cond_2
    const/16 v5, 0x3c

    if-lt v4, v5, :cond_3

    .line 2555
    div-int/lit8 v2, v4, 0x3c

    .line 2556
    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    .line 2558
    :cond_3
    if-eqz p3, :cond_7

    .line 2559
    if-lez v0, :cond_4

    .line 2560
    const v5, 0x7f0a09d4

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2581
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2562
    :cond_4
    if-lez v1, :cond_5

    .line 2563
    const v5, 0x7f0a09d5

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2565
    :cond_5
    if-lez v2, :cond_6

    .line 2566
    const v5, 0x7f0a09d6

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2568
    :cond_6
    const v5, 0x7f0a09d7

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2571
    :cond_7
    if-lez v0, :cond_8

    .line 2572
    const v5, 0x7f0a09d8

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2574
    :cond_8
    if-lez v1, :cond_9

    .line 2575
    const v5, 0x7f0a09d9

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2578
    :cond_9
    const v5, 0x7f0a09da

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v0, 0x0

    .line 1633
    if-nez p0, :cond_1

    .line 1643
    :cond_0
    return-object v0

    .line 1634
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1636
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1638
    const-string v0, ""

    .line 1639
    .local v0, "addresses":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1641
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatPercentage(D)Ljava/lang/String;
    .locals 2
    .param p0, "percentage"    # D

    .prologue
    .line 1678
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 1679
    .local v0, "bf":Landroid/text/BidiFormatter;
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatPercentage(I)Ljava/lang/String;
    .locals 4
    .param p0, "percentage"    # I

    .prologue
    .line 1673
    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPercentage(JJ)Ljava/lang/String;
    .locals 4
    .param p0, "amount"    # J
    .param p2, "total"    # J

    .prologue
    .line 1668
    long-to-double v0, p0

    long-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppInfoByPkgName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2601
    const/4 v0, 0x0

    .line 2602
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2604
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2608
    :cond_0
    :goto_0
    return-object v0

    .line 2605
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getBatteryLevel(Landroid/content/Intent;)I
    .locals 4
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 1691
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1692
    .local v0, "level":I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1693
    .local v1, "scale":I
    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    return v2
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 1687
    invoke-static {p0}, Lcom/android/settings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1707
    move-object v0, p1

    .line 1709
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "plugged"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1710
    .local v2, "plugType":I
    const-string v6, "status"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1711
    .local v4, "status":I
    const-string v6, "hv_charger"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1713
    .local v1, "isHvcharger":Z
    if-eqz v1, :cond_1

    const-string v6, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1714
    const v6, 0x7f0a010e

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1739
    .local v5, "statusString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 1715
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_1
    if-ne v4, v9, :cond_4

    .line 1716
    const v6, 0x7f0a0107

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1717
    .restart local v5    # "statusString":Ljava/lang/String;
    if-lez v2, :cond_0

    .line 1719
    if-ne v2, v8, :cond_2

    .line 1720
    const v3, 0x7f0a0108

    .line 1727
    .local v3, "resId":I
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1728
    goto :goto_0

    .line 1721
    .end local v3    # "resId":I
    :cond_2
    if-ne v2, v9, :cond_3

    .line 1722
    const v3, 0x7f0a0109

    .restart local v3    # "resId":I
    goto :goto_1

    .line 1724
    .end local v3    # "resId":I
    :cond_3
    const v3, 0x7f0a010a

    .restart local v3    # "resId":I
    goto :goto_1

    .line 1729
    .end local v3    # "resId":I
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    .line 1730
    const v6, 0x7f0a010b

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 1731
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    .line 1732
    const v6, 0x7f0a010c

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 1733
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x5

    if-ne v4, v6, :cond_7

    .line 1734
    const v6, 0x7f0a010d

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0

    .line 1736
    .end local v5    # "statusString":Ljava/lang/String;
    :cond_7
    const v6, 0x7f0a0106

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "statusString":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getByteFromFile(Ljava/lang/String;)B
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 639
    const/4 v1, 0x0

    .line 641
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 643
    .local v4, "s":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 644
    if-eqz v4, :cond_0

    .line 645
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 647
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 648
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 653
    .local v3, "ret":B
    if-eqz v2, :cond_1

    .line 654
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    .line 660
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return v3

    .line 656
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 659
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 649
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ret":B
    .end local v4    # "s":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, -0x1

    .line 653
    .restart local v3    # "ret":B
    if-eqz v1, :cond_2

    .line 654
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 656
    :catch_2
    move-exception v0

    .line 657
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 652
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ret":B
    :catchall_0
    move-exception v5

    .line 653
    :goto_2
    if-eqz v1, :cond_3

    .line 654
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 658
    :cond_3
    :goto_3
    throw v5

    .line 656
    :catch_3
    move-exception v0

    .line 657
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 652
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 649
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static getCategoryView(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)Landroid/view/View;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 3976
    const/4 v4, 0x0

    .line 3977
    .local v4, "v":Landroid/view/View;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400b3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 3978
    const v5, 0x7f1001ad

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3979
    .local v3, "title":Landroid/widget/TextView;
    const v5, 0x7f1001ae

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3980
    .local v0, "expandArrow":Landroid/widget/ImageView;
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3981
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3982
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->moveToSharedPref(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)V

    .line 3983
    new-instance v1, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;

    invoke-direct {v1}, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;-><init>()V

    .line 3984
    .local v1, "holder":Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {p0, v6, v7}, Lcom/android/settings/Utils;->loadExpandState(Landroid/content/Context;J)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    .line 3985
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/android/settings/Utils;->getExpandableListDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v1, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    invoke-static {p0, v6}, Lcom/android/settings/Utils;->getExpandStateDesc(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3986
    iget-boolean v5, v1, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->isExpanded:Z

    if-eqz v5, :cond_0

    .line 3987
    const v5, 0x7f0200d4

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3991
    :goto_0
    iput-object p1, v1, Lcom/android/settings/grid/ExpandableGridView$ExpandableGridViewHolder;->header:Landroid/preference/PreferenceActivity$Header;

    .line 3992
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3993
    return-object v4

    .line 3989
    :cond_0
    const v5, 0x7f0200d5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static getColorOfCover(Landroid/content/Context;)I
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4173
    const/4 v0, 0x0

    .line 4174
    .local v0, "color":I
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 4175
    .local v1, "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    if-eqz v1, :cond_0

    .line 4176
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    .line 4177
    .local v2, "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v2, :cond_1

    .line 4178
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getColor()I

    move-result v0

    .line 4182
    .end local v2    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    :goto_0
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scover getColorOfCover color : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    return v0

    .line 4180
    .restart local v2    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_1
    const-string v3, "Utils"

    const-string v4, "Scover getColorOfCover ScoverState is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3757
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3759
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 3760
    .local v1, "prop":Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5292
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5293
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5294
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 5296
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5297
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 5298
    const/4 v0, 0x1

    .line 5304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5307
    :goto_0
    return v0

    .line 5300
    :cond_0
    const/4 v0, 0x0

    .line 5304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 5302
    :catch_0
    move-exception v0

    .line 5304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5307
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 5304
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5311
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5312
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5313
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 5315
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5316
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 5317
    const/4 v0, 0x1

    .line 5323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5326
    :goto_0
    return v0

    .line 5319
    :cond_0
    const/4 v0, 0x0

    .line 5323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 5321
    :catch_0
    move-exception v0

    .line 5323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5326
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 5323
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 5330
    const/4 v7, 0x0

    .line 5331
    .local v7, "result":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5332
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5333
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 5335
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5336
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 5339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5342
    :cond_0
    :goto_0
    return v7

    .line 5337
    :catch_0
    move-exception v0

    .line 5339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getExpandStateDesc(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "isExpanded"    # Z

    .prologue
    .line 4019
    if-eqz p1, :cond_0

    .line 4020
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4022
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExpandableListDesc(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 4015
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFavoriteCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 3405
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3406
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 3407
    .local v7, "cnt":I
    if-eqz v6, :cond_0

    .line 3408
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 3409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3411
    :cond_0
    return v7
.end method

.method public static getFestivalType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4538
    const-string v1, "1"

    .line 4539
    .local v1, "mFeatureVersion":Ljava/lang/String;
    const-string v0, "1"

    .line 4540
    .local v0, "mEffectType":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v2, p0}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    .line 4541
    .local v2, "mThemeMgr":Lcom/samsung/android/theme/SThemeManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/theme/SThemeManager;->getVersionFromFeature(I)Ljava/lang/String;

    move-result-object v1

    .line 4542
    const-string v3, "2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4543
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4544
    const-string v0, "1.5"

    .line 4551
    :goto_0
    return-object v0

    .line 4546
    :cond_0
    const-string v0, "2"

    goto :goto_0

    .line 4549
    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 2514
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2515
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2517
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGridListView(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;I)Lcom/android/settings/grid/GridListContainer;
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p3, "groupIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)",
            "Lcom/android/settings/grid/GridListContainer;"
        }
    .end annotation

    .prologue
    .line 4008
    .local p1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400cd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4009
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f10020b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/grid/GridListContainer;

    .line 4010
    .local v0, "row":Lcom/android/settings/grid/GridListContainer;
    new-instance v2, Lcom/android/settings/grid/GridListViewAdapter;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/settings/grid/GridListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V

    invoke-virtual {v0, v2}, Lcom/android/settings/grid/GridListContainer;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4011
    return-object v0
.end method

.method public static getGridView(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/List;ILcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)Lcom/android/settings/grid/GridContainer;
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p3, "mode"    # I
    .param p4, "listner"    # Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I",
            "Lcom/android/settings/grid/GridViewAdapter$OnGridItemListener;",
            ")",
            "Lcom/android/settings/grid/GridContainer;"
        }
    .end annotation

    .prologue
    .line 3999
    .local p1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 4000
    .local v7, "v":Landroid/view/View;
    const v0, 0x7f10020c

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/grid/GridContainer;

    .line 4001
    .local v6, "row":Lcom/android/settings/grid/GridContainer;
    const/high16 v0, 0x40000

    invoke-virtual {v6, v0}, Lcom/android/settings/grid/GridContainer;->setDescendantFocusability(I)V

    .line 4002
    new-instance v0, Lcom/android/settings/grid/GridViewAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/grid/GridViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILcom/android/settings/grid/GridViewAdapter$OnGridItemListener;)V

    invoke-virtual {v6, v0}, Lcom/android/settings/grid/GridContainer;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4003
    return-object v6
.end method

.method public static getInitialOSversion()D
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 4342
    sget-wide v2, Lcom/android/settings/Utils;->mInitialOSVersion:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 4343
    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4344
    .local v0, "scafe":Ljava/lang/String;
    const-string v1, "capuccino"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "latte"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSetupProject_KK_OS()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4345
    :cond_0
    const-wide v2, 0x401199999999999aL    # 4.4

    sput-wide v2, Lcom/android/settings/Utils;->mInitialOSVersion:D

    .line 4352
    :cond_1
    :goto_0
    sget-wide v2, Lcom/android/settings/Utils;->mInitialOSVersion:D

    return-wide v2

    .line 4346
    :cond_2
    const-string v1, "americano"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4347
    const-wide v2, 0x4011333333333333L    # 4.3

    sput-wide v2, Lcom/android/settings/Utils;->mInitialOSVersion:D

    goto :goto_0

    .line 4349
    :cond_3
    sput-wide v4, Lcom/android/settings/Utils;->mInitialOSVersion:D

    goto :goto_0
.end method

.method private static getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 1851
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1855
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "account_type IS NULL AND account_name IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1861
    .local v6, "localRawProfile":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 1891
    :cond_0
    :goto_0
    return-object v4

    .line 1864
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1869
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1867
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 1869
    .local v8, "localRowProfileId":J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1873
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data2"

    aput-object v3, v2, v11

    const-string v3, "data3"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1879
    .local v10, "structuredName":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 1882
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    .line 1891
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1869
    .end local v8    # "localRowProfileId":J
    .end local v10    # "structuredName":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1885
    .restart local v8    # "localRowProfileId":J
    .restart local v10    # "structuredName":Landroid/database/Cursor;
    :cond_3
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1886
    .local v7, "partialName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1887
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 1891
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v4, v7

    goto :goto_0

    .end local v7    # "partialName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;
    .locals 7
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 2057
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 2058
    .local v4, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 2059
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2060
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 2061
    .local v2, "profile":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 2059
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2064
    :cond_1
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 2065
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2069
    .end local v2    # "profile":Landroid/os/UserHandle;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getMaxFavoriteItemNumber()I
    .locals 1

    .prologue
    .line 4853
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4854
    const/16 v0, 0x9

    .line 4856
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public static getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "full"    # Z

    .prologue
    .line 1838
    if-eqz p1, :cond_0

    .line 1839
    invoke-static {p0}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1841
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getModelOfCover(Landroid/content/Context;)I
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4123
    const/4 v1, 0x0

    .line 4134
    .local v1, "model":I
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4135
    .local v0, "mProductName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4136
    const-string v2, "SC-01G"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SCL24"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4137
    :cond_0
    const-string v0, "tblte"

    .line 4140
    :cond_1
    const-string v2, "tblte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "tbhplte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "tbelte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4142
    :cond_2
    const/4 v1, 0x3

    .line 4143
    :cond_3
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scover getModelOfCover model : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    return v1
.end method

.method public static getPreferenceToSpecificActivityTitleInfo(Landroid/content/Context;Landroid/content/Intent;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 292
    const-string v5, ""

    .line 294
    .local v5, "titleString":Ljava/lang/CharSequence;
    if-eqz p1, :cond_2

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 297
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 298
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 299
    .local v2, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 300
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 301
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 304
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_0

    .line 306
    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 308
    :cond_0
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 313
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "listSize":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_1
    return-object v6

    .line 299
    .restart local v0    # "i":I
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "listSize":I
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    .end local v0    # "i":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "listSize":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private static final getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1896
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1897
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1899
    .local v6, "profile":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1907
    :goto_0
    return-object v3

    .line 1902
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1907
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1905
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1907
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ResourceName"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 3294
    const/4 v2, 0x0

    .line 3295
    .local v2, "mResources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3297
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 3298
    :try_start_0
    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3307
    :goto_0
    if-eqz v2, :cond_2

    .line 3308
    invoke-virtual {v2, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3309
    .local v1, "id":I
    if-eqz v1, :cond_1

    .line 3318
    .end local v1    # "id":I
    :goto_1
    return v1

    :cond_0
    move v1, v4

    .line 3301
    goto :goto_1

    .line 3303
    :catch_0
    move-exception v0

    .line 3305
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "id":I
    :cond_1
    move v1, v4

    .line 3314
    goto :goto_1

    .end local v1    # "id":I
    :cond_2
    move v1, v4

    .line 3318
    goto :goto_1
.end method

.method public static getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4187
    invoke-static {p0}, Lcom/android/settings/Utils;->saveSViewWallpaperDrawable(Landroid/content/Context;)V

    .line 4188
    sget-object v0, Lcom/android/settings/Utils;->mSViewWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 10
    .param p0, "activityToken"    # Landroid/os/IBinder;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "arguments"    # Landroid/os/Bundle;
    .param p3, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 2331
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-direct {v2, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 2332
    .local v2, "currentUser":Landroid/os/UserHandle;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2334
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    .line 2335
    .local v5, "launchedFromPackage":Ljava/lang/String;
    const-string v8, "com.android.settings"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2337
    .local v6, "launchedFromSettingsApp":Z
    new-instance v7, Landroid/os/UserHandle;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 2339
    .local v7, "launchedFromUser":Landroid/os/UserHandle;
    if-eqz v7, :cond_0

    invoke-virtual {v7, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2341
    invoke-static {p1, v7}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2365
    .end local v5    # "launchedFromPackage":Ljava/lang/String;
    .end local v6    # "launchedFromSettingsApp":Z
    .end local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :goto_0
    return-object v7

    .line 2345
    .restart local v5    # "launchedFromPackage":Ljava/lang/String;
    .restart local v6    # "launchedFromSettingsApp":Z
    .restart local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :cond_0
    if-eqz p3, :cond_1

    const-string v8, "android.intent.extra.USER"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    move-object v4, v8

    .line 2347
    .local v4, "extrasUser":Landroid/os/UserHandle;
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2349
    if-eqz v6, :cond_2

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v7, v4

    .line 2350
    goto :goto_0

    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_1
    move-object v4, v1

    .line 2345
    goto :goto_1

    .line 2353
    .restart local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_2
    if-eqz p2, :cond_3

    const-string v8, "android.intent.extra.USER"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    move-object v1, v8

    .line 2355
    .local v1, "argumentsUser":Landroid/os/UserHandle;
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2357
    if-eqz v6, :cond_4

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    move-object v7, v1

    .line 2358
    goto :goto_0

    .line 2361
    .end local v1    # "argumentsUser":Landroid/os/UserHandle;
    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    .end local v5    # "launchedFromPackage":Ljava/lang/String;
    .end local v6    # "launchedFromSettingsApp":Z
    .end local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :catch_0
    move-exception v3

    .line 2363
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "Settings_Utils"

    const-string v9, "Could not talk to activity manager."

    invoke-static {v8, v9, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4
    move-object v7, v2

    .line 2365
    goto :goto_0
.end method

.method private static getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1846
    invoke-static {p0}, Lcom/android/settings/Utils;->getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1847
    .local v0, "given":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "given":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "given":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSviewCoverAppLevel(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3169
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3170
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x2

    .line 3171
    .local v1, "sViewCoverAppLevel":I
    if-eqz v0, :cond_0

    .line 3172
    const-string v2, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    .line 3173
    :cond_0
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SView Cover App Level :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    return v1
.end method

.method private static getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 2522
    :try_start_0
    const-string v1, "android"

    const/16 v2, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2523
    .local v0, "sys":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Lcom/android/settings/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2526
    .end local v0    # "sys":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 2524
    :catch_0
    move-exception v1

    .line 2526
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 10
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    const v8, 0x7f0a0808

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1791
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 1792
    .local v3, "usbRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 1793
    .local v5, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 1795
    .local v1, "bluetoothRegexs":[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_0

    move v2, v6

    .line 1796
    .local v2, "usbAvailable":Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_1

    move v4, v6

    .line 1797
    .local v4, "wifiAvailable":Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_2

    move v0, v6

    .line 1799
    .local v0, "bluetoothAvailable":Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v6, v8

    .line 1812
    :goto_3
    return v6

    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "usbAvailable":Z
    .end local v4    # "wifiAvailable":Z
    :cond_0
    move v2, v7

    .line 1795
    goto :goto_0

    .restart local v2    # "usbAvailable":Z
    :cond_1
    move v4, v7

    .line 1796
    goto :goto_1

    .restart local v4    # "wifiAvailable":Z
    :cond_2
    move v0, v7

    .line 1797
    goto :goto_2

    .line 1801
    .restart local v0    # "bluetoothAvailable":Z
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    move v6, v8

    .line 1802
    goto :goto_3

    .line 1803
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 1804
    goto :goto_3

    .line 1805
    :cond_5
    if-eqz v4, :cond_6

    .line 1806
    const v6, 0x7f0a0805

    goto :goto_3

    .line 1807
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 1808
    const v6, 0x7f0a0807

    goto :goto_3

    .line 1809
    :cond_7
    if-eqz v2, :cond_8

    .line 1810
    const v6, 0x7f0a0804

    goto :goto_3

    .line 1812
    :cond_8
    const v6, 0x7f0a0806

    goto :goto_3
.end method

.method public static getTetheringSummary(Landroid/net/ConnectivityManager;)I
    .locals 10
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    const v8, 0x7f0a080a

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2089
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 2090
    .local v3, "usbRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 2091
    .local v5, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 2093
    .local v1, "bluetoothRegexs":[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_2

    move v2, v6

    .line 2094
    .local v2, "usbAvailable":Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_3

    move v4, v6

    .line 2096
    .local v4, "wifiAvailable":Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_4

    move v0, v6

    .line 2097
    .local v0, "bluetoothAvailable":Z
    :goto_2
    const-string v6, "VZW"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "SPRINT"

    const-string v7, "ALL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2099
    :cond_0
    const/4 v4, 0x0

    .line 2101
    :cond_1
    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 2114
    :goto_3
    return v6

    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "usbAvailable":Z
    .end local v4    # "wifiAvailable":Z
    :cond_2
    move v2, v7

    .line 2093
    goto :goto_0

    .restart local v2    # "usbAvailable":Z
    :cond_3
    move v4, v7

    .line 2094
    goto :goto_1

    .restart local v4    # "wifiAvailable":Z
    :cond_4
    move v0, v7

    .line 2096
    goto :goto_2

    .line 2103
    .restart local v0    # "bluetoothAvailable":Z
    :cond_5
    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    .line 2104
    const v6, 0x7f0a080c

    goto :goto_3

    .line 2105
    :cond_6
    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    move v6, v8

    .line 2106
    goto :goto_3

    .line 2107
    :cond_7
    if-eqz v4, :cond_8

    .line 2108
    const v6, 0x7f0a080d

    goto :goto_3

    .line 2109
    :cond_8
    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 2110
    const v6, 0x7f0a080b

    goto :goto_3

    .line 2111
    :cond_9
    if-eqz v2, :cond_a

    .line 2112
    const v6, 0x7f0a080e

    goto :goto_3

    :cond_a
    move v6, v8

    .line 2114
    goto :goto_3
.end method

.method public static getTetheringTitle(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3782
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3783
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 3790
    .local v1, "titleRes":I
    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_MENU_POSITION_HOTSPOT_AND_TETHERING"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3791
    const v1, 0x7f0a0809

    .line 3799
    :goto_0
    return v1

    .line 3792
    :cond_0
    const-string v2, "TMO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3793
    const v1, 0x7f0a080f

    goto :goto_0

    .line 3794
    :cond_1
    const-string v2, "NEWCO"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3795
    const v1, 0x7f0a0810

    goto :goto_0

    .line 3797
    :cond_2
    invoke-static {v0}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v1

    goto :goto_0
.end method

.method public static getTypeOfCover(Landroid/content/Context;)I
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4079
    const/4 v2, 0x2

    .line 4080
    .local v2, "type":I
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 4081
    .local v0, "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    if-eqz v0, :cond_0

    .line 4082
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    .line 4083
    .local v1, "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v1, :cond_1

    .line 4084
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    .line 4088
    .end local v1    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    :goto_0
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scover getTypeOfCover type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4089
    return v2

    .line 4086
    .restart local v1    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_1
    const-string v3, "Utils"

    const-string v4, "Scover getTypeOfCover ScoverState is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 2477
    iget-object v1, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2478
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2479
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2480
    invoke-static {p0, v0}, Lcom/android/settings/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/drawable/CircleFramedDrawable;

    move-result-object v1

    .line 2483
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getVendorApInfo()[Lcom/android/settings/Utils$ApInfo;
    .locals 4

    .prologue
    .line 2176
    sget-boolean v0, Lcom/android/settings/Utils;->flagForDefaultAp:Z

    if-eqz v0, :cond_0

    .line 2177
    sget-object v0, Lcom/android/settings/Utils;->mApInfo:[Lcom/android/settings/Utils$ApInfo;

    .line 2186
    :goto_0
    return-object v0

    .line 2178
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/Utils;->filePath:Ljava/io/File;

    .line 2179
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/Utils;->fileDefaultPath:Ljava/io/File;

    .line 2181
    sget-object v0, Lcom/android/settings/Utils;->filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/Utils;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/Utils;->fileDefaultPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 2182
    :cond_1
    const-string v0, "/data/misc/wifi/default_ap.conf"

    invoke-static {v0}, Lcom/android/settings/Utils;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/settings/Utils$ApInfo;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mApInfo:[Lcom/android/settings/Utils$ApInfo;

    .line 2186
    :goto_1
    sget-object v0, Lcom/android/settings/Utils;->mApInfo:[Lcom/android/settings/Utils$ApInfo;

    goto :goto_0

    .line 2184
    :cond_2
    const-string v0, "/system/etc/wifi/default_ap.conf"

    invoke-static {v0}, Lcom/android/settings/Utils;->getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/settings/Utils$ApInfo;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mApInfo:[Lcom/android/settings/Utils$ApInfo;

    goto :goto_1
.end method

.method private static getVendorApInfoFromFile(Ljava/lang/String;)[Lcom/android/settings/Utils$ApInfo;
    .locals 22
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 2191
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/settings/Utils;->flagForDefaultAp:Z

    .line 2193
    const-string v3, ""

    .line 2194
    .local v3, "buf1":Ljava/lang/String;
    const-string v4, ""

    .line 2195
    .local v4, "buf2":Ljava/lang/String;
    const-string v5, ""

    .line 2196
    .local v5, "buf3":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2198
    .local v2, "bWEPprofile":Z
    const/4 v9, 0x0

    .line 2200
    .local v9, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/FileReader;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2203
    .end local v9    # "in":Ljava/io/BufferedReader;
    .local v10, "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "bufLine":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 2204
    const-string v19, "ssid=\""

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 2205
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 2206
    .local v15, "ssid":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x22

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    const/16 v21, 0x22

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2207
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2208
    goto :goto_0

    .end local v15    # "ssid":Ljava/lang/String;
    :cond_1
    const-string v19, "key_mgmt="

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2209
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 2210
    .local v13, "secure":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3d

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2211
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2212
    goto/16 :goto_0

    .end local v13    # "secure":Ljava/lang/String;
    :cond_2
    const-string v19, "wep_key0="

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 2213
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 2214
    .local v17, "wepkey":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x3d

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2215
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2216
    const/4 v2, 0x1

    .line 2217
    goto/16 :goto_0

    .end local v17    # "wepkey":Ljava/lang/String;
    :cond_3
    const-string v19, "}"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    if-nez v2, :cond_4

    .line 2218
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ,"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 2219
    :cond_4
    const-string v19, "}"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_0

    .line 2220
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2227
    :cond_5
    if-eqz v10, :cond_6

    .line 2229
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2237
    :cond_6
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2238
    .local v16, "ssids":[Ljava/lang/String;
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2239
    .local v14, "secures":[Ljava/lang/String;
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 2240
    .local v18, "wepkeys":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 2241
    const-string v19, "AccessPoint"

    const-string v20, "Parse error default ap"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    const/4 v12, 0x0

    move-object v9, v10

    .line 2255
    .end local v6    # "bufLine":Ljava/lang/String;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v14    # "secures":[Ljava/lang/String;
    .end local v16    # "ssids":[Ljava/lang/String;
    .end local v18    # "wepkeys":[Ljava/lang/String;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :cond_7
    :goto_1
    return-object v12

    .line 2230
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "bufLine":Ljava/lang/String;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v7

    .line 2231
    .local v7, "e":Ljava/io/IOException;
    const-string v19, "Utils"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const/4 v12, 0x0

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .line 2223
    .end local v6    # "bufLine":Ljava/lang/String;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 2224
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v19, "Utils"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2225
    const/4 v12, 0x0

    .line 2227
    if-eqz v9, :cond_7

    .line 2229
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2230
    :catch_2
    move-exception v7

    .line 2231
    const-string v19, "Utils"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const/4 v12, 0x0

    goto :goto_1

    .line 2227
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    :goto_3
    if-eqz v9, :cond_8

    .line 2229
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2232
    :cond_8
    throw v19

    .line 2230
    :catch_3
    move-exception v7

    .line 2231
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v19, "Utils"

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const/4 v12, 0x0

    goto :goto_1

    .line 2245
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "bufLine":Ljava/lang/String;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "secures":[Ljava/lang/String;
    .restart local v16    # "ssids":[Ljava/lang/String;
    .restart local v18    # "wepkeys":[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v16

    array-length v11, v0

    .line 2246
    .local v11, "networkCount":I
    new-array v12, v11, [Lcom/android/settings/Utils$ApInfo;

    .line 2247
    .local v12, "ret":[Lcom/android/settings/Utils$ApInfo;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    if-ge v8, v11, :cond_b

    .line 2248
    aget-object v19, v14, v8

    const-string v20, "NONE"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_a

    const-string v19, ""

    aget-object v20, v18, v8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 2249
    const-string v19, "WEP"

    aput-object v19, v14, v8

    .line 2251
    :cond_a
    new-instance v19, Lcom/android/settings/Utils$ApInfo;

    aget-object v20, v16, v8

    aget-object v21, v14, v8

    invoke-direct/range {v19 .. v21}, Lcom/android/settings/Utils$ApInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v19, v12, v8

    .line 2247
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_b
    move-object v9, v10

    .line 2255
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .line 2227
    .end local v6    # "bufLine":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "in":Ljava/io/BufferedReader;
    .end local v11    # "networkCount":I
    .end local v12    # "ret":[Lcom/android/settings/Utils$ApInfo;
    .end local v14    # "secures":[Ljava/lang/String;
    .end local v16    # "ssids":[Ljava/lang/String;
    .end local v18    # "wepkeys":[Ljava/lang/String;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v19

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2223
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v7

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getVersionOfContextProviders(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3710
    const/4 v2, -0x1

    .line 3712
    .local v2, "version":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.providers.context"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3714
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3718
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 3715
    :catch_0
    move-exception v0

    .line 3716
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Settings"

    const-string v4, "[SW] Could not find ContextProvider"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWallpaperVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4834
    const/4 v2, 0x0

    .line 4836
    .local v2, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.wallpaperchooser"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4838
    .local v0, "Info":Landroid/content/pm/PackageInfo;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4842
    .end local v0    # "Info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 4839
    :catch_0
    move-exception v1

    .line 4840
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWifiDetailedState(Landroid/content/Context;)Landroid/net/NetworkInfo$DetailedState;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1579
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1581
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1583
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1572
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1574
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1575
    .local v1, "prop":Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static has7StepsFontSizeFeature()Z
    .locals 1

    .prologue
    .line 3186
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_7_STEP_FONTSIZE"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3187
    const/4 v0, 0x1

    .line 3189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static has7StepsHugeFontIndex()I
    .locals 1

    .prologue
    .line 3323
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_7_STEP_FONTSIZE"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3324
    const/4 v0, 0x6

    .line 3326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static has7StepsLargeFontScale()F
    .locals 1

    .prologue
    .line 3330
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_7_STEP_FONTSIZE"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3331
    const v0, 0x3fb5c28f    # 1.42f

    .line 3333
    :goto_0
    return v0

    :cond_0
    const v0, 0x3fa66666    # 1.3f

    goto :goto_0
.end method

.method public static hasCocktailbar(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4669
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cocktailbar"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4670
    const/4 v0, 0x1

    .line 4672
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasCoverSettingOptions(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4093
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4100
    :pswitch_0
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverSettingOptions false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4101
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4097
    :pswitch_1
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverSettingOptions true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    const/4 v0, 0x1

    goto :goto_0

    .line 4093
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasCoverStyleClock(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4106
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4112
    :pswitch_0
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverStyleClock false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4113
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4109
    :pswitch_1
    const-string v0, "Utils"

    const-string v1, "SView cover hasCoverStyleClock true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    const/4 v0, 0x1

    goto :goto_0

    .line 4106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasDAForCameraShortcut()Z
    .locals 2

    .prologue
    .line 3626
    const-string v0, "Australia"

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasDAForLockscreenShortcut()Z
    .locals 2

    .prologue
    .line 3630
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Germany"

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasDCMhome(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2119
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2121
    .local v0, "salesCode":Ljava/lang/String;
    const-string v3, "DCM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2133
    :cond_0
    :goto_0
    return v1

    .line 2125
    :cond_1
    const-string v3, "com.nttdocomo.android.dhome"

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 2126
    goto :goto_0

    .line 2129
    :cond_2
    const-string v3, "com.nttdocomo.android.paletteui"

    invoke-static {p0, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 2130
    goto :goto_0
.end method

.method public static declared-synchronized hasFingerprintFeature(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 3005
    const-class v1, Lcom/android/settings/Utils;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/android/settings/Utils;->mFeatureChecked:Z

    if-eqz v2, :cond_0

    .line 3006
    sget-boolean v0, Lcom/android/settings/Utils;->mFeatureEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3012
    :goto_0
    monitor-exit v1

    return v0

    .line 3009
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    sput-boolean v0, Lcom/android/settings/Utils;->mFeatureEnabled:Z

    .line 3011
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/Utils;->mFeatureChecked:Z

    .line 3012
    sget-boolean v0, Lcom/android/settings/Utils;->mFeatureEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3009
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 3005
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasKLook()Z
    .locals 1

    .prologue
    .line 4065
    const/4 v0, 0x0

    return v0
.end method

.method public static hasMultipleUsers(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1965
    if-nez p0, :cond_0

    .line 1974
    :goto_0
    return v3

    .line 1969
    :cond_0
    :try_start_0
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-le v1, v2, :cond_1

    move v1, v2

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    .line 1971
    :catch_0
    move-exception v0

    .line 1972
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Utils"

    const-string v2, "Cannot get Multi-user info"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasNewVoiceControlConcept()Z
    .locals 2

    .prologue
    .line 4053
    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4054
    .local v0, "sales_code":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAfterKModel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4055
    const/4 v1, 0x1

    .line 4057
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2588
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2589
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 2591
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2597
    :goto_0
    return v1

    .line 2592
    :catch_0
    move-exception v0

    .line 2593
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasSViewCoverWeather2014(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3179
    const-string v0, "1"

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3180
    const-string v0, "Utils"

    const-string v1, "SView Cover Weather2014 true, Lock Screen level 1"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    const/4 v0, 0x1

    .line 3183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 3673
    invoke-static {p0}, Lcom/android/settings/Utils;->getVersionOfContextProviders(Landroid/content/Context;)I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 3690
    :goto_0
    return-void

    .line 3676
    :cond_0
    const-string v4, "content://com.samsung.android.providers.context.log.use_app_feature_survey"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3680
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3681
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3682
    .local v2, "row":Landroid/content/ContentValues;
    const-string v4, "app_id"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3683
    const-string v4, "feature"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3684
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3685
    const-string v4, "Settings_Utils"

    const-string v5, "ContextProvider insertion operation is performed."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3686
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "row":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 3687
    .local v1, "ex":Ljava/lang/Exception;
    const-string v4, "Settings"

    const-string v5, "Error while using the ContextProvider"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    const-string v4, "Settings"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 3693
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3694
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3695
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3696
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3698
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3700
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3701
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3703
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3705
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3706
    const-string v2, "Settings_Utils"

    const-string v3, "insertLog with extra"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3707
    return-void
.end method

.method public static isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mAccessibilityService"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 931
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 932
    .local v3, "enabledServicesSetting":Ljava/lang/String;
    const/16 v0, 0x3a

    .line 933
    .local v0, "ENABLED_SERVICES_SEPARATOR":C
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3a

    invoke-direct {v4, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 936
    .local v4, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    if-nez p0, :cond_1

    .line 967
    :cond_0
    :goto_0
    return v5

    .line 940
    :cond_1
    if-eqz p0, :cond_0

    .line 941
    if-eqz p1, :cond_0

    .line 946
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 949
    if-nez v3, :cond_2

    .line 950
    const-string v3, ""

    .line 953
    :cond_2
    move-object v1, v4

    .line 954
    .local v1, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v1, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 956
    :cond_3
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 957
    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 959
    .local v2, "componentNameString":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 960
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 961
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isAfterKModel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "salesCode"    # Ljava/lang/String;

    .prologue
    .line 4041
    if-eqz p0, :cond_1

    .line 4042
    const-string v0, "millet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "matisse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "chagall"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "klimt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "degas"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4046
    :cond_0
    const/4 v0, 0x1

    .line 4049
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAirplaneModeEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 4036
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAllAirMotionDisabled2014(Landroid/content/Context;Z)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "include_external_motion_settings"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 775
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 777
    .local v4, "mResolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_AIR_WAKE_UP"

    invoke-static {v7}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "air_motion_wake_up"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 779
    .local v2, "airWakeUp":I
    :goto_0
    const-string v7, "air_motion_scroll"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 780
    .local v0, "airScroll":I
    const-string v7, "air_motion_turn"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 782
    .local v1, "airTurn":I
    if-eqz p1, :cond_2

    const-string v7, "air_motion_call_accept"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 785
    .local v3, "callAccept":I
    :goto_1
    or-int v7, v2, v0

    or-int/2addr v7, v1

    or-int/2addr v7, v3

    if-ge v7, v6, :cond_0

    move v5, v6

    :cond_0
    return v5

    .end local v0    # "airScroll":I
    .end local v1    # "airTurn":I
    .end local v2    # "airWakeUp":I
    .end local v3    # "callAccept":I
    :cond_1
    move v2, v5

    .line 777
    goto :goto_0

    .restart local v0    # "airScroll":I
    .restart local v1    # "airTurn":I
    .restart local v2    # "airWakeUp":I
    :cond_2
    move v3, v5

    .line 782
    goto :goto_1
.end method

.method public static isAllAirViewOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3065
    invoke-static {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/AirViewSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3068
    const/4 v0, 0x1

    .line 3070
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAllLockScreenCardOptionDisabled(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1119
    const-string v10, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1134
    :goto_0
    return v9

    .line 1123
    :cond_0
    const/4 v2, 0x0

    .line 1124
    .local v2, "isAllDisabled":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "category_value_weather"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1125
    .local v7, "weather":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "category_value_todayschedule"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1126
    .local v6, "todayschedule":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "category_value_todaybirthday"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1127
    .local v5, "todaybirthday":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "category_value_news"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1128
    .local v3, "news":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "category_value_social"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1129
    .local v4, "social":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "category_value_hereandnow"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1130
    .local v1, "hereandnow":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "category_value_email"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1132
    .local v0, "email":I
    or-int v10, v7, v6

    or-int/2addr v10, v5

    or-int/2addr v10, v3

    or-int/2addr v10, v4

    or-int/2addr v10, v1

    or-int v2, v10, v0

    .line 1134
    if-ge v2, v8, :cond_1

    :goto_1
    move v9, v8

    goto :goto_0

    :cond_1
    move v8, v9

    goto :goto_1
.end method

.method public static isAllMotionDisabled2014(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 793
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 794
    .local v5, "mResolver":Landroid/content/ContentResolver;
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    .line 795
    .local v3, "isTablet":Z
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    .line 803
    .local v4, "isVoiceCapable":Z
    const-string v11, "air_motion_scroll"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 804
    .local v0, "airScroll":I
    const-string v11, "air_motion_turn"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 805
    .local v1, "airTurn":I
    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static {v11}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v4, :cond_3

    const-string v11, "motion_pick_up"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 807
    .local v8, "smartAlert":I
    :goto_0
    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static {v11}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-nez v3, :cond_4

    const-string v11, "motion_pick_up_to_call_out"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 809
    .local v2, "directCall":I
    :goto_1
    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static {v11}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-static {v11}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_1
    const-string v11, "motion_merged_mute_pause"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 812
    .local v6, "mergedMutePause":I
    :goto_2
    const-string v11, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-static {v11}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "surface_palm_swipe"

    invoke-static {v5, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 815
    .local v7, "palmSwipe":I
    :goto_3
    or-int v11, v0, v1

    or-int/2addr v11, v8

    or-int/2addr v11, v2

    or-int/2addr v11, v6

    or-int/2addr v11, v7

    if-ge v11, v10, :cond_2

    move v9, v10

    :cond_2
    return v9

    .end local v2    # "directCall":I
    .end local v6    # "mergedMutePause":I
    .end local v7    # "palmSwipe":I
    .end local v8    # "smartAlert":I
    :cond_3
    move v8, v9

    .line 805
    goto :goto_0

    .restart local v8    # "smartAlert":I
    :cond_4
    move v2, v9

    .line 807
    goto :goto_1

    .restart local v2    # "directCall":I
    :cond_5
    move v6, v9

    .line 809
    goto :goto_2

    .restart local v6    # "mergedMutePause":I
    :cond_6
    move v7, v9

    .line 812
    goto :goto_3
.end method

.method public static isAllNAVendor()Z
    .locals 2

    .prologue
    .line 530
    const-string v0, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MTR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LRA"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ACG"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    :cond_0
    const/4 v0, 0x1

    .line 535
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAutoAirViewSupported()Z
    .locals 1

    .prologue
    .line 3016
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3018
    const/4 v0, 0x1

    .line 3020
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAvailableBrightness()Z
    .locals 4

    .prologue
    .line 622
    const/4 v0, -0x1

    .line 623
    .local v0, "iBatteryLevel":B
    const/4 v1, -0x1

    .line 625
    .local v1, "iChargingSource":B
    const-string v3, "/sys/class/power_supply/battery/capacity"

    invoke-static {v3}, Lcom/android/settings/Utils;->getByteFromFile(Ljava/lang/String;)B

    move-result v0

    .line 626
    const-string v3, "/sys/class/power_supply/battery/batt_charging_source"

    invoke-static {v3}, Lcom/android/settings/Utils;->getByteFromFile(Ljava/lang/String;)B

    move-result v1

    .line 628
    const/4 v3, 0x5

    if-gt v0, v3, :cond_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 629
    const/4 v2, 0x0

    .line 633
    .local v2, "ret":Z
    :goto_0
    return v2

    .line 631
    .end local v2    # "ret":Z
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "ret":Z
    goto :goto_0
.end method

.method public static isBatteryPresent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 1683
    const-string v0, "present"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCharger(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 1697
    const-string v2, "status"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1699
    .local v0, "status":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1702
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaCMCCModel()Z
    .locals 2

    .prologue
    .line 2741
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2742
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaCTCModel()Z
    .locals 2

    .prologue
    .line 2749
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2750
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaHKTWModel()Z
    .locals 2

    .prologue
    .line 2765
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2766
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaModel()Z
    .locals 2

    .prologue
    .line 2721
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2722
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaNAL()Z
    .locals 3

    .prologue
    .line 2787
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2788
    .local v0, "isChinaNal":Ljava/lang/String;
    const-string v1, "ChinaNalSecurity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isChinaOpen()Z
    .locals 2

    .prologue
    .line 2732
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2733
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isConceptForSPR()Z
    .locals 2

    .prologue
    .line 539
    const-string v0, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    :cond_0
    const/4 v0, 0x1

    .line 542
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConceptForVZW()Z
    .locals 2

    .prologue
    .line 546
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const/4 v0, 0x1

    .line 549
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCoverVerified(Landroid/content/Context;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 3940
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 3941
    .local v0, "hasCover":Z
    :goto_0
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scover isCoverVerified hasCover : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    return v0

    .line 3940
    .end local v0    # "hasCover":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isCurrentAirmotionAllItemDisabled(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3090
    invoke-static {p0}, Lcom/android/settings/motion2013/AirMotionSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3091
    const/4 v0, 0x1

    .line 3093
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3074
    const-string v3, "air_view_mode"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3076
    .local v0, "airViewIndex":I
    if-nez v0, :cond_1

    .line 3077
    invoke-static {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3086
    :cond_0
    :goto_0
    return v1

    .line 3079
    :cond_1
    if-ne v0, v1, :cond_3

    .line 3080
    invoke-static {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    .line 3086
    goto :goto_0

    .line 3082
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 3083
    invoke-static {p0}, Lcom/android/settings/Utils;->isAllAirViewOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public static isCurrentMotionAllItemDisabled(Landroid/content/ContentResolver;Landroid/content/Context;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 3097
    invoke-static {p0, p1}, Lcom/android/settings/motion2013/MotionSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3098
    const/4 v0, 0x1

    .line 3100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCurrentPalmMotionAllItemDisabled(Landroid/content/ContentResolver;)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3103
    invoke-static {p0}, Lcom/android/settings/motion2013/HandMotionSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3104
    const/4 v0, 0x1

    .line 3106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDCMRequestDisableNotiPackage(Ljava/lang/String;)Z
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2863
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2876
    :cond_0
    :goto_0
    return v6

    .line 2867
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2868
    .local v3, "disablAppList":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2869
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2870
    .local v1, "appString":[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 2871
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2872
    const/4 v6, 0x1

    goto :goto_0

    .line 2870
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static isDCMRequestOpsPackage(Ljava/lang/String;)Z
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2815
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    .line 2816
    .local v5, "sales_code":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2818
    .local v3, "packageList":[Ljava/lang/String;
    const-string v8, "DCM"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2858
    :cond_0
    :goto_0
    return v6

    .line 2823
    :cond_1
    const/16 v8, 0x18

    new-array v3, v8, [Ljava/lang/String;

    .end local v3    # "packageList":[Ljava/lang/String;
    const-string v8, "com.nttdocomo.android.osv"

    aput-object v8, v3, v6

    const-string v8, "com.nttdocomo.android.fota"

    aput-object v8, v3, v7

    const/4 v8, 0x2

    const-string v9, "com.nttdocomo.android.anmane"

    aput-object v9, v3, v8

    const/4 v8, 0x3

    const-string v9, "com.rsupport.rsperm.ntt"

    aput-object v9, v3, v8

    const/4 v8, 0x4

    const-string v9, "com.nttdocomo.android.remotelock"

    aput-object v9, v3, v8

    const/4 v8, 0x5

    const-string v9, "com.nttdocomo.android.wipe"

    aput-object v9, v3, v8

    const/4 v8, 0x6

    const-string v9, "com.nttdocomo.android.areamail"

    aput-object v9, v3, v8

    const/4 v8, 0x7

    const-string v9, "com.android.contacts"

    aput-object v9, v3, v8

    const/16 v8, 0x8

    const-string v9, "com.samsung.contacts"

    aput-object v9, v3, v8

    const/16 v8, 0x9

    const-string v9, "com.nttdocomo.android.socialphonebook"

    aput-object v9, v3, v8

    const/16 v8, 0xa

    const-string v9, "com.android.phone"

    aput-object v9, v3, v8

    const/16 v8, 0xb

    const-string v9, "com.android.dialer"

    aput-object v9, v3, v8

    const/16 v8, 0xc

    const-string v9, "com.nttdocomo.android.idmanager"

    aput-object v9, v3, v8

    const/16 v8, 0xd

    const-string v9, "com.nttdocomo.android.pf.dcmippushaggregator"

    aput-object v9, v3, v8

    const/16 v8, 0xe

    const-string v9, "com.nttdocomo.android.pf.dcmwappush"

    aput-object v9, v3, v8

    const/16 v8, 0xf

    const-string v9, "com.android.smspush"

    aput-object v9, v3, v8

    const/16 v8, 0x10

    const-string v9, "com.nttdocomo.android.accountauthenticator"

    aput-object v9, v3, v8

    const/16 v8, 0x11

    const-string v9, "com.nttdocomo.android.applicationmanager"

    aput-object v9, v3, v8

    const/16 v8, 0x12

    const-string v9, "jp.co.nttdocomo.lcsapp"

    aput-object v9, v3, v8

    const/16 v8, 0x13

    const-string v9, "jp.co.nttdocomo.lcsappsub"

    aput-object v9, v3, v8

    const/16 v8, 0x14

    const-string v9, "jp.co.nttdocomo.saigaiban"

    aput-object v9, v3, v8

    const/16 v8, 0x15

    const-string v9, "jp.co.nttdocomo.anshinmode"

    aput-object v9, v3, v8

    const/16 v8, 0x16

    const-string v9, "com.nttdocomo.android.store"

    aput-object v9, v3, v8

    const/16 v8, 0x17

    const-string v9, "com.nttdocomo.android.mediaplayer"

    aput-object v9, v3, v8

    .line 2850
    .restart local v3    # "packageList":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2851
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 2852
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 2853
    goto/16 :goto_0

    .line 2851
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isDCMhome(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2880
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2882
    .local v0, "salesCode":Ljava/lang/String;
    const-string v3, "DCM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2894
    :cond_0
    :goto_0
    return v1

    .line 2886
    :cond_1
    const-string v3, "com.nttdocomo.android.dhome"

    invoke-static {v3, p0}, Lcom/android/settings/Utils;->isPreffered(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 2887
    goto :goto_0

    .line 2890
    :cond_2
    const-string v3, "com.nttdocomo.android.paletteui"

    invoke-static {v3, p0}, Lcom/android/settings/Utils;->isPreffered(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 2891
    goto :goto_0
.end method

.method public static isDarkTheme(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, "IS_DARK_THEME":Z
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ro.product.name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHAGALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KLIMT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 487
    :goto_0
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS_DARK_THEME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v0

    .line 477
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefaultSmsAppInternal(Landroid/content/Context;)Z
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5355
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5357
    .local v0, "defaultSmsApplication":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 5358
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 5359
    const-string v2, "Settings_Utils"

    const-string v3, "SDK ver. >= KITKAT. defaultSmsApplication is null return false"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5372
    :goto_0
    return v1

    .line 5362
    :cond_0
    const-string v1, "Settings_Utils"

    const-string v3, "SDK ver. < KITKAT. defaultSmsApplication is null return true"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 5363
    goto :goto_0

    .line 5367
    :cond_1
    const-string v3, "com.android.mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5368
    const-string v1, "Settings_Utils"

    const-string v3, "DefaultSmsApp is com.android.mms"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 5369
    goto :goto_0

    .line 5371
    :cond_2
    const-string v2, "Settings_Utils"

    const-string v3, "default sms is not samsung\'s, return false"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isDomesticKTTModel()Z
    .locals 2

    .prologue
    .line 2686
    const-string v0, "KTT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDomesticLGTModel()Z
    .locals 2

    .prologue
    .line 2690
    const-string v0, "LGT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDomesticModel()Z
    .locals 2

    .prologue
    .line 2673
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 2674
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LUO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDomesticSKTModel()Z
    .locals 2

    .prologue
    .line 2682
    const-string v0, "SKT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDualFolderType(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3024
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDuosModel(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 590
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "salesCode":Ljava/lang/String;
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "mProductName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 593
    const-string v3, "CTC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 594
    const-string v3, "GSM"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 604
    :cond_0
    :goto_0
    return v2

    .line 596
    :cond_1
    const-string v3, "GG"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DGG"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DTC"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "DTCS"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 600
    :cond_2
    const-string v3, "CDMA"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 604
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEasyMode30Status(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v1, 0x1

    .line 3211
    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE_30"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3212
    const-string v2, "easy_mode_switch"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3213
    .local v0, "state":I
    if-nez v0, :cond_0

    .line 3217
    .end local v0    # "state":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEnableDockSettings(Landroid/content/Context;)Z
    .locals 27
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 3841
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v16

    .line 3842
    .local v16, "getTypeOfCover":I
    const/16 v18, 0x0

    .line 3843
    .local v18, "hasNoSViewCover":Z
    const/16 v17, 0x0

    .line 3844
    .local v17, "hasNoCover":Z
    const/16 v24, 0x2

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    if-nez v16, :cond_1

    .line 3845
    :cond_0
    const/16 v18, 0x1

    .line 3846
    :cond_1
    const/16 v24, 0x2

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 3847
    const/16 v17, 0x1

    .line 3848
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->needsDockSettings(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_3

    const-string v24, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static/range {v24 .. v24}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_10

    :cond_3
    const/4 v13, 0x1

    .line 3849
    .local v13, "dock_settings":Z
    :goto_0
    const-string v24, "dock_settings"

    move-object/from16 v0, v24

    invoke-static {v0, v13}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3850
    const/4 v12, 0x1

    .line 3851
    .local v12, "dock_audio":Z
    const-string v24, "dock_audio"

    move-object/from16 v0, v24

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3852
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->needsDockSettings(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_4

    const-string v24, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static/range {v24 .. v24}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_11

    :cond_4
    const/4 v14, 0x1

    .line 3853
    .local v14, "dock_sounds":Z
    :goto_1
    const-string v24, "dock_sounds"

    move-object/from16 v0, v24

    invoke-static {v0, v14}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3854
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_12

    :cond_5
    const/4 v10, 0x1

    .line 3856
    .local v10, "cradle_enable":Z
    :goto_2
    const-string v24, "cradle_enable"

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3857
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x1120055

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v24

    if-nez v24, :cond_13

    :cond_6
    const/16 v20, 0x1

    .line 3860
    .local v20, "screensaver":Z
    :goto_3
    const-string v24, "screensaver"

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3861
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v24

    if-nez v24, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->needsDockSettings(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_7

    const-string v24, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static/range {v24 .. v24}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_14

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v24

    if-nez v24, :cond_14

    const/4 v11, 0x1

    .line 3863
    .local v11, "desk_home_screen_display":Z
    :goto_4
    const-string v24, "desk_home_screen_display"

    move-object/from16 v0, v24

    invoke-static {v0, v11}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3864
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_8

    const-string v24, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v24 .. v24}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v24

    if-eqz v24, :cond_15

    if-eqz v17, :cond_15

    :cond_8
    const/4 v7, 0x1

    .line 3866
    .local v7, "cover":Z
    :goto_5
    const-string v24, "cover"

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3867
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_9

    const-string v24, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v24 .. v24}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v24

    if-eqz v24, :cond_16

    if-eqz v17, :cond_16

    :cond_9
    const/4 v4, 0x1

    .line 3869
    .local v4, "automatic_unlock":Z
    :goto_6
    const-string v24, "automatic_unlock"

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3870
    invoke-static {}, Lcom/android/settings/Utils;->isJ_Device()Z

    move-result v24

    if-eqz v24, :cond_a

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_a

    const-string v24, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v24 .. v24}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v24

    if-eqz v24, :cond_17

    if-eqz v18, :cond_17

    :cond_a
    const/16 v22, 0x1

    .line 3873
    .local v22, "show_in_call_screen":Z
    :goto_7
    const-string v24, "show_in_call_screen"

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3874
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v24

    if-eqz v24, :cond_18

    if-eqz v18, :cond_18

    :cond_b
    const/16 v23, 0x1

    .line 3876
    .local v23, "sview_color":Z
    :goto_8
    const-string v24, "sview_color"

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3877
    const/16 v19, 0x0

    .line 3879
    .local v19, "hdmi":Z
    const-string v24, "hdmi"

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3880
    move/from16 v3, v19

    .line 3881
    .local v3, "audio_output":I
    const-string v24, "audio_output"

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3882
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_19

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_c

    const-string v24, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v24 .. v24}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_19

    :cond_c
    const/4 v5, 0x1

    .line 3884
    .local v5, "book_cover":Z
    :goto_9
    const-string v24, "book_cover"

    move-object/from16 v0, v24

    invoke-static {v0, v5}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3885
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_1a

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_d

    const-string v24, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_UNLOCK"

    invoke-static/range {v24 .. v24}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1a

    :cond_d
    const/4 v6, 0x1

    .line 3887
    .local v6, "book_cover_automatic_unlock":Z
    :goto_a
    const-string v24, "book_cover_automatic_unlock"

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3888
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_1b

    const/4 v8, 0x1

    .line 3889
    .local v8, "cover_note":Z
    :goto_b
    const-string v24, "cover_note"

    move-object/from16 v0, v24

    invoke-static {v0, v8}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3890
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_1c

    const/4 v9, 0x1

    .line 3891
    .local v9, "cover_note_weather_unit":Z
    :goto_c
    const-string v24, "cover_note_weather_unit"

    move-object/from16 v0, v24

    invoke-static {v0, v9}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3892
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v24, v0

    const/16 v25, 0xa0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_e

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_e

    :cond_e
    const/4 v15, 0x1

    .line 3896
    .local v15, "earset":Z
    const-string v24, "earset"

    move-object/from16 v0, v24

    invoke-static {v0, v15}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3897
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v24, v0

    const/16 v25, 0xa0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_f

    :cond_f
    const/4 v2, 0x1

    .line 3901
    .local v2, "audio_applications":Z
    const-string v24, "audio_applications"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->printLog(Ljava/lang/String;Z)V

    .line 3903
    const-string v24, "Utils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Scover hasNoSViewCover : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3905
    if-eqz v13, :cond_1d

    if-eqz v12, :cond_1d

    if-eqz v14, :cond_1d

    if-eqz v10, :cond_1d

    if-eqz v20, :cond_1d

    if-eqz v11, :cond_1d

    if-eqz v7, :cond_1d

    if-eqz v4, :cond_1d

    if-eqz v22, :cond_1d

    if-eqz v23, :cond_1d

    if-eqz v19, :cond_1d

    if-eqz v3, :cond_1d

    if-eqz v5, :cond_1d

    if-eqz v6, :cond_1d

    if-eqz v8, :cond_1d

    if-eqz v9, :cond_1d

    if-eqz v15, :cond_1d

    if-eqz v2, :cond_1d

    const/16 v21, 0x1

    .line 3912
    .local v21, "shouldBeRemoved":Z
    :goto_d
    if-nez v21, :cond_1e

    const/16 v24, 0x1

    :goto_e
    return v24

    .line 3848
    .end local v2    # "audio_applications":Z
    .end local v3    # "audio_output":I
    .end local v4    # "automatic_unlock":Z
    .end local v5    # "book_cover":Z
    .end local v6    # "book_cover_automatic_unlock":Z
    .end local v7    # "cover":Z
    .end local v8    # "cover_note":Z
    .end local v9    # "cover_note_weather_unit":Z
    .end local v10    # "cradle_enable":Z
    .end local v11    # "desk_home_screen_display":Z
    .end local v12    # "dock_audio":Z
    .end local v13    # "dock_settings":Z
    .end local v14    # "dock_sounds":Z
    .end local v15    # "earset":Z
    .end local v19    # "hdmi":Z
    .end local v20    # "screensaver":Z
    .end local v21    # "shouldBeRemoved":Z
    .end local v22    # "show_in_call_screen":Z
    .end local v23    # "sview_color":Z
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3852
    .restart local v12    # "dock_audio":Z
    .restart local v13    # "dock_settings":Z
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 3854
    .restart local v14    # "dock_sounds":Z
    :cond_12
    invoke-static {}, Lcom/android/settings/Utils;->isRemoveCradelOnly()Z

    move-result v24

    if-nez v24, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->needsDockSettings(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_5

    const-string v24, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static/range {v24 .. v24}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 3857
    .restart local v10    # "cradle_enable":Z
    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 3861
    .restart local v20    # "screensaver":Z
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 3864
    .restart local v11    # "desk_home_screen_display":Z
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 3867
    .restart local v7    # "cover":Z
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 3870
    .restart local v4    # "automatic_unlock":Z
    :cond_17
    const/16 v22, 0x0

    goto/16 :goto_7

    .line 3874
    .restart local v22    # "show_in_call_screen":Z
    :cond_18
    const/16 v23, 0x0

    goto/16 :goto_8

    .line 3882
    .restart local v3    # "audio_output":I
    .restart local v19    # "hdmi":Z
    .restart local v23    # "sview_color":Z
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 3885
    .restart local v5    # "book_cover":Z
    :cond_1a
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 3888
    .restart local v6    # "book_cover_automatic_unlock":Z
    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_b

    .line 3890
    .restart local v8    # "cover_note":Z
    :cond_1c
    const/4 v9, 0x0

    goto/16 :goto_c

    .line 3905
    .restart local v2    # "audio_applications":Z
    .restart local v9    # "cover_note_weather_unit":Z
    .restart local v15    # "earset":Z
    :cond_1d
    const/16 v21, 0x0

    goto :goto_d

    .line 3912
    .restart local v21    # "shouldBeRemoved":Z
    :cond_1e
    const/16 v24, 0x0

    goto :goto_e
.end method

.method public static isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3245
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3247
    .local v0, "enable":I
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    const/4 v3, 0x3

    if-ne v3, v0, :cond_1

    .line 3256
    .end local v0    # "enable":I
    :cond_0
    :goto_0
    return v2

    .line 3252
    .restart local v0    # "enable":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3254
    .end local v0    # "enable":I
    :catch_0
    move-exception v1

    .line 3256
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public static isExistCoverNotePackage(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3232
    sget-object v1, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 3234
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.daynote"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 3236
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3241
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 3237
    :catch_0
    move-exception v0

    .line 3238
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/settings/Utils;->mExistCoverNotePackage:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static isFavorite(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3589
    const/4 v7, 0x0

    .line 3590
    .local v7, "ret":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "key"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3591
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v8, v7

    .line 3596
    .end local v7    # "ret":Z
    .local v8, "ret":I
    :goto_0
    return v8

    .line 3592
    .end local v8    # "ret":I
    .restart local v7    # "ret":Z
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3593
    const/4 v7, 0x1

    .line 3595
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v7

    .line 3596
    .restart local v8    # "ret":I
    goto :goto_0
.end method

.method public static isFolderModel(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2909
    const/4 v0, 0x0

    return v0
.end method

.method public static isFontsizeForT()Z
    .locals 2

    .prologue
    .line 4456
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4457
    .local v0, "mProductName":Ljava/lang/String;
    const-string v1, "tblte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tr3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trhlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tre3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tbhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tr3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tre3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4459
    :cond_0
    const/4 v1, 0x1

    .line 4462
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFullScreenSupported()Z
    .locals 1

    .prologue
    .line 3663
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FULL_SCREEN"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3664
    const/4 v0, 0x1

    .line 3666
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGeoNewsUnsupportedModel()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4972
    invoke-static {}, Lcom/android/settings/Utils;->readCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    .line 4973
    .local v0, "countryIsoCode":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    .line 4975
    .local v3, "salesCode":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    const-string v7, "SEC_FLOATING_FEATURE_SAFETYASSISTANCE_SUPPORT_GEONEWS"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4977
    const-string v5, "Utils"

    const-string v6, "SEC_FLOATING_FEATURE_SAFETYASSISTANCE_SUPPORT_GEONEWS is FALSE"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4997
    :goto_0
    return v4

    .line 4981
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v6, Lcom/android/settings/Utils;->mRemoveApkCountryCodes:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 4982
    sget-object v6, Lcom/android/settings/Utils;->mRemoveApkCountryCodes:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4983
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    sget-object v6, Lcom/android/settings/Utils;->mExclusionSalesCodes:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    .line 4984
    sget-object v6, Lcom/android/settings/Utils;->mExclusionSalesCodes:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4985
    const-string v4, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isoCode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] / salesCode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]  support GeoNews."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 4987
    goto :goto_0

    .line 4983
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4990
    :cond_2
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isoCode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] / salesCode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]  don\'t support GeoNews."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4981
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4995
    :cond_4
    const-string v4, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isoCode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] / salesCode ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]  support GeoNews."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 4997
    goto/16 :goto_0
.end method

.method public static isGridListUIEnabeld()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4691
    sget-boolean v0, Lcom/android/settings/Utils;->mGridListUIFeatureChecked:Z

    if-eqz v0, :cond_0

    .line 4692
    sget-boolean v0, Lcom/android/settings/Utils;->mGridListUIFeatureEnabled:Z

    .line 4702
    :goto_0
    return v0

    .line 4695
    :cond_0
    const-string v0, "GRIDLIST"

    const-string v1, "GRIDLIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4696
    sput-boolean v2, Lcom/android/settings/Utils;->mGridListUIFeatureEnabled:Z

    .line 4700
    :goto_1
    sput-boolean v2, Lcom/android/settings/Utils;->mGridListUIFeatureChecked:Z

    .line 4702
    sget-boolean v0, Lcom/android/settings/Utils;->mGridListUIFeatureEnabled:Z

    goto :goto_0

    .line 4698
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/Utils;->mGridListUIFeatureEnabled:Z

    goto :goto_1
.end method

.method public static isGridSettingEnabed()Z
    .locals 1

    .prologue
    .line 2162
    const/4 v0, 0x1

    return v0
.end method

.method public static isGridSimple()Z
    .locals 2

    .prologue
    .line 4719
    const-string v0, "GRIDLIST"

    .line 4721
    .local v0, "type":Ljava/lang/String;
    const-string v1, "GRIDLIST_SIMPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4722
    const/4 v1, 0x1

    .line 4725
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGridSimpleMenuEnabled()Z
    .locals 2

    .prologue
    .line 4707
    const-string v0, "GRIDLIST"

    .line 4709
    .local v0, "type":Ljava/lang/String;
    const-string v1, "GRIDLIST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GRIDLIST_SIMPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4711
    :cond_0
    const/4 v1, 0x1

    .line 4714
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGuestMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3739
    const-string v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 3740
    .local v1, "mUm":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3742
    .local v0, "info":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGuestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isH_Device()Z
    .locals 2

    .prologue
    .line 4868
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 4869
    .local v0, "build_model":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "SM-N900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ASH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Madrid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "JS01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SC-01F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SCL22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SC-02F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-G910"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SM-N750"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4873
    :cond_0
    const/4 v1, 0x1

    .line 4875
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHelpHubDownloadableSupported()Z
    .locals 2

    .prologue
    .line 3339
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_HELP_HUB_APK_TYPE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3340
    const/4 v0, 0x1

    .line 3342
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1145
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1146
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1147
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1138
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1139
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1140
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1141
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isJ_Device()Z
    .locals 3

    .prologue
    .line 3636
    const-string v1, "ro.product.name"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3637
    .local v0, "modelName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3638
    const-string v1, "jflte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "jalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ja3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "jactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ks01lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3641
    :cond_0
    const/4 v1, 0x1

    .line 3644
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isJapanDCMModel()Z
    .locals 2

    .prologue
    .line 2805
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2806
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isJapanModel()Z
    .locals 2

    .prologue
    .line 2799
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2800
    .local v0, "salesCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XJP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isJpnFestivalToday(Landroid/content/Context;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 4592
    const/4 v6, 0x0

    .line 4593
    .local v6, "NEW_YEAR_DAY_FESTIVAL":I
    const/4 v4, 0x2

    .line 4594
    .local v4, "GIRLS_FESTIVAL":I
    const/4 v0, 0x5

    .line 4595
    .local v0, "BOYS_FESTIVAL":I
    const/16 v7, 0x8

    .line 4596
    .local v7, "TANABATA_FESTIVAL":I
    const/16 v5, 0xa

    .line 4597
    .local v5, "HALLOWEEN_FESTIVAL":I
    const/16 v1, 0xb

    .line 4598
    .local v1, "CHRISTMASEVE_FESTIVAL":I
    const/16 v2, 0xc

    .line 4600
    .local v2, "CHRISTMAS_FESTIVAL":I
    const/4 v8, -0x1

    .line 4602
    .local v8, "eventId":I
    const/4 v11, 0x7

    new-array v3, v11, [I

    aput v6, v3, v10

    aput v4, v3, v9

    const/4 v11, 0x2

    aput v0, v3, v11

    const/4 v11, 0x3

    aput v7, v3, v11

    const/4 v11, 0x4

    aput v5, v3, v11

    const/4 v11, 0x5

    aput v1, v3, v11

    const/4 v11, 0x6

    aput v2, v3, v11

    .line 4612
    .local v3, "FESTIVAL_LOCKSCREEN_EVENT_IDS":[I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v3}, Lcom/android/settings/Utils;->queryEventIdToday(Landroid/content/ContentResolver;[I)I

    move-result v8

    .line 4613
    const-string v11, "Utils_isJpnFestivalToday"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "eventId :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    if-ltz v8, :cond_0

    .line 4617
    :goto_0
    return v9

    :cond_0
    move v9, v10

    goto :goto_0
.end method

.method public static isKnoxProfile(Landroid/os/UserManager;)Z
    .locals 2
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 2084
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2085
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v1

    return v1
.end method

.method public static isKnoxTwoEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2157
    const/4 v0, 0x0

    return v0
.end method

.method public static isLightTheme(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 459
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 460
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "lightTheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v2

    .line 464
    :cond_1
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    .line 465
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "lightTheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public static isListUI(Landroid/content/Context;)Z
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 358
    const/4 v0, 0x0

    .line 360
    .local v0, "ret":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_listui"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 362
    const/4 v0, 0x1

    .line 364
    :cond_0
    return v0
.end method

.method public static isLocaleRTL()Z
    .locals 1

    .prologue
    .line 497
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static isLocaleRTL(Ljava/util/Locale;)Z
    .locals 9
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 508
    const-string v0, "ar"

    .line 510
    .local v0, "ISO639_ARABIC":Ljava/lang/String;
    const-string v3, "fa"

    .line 512
    .local v3, "ISO639_PERSIAN":Ljava/lang/String;
    const-string v1, "he"

    .line 515
    .local v1, "ISO639_HEBREW":Ljava/lang/String;
    const-string v2, "iw"

    .line 517
    .local v2, "ISO639_HEBREW_FORMER":Ljava/lang/String;
    const-string v6, "ji"

    .line 519
    .local v6, "ISO639_YIDDISH_FORMER":Ljava/lang/String;
    const-string v4, "ur"

    .line 521
    .local v4, "ISO639_URDU":Ljava/lang/String;
    const-string v5, "yi"

    .line 522
    .local v5, "ISO639_YIDDISH":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 523
    .local v7, "iso639":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isLockTypeEnabled()Z
    .locals 1

    .prologue
    .line 3225
    const/4 v0, 0x1

    return v0
.end method

.method public static isManagedProfile(Landroid/os/UserManager;)Z
    .locals 2
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 2076
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2077
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    return v1
.end method

.method public static isMessageCapable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 440
    const-string v1, "ro.product.model"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "model":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "KC100S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KC100K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "T217T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "P607T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMetroPCS()Z
    .locals 2

    .prologue
    .line 3734
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3735
    .local v0, "product_name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "MetroPCS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobileNetworkEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 3769
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    .prologue
    .line 428
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isMouseHoveringEnabledExceptListscrolling(Landroid/content/ContentResolver;)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v5, 0x0

    .line 3929
    const-string v6, "mouse_hovering_information_preview"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3930
    .local v2, "informationPreview":I
    const-string v6, "mouse_hovering_icon_label"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3932
    .local v1, "iconLabels":I
    const-string v6, "mouse_hovering_full_text"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3933
    .local v0, "fullText":I
    const-string v6, "mouse_hovering_progress_bar_preview"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 3934
    .local v4, "progressBarPreview":I
    const-string v6, "mouse_hovering_magnetic_ui"

    invoke-static {p0, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3936
    .local v3, "magneticUI":I
    or-int v6, v2, v1

    or-int/2addr v6, v0

    or-int/2addr v6, v4

    or-int/2addr v6, v3

    if-lez v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5
.end method

.method public static isMouseHoveringSupported()Z
    .locals 1

    .prologue
    .line 3659
    const/4 v0, 0x0

    return v0
.end method

.method public static isMultisimModel()Z
    .locals 1

    .prologue
    .line 608
    sget-boolean v0, Lcom/android/settings/Utils;->isMultiSim:Z

    return v0
.end method

.method public static isNoteModel()Z
    .locals 1

    .prologue
    .line 4534
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSPen()Z

    move-result v0

    return v0
.end method

.method public static isNotificationAccessSysApp(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x1

    .line 4678
    const-string v1, "com.sec.feature.cocktailbar"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4679
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4687
    :cond_0
    :goto_0
    return v0

    .line 4681
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.catchme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.catchme.briefing.CatchMeService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4684
    :cond_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.sviewcover"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.cover.notification.ImNotiListenerService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4687
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOSUpgrade()Z
    .locals 2

    .prologue
    .line 4226
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "t0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "melius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "golden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serrano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "garda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wilcox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "baffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "p4note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mproject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kona"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fresco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hl3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ha3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "crater"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "santos10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jflte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsglte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m3xx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s3ve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ks01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4234
    :cond_0
    const/4 v0, 0x1

    .line 4236
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isOemUnlockEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2458
    const-string v1, "persistent_data_block"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 2460
    .local v0, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    return v1
.end method

.method public static isP4Note_Device()Z
    .locals 3

    .prologue
    .line 3648
    const-string v1, "ro.product.name"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3649
    .local v0, "modelName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3650
    const-string v1, "p4note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3651
    const/4 v1, 0x1

    .line 3654
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3724
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3725
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 3726
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3727
    .local v1, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3728
    const/4 v4, 0x1

    .line 3730
    .end local v1    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public static isPedometerSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 3193
    const-string v1, "com.sec.android.app.shealth"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3194
    const-string v1, "Utils"

    const-string v2, "isPedometerSupported false : no shealth package"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    :goto_0
    return v0

    .line 3197
    :cond_0
    const-string v1, "com.sec.android.app.shealth.CHECK_INIT"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3198
    const-string v1, "Utils"

    const-string v2, "isPedometerSupported false : shealth intent not available"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3201
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.scontext_lite"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3203
    const-string v1, "Utils"

    const-string v2, "isPedometerSupported false : sensorhub is not supported"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3206
    :cond_2
    const-string v0, "Utils"

    const-string v1, "isPedometerSupported true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isPreffered(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2899
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2900
    .local v1, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2901
    .local v0, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2902
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v0, p0}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 2904
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z
    .locals 3
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "otherUser"    # Landroid/os/UserHandle;

    .prologue
    const/4 v0, 0x0

    .line 2411
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2412
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRemoveCradelOnly()Z
    .locals 3

    .prologue
    .line 4484
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4486
    .local v0, "mProductName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4487
    const-string v1, "SC-01G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SCL24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4488
    :cond_0
    const-string v0, "tblte"

    .line 4492
    :cond_1
    const-string v1, "tblte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tre3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tre3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4495
    :cond_2
    const-string v1, "Utils"

    const-string v2, "isRemoveCradelOnly : true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4496
    const/4 v1, 0x1

    .line 4499
    :goto_0
    return v1

    .line 4498
    :cond_3
    const-string v1, "Utils"

    const-string v2, "isRemoveCradelOnly : false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4499
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRestrictedProfile(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3764
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 3765
    .local v0, "mUm":Landroid/os/UserManager;
    const-string v1, "no_modify_accounts"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isRoaming(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 613
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 615
    .local v0, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/Utils;->mRoamingState:Z

    .line 616
    sget-boolean v1, Lcom/android/settings/Utils;->mRoamingState:Z

    return v1
.end method

.method public static isSPen30()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4861
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "p4note"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 4862
    const/4 v0, 0x0

    .line 4864
    :cond_0
    return v0
.end method

.method public static isSPenNewLayoutFromT()Z
    .locals 4

    .prologue
    .line 4846
    invoke-static {}, Lcom/android/settings/Utils;->getInitialOSversion()D

    move-result-wide v0

    const-wide v2, 0x4011333333333333L    # 4.3

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSPen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4847
    const/4 v0, 0x1

    .line 4849
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSViewCover2014Supported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3123
    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3124
    .local v0, "mProductName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3125
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 3127
    .local v2, "sViewCoverAppLevel":I
    if-eqz v1, :cond_0

    .line 3128
    const-string v3, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    .line 3130
    :cond_0
    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const-string v3, "slte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "a5lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "a5ulte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3132
    :cond_1
    const/4 v3, 0x1

    .line 3134
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSViewCoverSelectItemWithLockScreen(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3165
    const/4 v0, 0x1

    return v0
.end method

.method public static isSViewStyleClockEnabled(Landroid/content/Context;Landroid/content/ContentResolver;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 3154
    invoke-static {p0}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v2

    .line 3155
    .local v2, "covertype":I
    const/4 v0, -0x1

    .line 3156
    .local v0, "STYLIZED_CLOCK_DISABLED":I
    const-string v1, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    .line 3157
    .local v1, "STYLIZED_CLOCK_STYLE_KEY":Ljava/lang/String;
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3159
    .local v3, "defaultClock":I
    if-eq v3, v0, :cond_0

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    .line 3160
    :cond_0
    const/4 v4, 0x0

    .line 3162
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isSViewWallpaperOldSupported()Z
    .locals 2

    .prologue
    .line 3138
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3139
    .local v0, "mProductName":Ljava/lang/String;
    const-string v1, "hlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ha3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3140
    :cond_0
    const/4 v1, 0x1

    .line 3142
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSViewWeatherforT()Z
    .locals 2

    .prologue
    .line 4792
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4794
    .local v0, "mProductName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4795
    const-string v1, "SC-01G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SCL24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4796
    :cond_0
    const-string v0, "tblte"

    .line 4800
    :cond_1
    const-string v1, "tblte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tre3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tre3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4803
    :cond_2
    const/4 v1, 0x1

    .line 4805
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSearchVerTwoEnable()Z
    .locals 1

    .prologue
    .line 2928
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SEARCH_VER_TWO"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2929
    const/4 v0, 0x1

    .line 2931
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSettingsUI2013Supported()Z
    .locals 1

    .prologue
    .line 3110
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3111
    const/4 v0, 0x1

    .line 3113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSettingsUI2014Supported()Z
    .locals 2

    .prologue
    .line 3116
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chagall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "klimt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3118
    :cond_0
    const/4 v0, 0x1

    .line 3120
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSetupCompleted(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 3221
    const-string v1, "user_setup_complete"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSetupProject_KK_OS()Z
    .locals 2

    .prologue
    .line 4240
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fortuna"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "levil"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "e5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "e7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vasta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serranove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "klte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "k3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kmini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mega2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kwifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hestia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "patek"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "slte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kvo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kmini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gnoteds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "berluti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "afyon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tbelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lentisvelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "slte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kcat6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m2a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tblte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kccat6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lentislte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tr3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tre3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tre3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4254
    :cond_0
    const/4 v0, 0x1

    .line 4256
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimMissing(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 565
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 566
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v3

    .line 567
    .local v0, "isDataOnly_Sim":Z
    :goto_0
    const/4 v1, 0x0

    .line 569
    .local v1, "isSimMissing":Z
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v3, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 572
    :cond_0
    const-string v3, "Settings"

    const-string v4, "isSimMissing : true"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v1, 0x1

    .line 575
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 576
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->isNoSIM()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 577
    const-string v3, "Settings"

    const-string v4, "MultiSimManager isNoSIM"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v1, 0x1

    .line 585
    :cond_2
    :goto_1
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimMissing : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return v1

    .line 566
    .end local v0    # "isDataOnly_Sim":Z
    .end local v1    # "isSimMissing":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 580
    .restart local v0    # "isDataOnly_Sim":Z
    .restart local v1    # "isSimMissing":Z
    :cond_4
    const-string v3, "Settings"

    const-string v4, "MultiSimManager !isNoSIM"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isStyleClockSupported()Z
    .locals 2

    .prologue
    .line 3146
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3148
    .local v0, "mProductName":Ljava/lang/String;
    const-string v1, "slte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "a5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3149
    :cond_0
    const/4 v1, 0x0

    .line 3151
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSupportAddtionalFeedback()Z
    .locals 2

    .prologue
    .line 4902
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FW_SPEN_HAPTIC_SETTING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportEPDG()Z
    .locals 1

    .prologue
    .line 4521
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportFastCharging()Z
    .locals 2

    .prologue
    .line 4466
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4468
    .local v0, "mProductName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4469
    const-string v1, "SC-01G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SCL24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4470
    :cond_0
    const-string v0, "tblte"

    .line 4474
    :cond_1
    const-string v1, "tblte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tre3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tre3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4477
    :cond_2
    const/4 v1, 0x1

    .line 4479
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportFestival(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 4555
    invoke-static {}, Lcom/android/settings/Utils;->isSupportVNFestival()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4563
    :cond_0
    :goto_0
    return v2

    .line 4558
    :cond_1
    new-instance v1, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    .line 4559
    .local v1, "mThemeMgr":Lcom/samsung/android/theme/SThemeManager;
    invoke-virtual {v1, v2}, Lcom/samsung/android/theme/SThemeManager;->getVersionFromFeature(I)Ljava/lang/String;

    move-result-object v0

    .line 4560
    .local v0, "festivalVersion":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4561
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSupportGuestMode()Z
    .locals 1

    .prologue
    .line 4208
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportHelpMenu(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2937
    const/4 v2, 0x0

    .line 2938
    .local v2, "helpMenuCheck":Z
    const/4 v3, 0x0

    .line 2939
    .local v3, "packageFlag":Z
    const/4 v1, 0x1

    .line 2940
    .local v1, "easyModeFlagJ":Z
    const/4 v4, 0x0

    .line 2942
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v8, "com.samsung.helphub"

    invoke-static {p0, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 2943
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.samsung.helphub"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2947
    :goto_0
    if-ne v2, v6, :cond_1

    if-eqz v4, :cond_1

    iget v8, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v8, v8, 0xa

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    move v3, v6

    .line 2949
    :goto_1
    const-string v8, "SEC_FLOATING_FEATURE_HELP_CONFIG_THEME_TYPE"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "J"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2950
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "easy_mode_switch"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2951
    .local v5, "state":I
    if-nez v5, :cond_0

    .line 2952
    const/4 v1, 0x0

    .line 2955
    .end local v5    # "state":I
    :cond_0
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v6

    .line 2944
    :catch_0
    move-exception v0

    .line 2945
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    move v3, v7

    .line 2947
    goto :goto_1

    :cond_2
    move v6, v7

    .line 2955
    goto :goto_2
.end method

.method public static isSupportKKUpgradeAirview()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4513
    const-string v1, "americano"

    const-string v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSetupProject_KK_OS()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4516
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportLMM(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4918
    const-string v2, "ro.security.reactive.active"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 4919
    const-string v1, "Utils"

    const-string v2, "isSupportLMM : TRUE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4923
    :goto_0
    return v0

    .line 4922
    :cond_0
    const-string v0, "Utils"

    const-string v2, "isSupportLMM : FALSE"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 4923
    goto :goto_0
.end method

.method public static isSupportLightSensor(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2987
    const/4 v1, 0x0

    .line 2989
    .local v1, "isSupport":Z
    const-string v5, "sensor"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 2991
    .local v3, "sensorMgr":Landroid/hardware/SensorManager;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 2992
    .local v2, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 2993
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 2995
    .local v4, "sensorType":I
    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 2996
    const/4 v1, 0x1

    .line 2992
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3000
    .end local v4    # "sensorType":I
    :cond_1
    return v1
.end method

.method public static isSupportMenuTreeForK()Z
    .locals 1

    .prologue
    .line 3602
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportMyPlaceV2()Z
    .locals 2

    .prologue
    .line 4426
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4428
    .local v0, "mProductName":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4429
    const-string v1, "SC-01G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SCL24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4430
    :cond_0
    const-string v0, "tblte"

    .line 4434
    :cond_1
    const-string v1, "tblte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tre3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "trhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbhplte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tbelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tr3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tre3calte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "a5ltezc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "a5ltectc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4437
    :cond_2
    const/4 v1, 0x1

    .line 4439
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportNfcCardMode()Z
    .locals 2

    .prologue
    .line 3608
    const-string v0, "OFF"

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3609
    const/4 v0, 0x0

    .line 3611
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportOfflineHelpMenu(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2974
    const/4 v1, 0x0

    .line 2975
    .local v1, "helpMenuCheck":Z
    const/4 v2, 0x0

    .line 2977
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v5, "com.samsung.helphub"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 2978
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.helphub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2983
    :goto_0
    if-ne v1, v3, :cond_0

    if-eqz v2, :cond_0

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v5, v5, 0xa

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    :goto_1
    return v3

    .line 2979
    :catch_0
    move-exception v0

    .line 2980
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move v3, v4

    .line 2983
    goto :goto_1
.end method

.method public static isSupportOnlineHelpMenu(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2960
    const/4 v1, 0x0

    .line 2961
    .local v1, "helpMenuCheck":Z
    const/4 v2, 0x0

    .line 2963
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v5, "com.samsung.helphub"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 2964
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.helphub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2969
    :goto_0
    if-ne v1, v3, :cond_0

    if-eqz v2, :cond_0

    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v5, v5, 0xa

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    :goto_1
    return v3

    .line 2965
    :catch_0
    move-exception v0

    .line 2966
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move v3, v4

    .line 2969
    goto :goto_1
.end method

.method public static isSupportSDCard()Z
    .locals 2

    .prologue
    .line 4444
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "slte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4445
    const/4 v0, 0x0

    .line 4446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportSPen()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4269
    const-string v1, "sugar"

    const-string v2, "ro.build.scafe.syrup"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 4272
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSfinder(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2921
    const-string v0, "com.samsung.android.app.galaxyfinder"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSearchVerTwoEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2922
    const/4 v0, 0x1

    .line 2924
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSleepingMode()Z
    .locals 1

    .prologue
    .line 4525
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportStart_J_project()Z
    .locals 2

    .prologue
    .line 4307
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ajantalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsglte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "baffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chagall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "crater"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "degas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flteskt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "frescolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gardalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gnoteds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "goldenlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ha3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "havelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "heat3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hl3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hllte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hvolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jactivelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jflte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jftdd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jfve3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jfvelte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jfvolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kanas3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kaverilte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "klimt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kmini3gub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ks01lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt02lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lt03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "matisse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "melius"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "millet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mondrian"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "moutailte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mproject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ms013g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rubens"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "s3ve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "santos10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serrano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "serranovolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tn10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tn8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v1a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "victor3gds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "viennalte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wilcoxlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4326
    :cond_0
    const/4 v0, 0x1

    .line 4328
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportStatusRoamingMenu()Z
    .locals 1

    .prologue
    .line 3747
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportUltraPowerSavingMode()Z
    .locals 1

    .prologue
    .line 4529
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportVNFestival()Z
    .locals 3

    .prologue
    .line 4568
    const-string v0, "Settings_Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportVNFestival "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "G900H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "XXV"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4570
    const/4 v0, 0x1

    .line 4572
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportVolteSettings(Landroid/content/Context;)Z
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4295
    const-string v3, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4303
    :cond_0
    :goto_0
    return v1

    .line 4298
    :cond_1
    const/4 v0, 0x0

    .line 4299
    .local v0, "isVolteCallOnCommonIms":Z
    const-string v3, "0.0"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_IMS_FrameworkVersion"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4301
    invoke-static {v2, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    .line 4303
    :cond_2
    if-eqz v0, :cond_3

    const-string v3, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public static isSupportedEvent([II)Z
    .locals 1
    .param p0, "festivalEventIds"    # [I
    .param p1, "eventId"    # I

    .prologue
    .line 4658
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSuppportBlackGreyPowerSaving(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4415
    const/4 v0, 0x0

    .line 4418
    .local v0, "isSupport":Z
    const/4 v0, 0x1

    .line 4422
    return v0
.end method

.method public static isSwitchAccessEnabled(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 890
    const/16 v1, 0x3a

    .line 891
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 892
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v6, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 894
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    if-nez p0, :cond_1

    .line 919
    :cond_0
    :goto_0
    return v7

    .line 897
    :cond_1
    const/4 v5, 0x0

    .line 898
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 899
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 901
    :cond_2
    if-nez v5, :cond_3

    .line 902
    const-string v5, ""

    .line 905
    :cond_3
    move-object v2, v6

    .line 907
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 909
    :cond_4
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 910
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 911
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 913
    .local v4, "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_4

    .line 914
    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "com.google.android.marvin.talkback/com.googlecode.eyesfree.switchcontrol.SwitchControlService"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 916
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2505
    sget-object v2, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    if-nez v2, :cond_0

    .line 2506
    new-array v2, v0, [Landroid/content/pm/Signature;

    invoke-static {p0}, Lcom/android/settings/Utils;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v3

    aput-object v3, v2, v1

    sput-object v2, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    .line 2508
    :cond_0
    sget-object v2, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/settings/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    invoke-static {p1}, Lcom/android/settings/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isTFGDisableSmartBonding()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 3803
    const-string v7, "TFG"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3832
    .local v4, "productCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 3807
    .end local v4    # "productCode":Ljava/lang/String;
    :cond_1
    const-string v7, "ril.product_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3808
    .restart local v4    # "productCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3809
    const-string v1, "/system/etc/smart_bonding_not_supported"

    .line 3810
    .local v1, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3812
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/system/etc/smart_bonding_not_supported"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3813
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 3814
    .local v5, "string":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_2

    .line 3815
    const/4 v6, 0x1

    .line 3824
    if-eqz v3, :cond_0

    .line 3825
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3826
    :catch_0
    move-exception v0

    .line 3827
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3824
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v3, :cond_0

    .line 3825
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3826
    :catch_1
    move-exception v0

    .line 3827
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3816
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "string":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 3817
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3824
    if-eqz v2, :cond_0

    .line 3825
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 3826
    :catch_3
    move-exception v0

    .line 3827
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3818
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 3819
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3824
    if-eqz v2, :cond_0

    .line 3825
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_0

    .line 3826
    :catch_5
    move-exception v0

    .line 3827
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3820
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 3821
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3824
    if-eqz v2, :cond_0

    .line 3825
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_0

    .line 3826
    :catch_7
    move-exception v0

    .line 3827
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3823
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 3824
    :goto_4
    if-eqz v2, :cond_3

    .line 3825
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 3828
    :cond_3
    :goto_5
    throw v6

    .line 3826
    :catch_8
    move-exception v0

    .line 3827
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 3823
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 3820
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 3818
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 3816
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 451
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 452
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 455
    :goto_0
    return v0

    .line 454
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    .line 455
    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/Utils;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 853
    const/16 v1, 0x3a

    .line 854
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 855
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x3a

    invoke-direct {v6, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 857
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    if-nez p0, :cond_1

    .line 882
    :cond_0
    :goto_0
    return v7

    .line 860
    :cond_1
    const/4 v5, 0x0

    .line 861
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 862
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 864
    :cond_2
    if-nez v5, :cond_3

    .line 865
    const-string v5, ""

    .line 868
    :cond_3
    move-object v2, v6

    .line 870
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 872
    :cond_4
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 873
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 874
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 876
    .local v4, "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_4

    .line 877
    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 879
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 38
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1159
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 1160
    .local v25, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    .line 1161
    .local v26, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1162
    .local v8, "data":Landroid/os/Bundle;
    const/4 v13, 0x1

    .line 1163
    .local v13, "is_enabled":Z
    const/16 v20, 0x0

    .line 1164
    .local v20, "option_flag":I
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const v37, 0x7f0a0a97

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1169
    .local v9, "dialog_content":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1170
    .local v7, "assistantmenu":I
    const/4 v12, 0x0

    .line 1171
    .local v12, "interactioncontrol":I
    const/4 v5, 0x0

    .line 1172
    .local v5, "airgesture":I
    const/4 v10, 0x0

    .line 1173
    .local v10, "fingerairview":I
    const/16 v24, 0x0

    .line 1174
    .local v24, "penairview":I
    const/16 v30, 0x0

    .line 1175
    .local v30, "smartscreen":I
    const/16 v17, 0x0

    .line 1176
    .local v17, "multiwindow":I
    const/4 v6, 0x0

    .line 1177
    .local v6, "allSoundOff":I
    const/16 v35, 0x0

    .line 1178
    .local v35, "writingbuddy":I
    const/16 v21, 0x0

    .line 1179
    .local v21, "palmMotion":I
    const/16 v19, 0x0

    .line 1180
    .local v19, "onehandoperation":I
    const/16 v23, 0x0

    .line 1181
    .local v23, "palmoptiontouch":I
    const/16 v22, 0x0

    .line 1182
    .local v22, "palmoptionswipe":I
    const/16 v18, 0x0

    .line 1183
    .local v18, "onehandinput":I
    const/16 v27, 0x0

    .line 1184
    .local v27, "sidesoftkey":I
    const/16 v33, 0x0

    .line 1185
    .local v33, "sounddetector":I
    const/16 v34, 0x0

    .line 1186
    .local v34, "toolbox":I
    const/4 v3, 0x0

    .line 1187
    .local v3, "airbrowser":I
    const/4 v4, 0x0

    .line 1188
    .local v4, "aircommand":I
    const/4 v11, 0x0

    .line 1190
    .local v11, "hoverZoom":I
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v36

    if-nez v36, :cond_0

    .line 1191
    add-int/lit8 v20, v20, 0x10

    .line 1192
    const-string v36, "air_motion_engine"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1194
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_e

    .line 1195
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a126b

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1201
    :cond_0
    :goto_0
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1

    .line 1202
    add-int/lit8 v20, v20, 0x8

    .line 1203
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v36

    if-eqz v36, :cond_f

    .line 1204
    const-string v36, "air_view_master_onoff"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 1209
    :cond_1
    :goto_1
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_2

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_2

    .line 1211
    add-int/lit8 v20, v20, 0x4

    .line 1212
    const-string v36, "pen_hovering"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 1214
    :cond_2
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_3

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_4

    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_4

    .line 1216
    :cond_3
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1333

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1219
    :cond_4
    const-string v36, "com.samsung.android.app.assistantmenu"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 1220
    add-int/lit8 v20, v20, 0x20

    .line 1221
    const-string v36, "assistant_menu"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1222
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a10db

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1225
    :cond_5
    const-string v36, "com.samsung.android.app.accesscontrol"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 1226
    add-int/lit8 v20, v20, 0x40

    .line 1227
    const-string v36, "access_control_use"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 1228
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a0a3c

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1231
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "com.sec.feature.multiwindow"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_7

    .line 1232
    add-int/lit8 v20, v20, 0x1

    .line 1233
    const-string v36, "multi_window_enabled"

    const/16 v37, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1234
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a06ce

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1237
    :cond_7
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x200

    move/from16 v20, v0

    .line 1238
    const-string v36, "all_sound_off"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1239
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a15e5

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1241
    const-string v36, "com.samsung.android.app.sounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_10

    .line 1242
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x800

    move/from16 v20, v0

    .line 1243
    const-string v36, "sound_detector"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 1244
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a0aeb

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1252
    :cond_8
    :goto_2
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isP4Note_Device()Z

    move-result v36

    if-nez v36, :cond_9

    .line 1253
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    .line 1254
    const-string v36, "pen_writing_buddy"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    .line 1255
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a114c

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1257
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_9

    .line 1258
    const-string v36, "air_button_onoff"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1259
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a12eb

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1264
    :cond_9
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 1265
    const-string v36, "air_motion_call_accept"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1266
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v3, v0, :cond_a

    .line 1267
    const-string v36, "air_motion_call_accept"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1268
    new-instance v15, Landroid/content/Intent;

    const-string v36, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    move-object/from16 v0, v36

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1269
    .local v15, "motion_changed_callaccept":Landroid/content/Intent;
    const-string v36, "isEnable"

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1270
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1273
    .end local v15    # "motion_changed_callaccept":Landroid/content/Intent;
    :cond_a
    const-string v36, "air_motion_turn"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1274
    const-string v36, "air_motion_scroll"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1276
    new-instance v16, Landroid/content/Intent;

    const-string v36, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1277
    .local v16, "motion_changed_scroll":Landroid/content/Intent;
    const-string v36, "isEnable"

    const/16 v37, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1278
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1280
    new-instance v14, Landroid/content/Intent;

    const-string v36, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    move-object/from16 v0, v36

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1281
    .local v14, "motion_changed_browse":Landroid/content/Intent;
    const-string v36, "isEnable"

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1282
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1284
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isAllMotionDisabled2014(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 1285
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->turnOffAllMotionMaster(Landroid/content/Context;)V

    .line 1290
    .end local v14    # "motion_changed_browse":Landroid/content/Intent;
    .end local v16    # "motion_changed_scroll":Landroid/content/Intent;
    :cond_b
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SURFACE"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 1291
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    .line 1292
    const-string v36, "surface_motion_engine"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 1293
    const-string v36, "surface_palm_touch"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 1294
    const-string v36, "surface_palm_swipe"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 1295
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_12

    .line 1296
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a11f3

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1297
    move/from16 v21, v22

    .line 1305
    :cond_c
    :goto_3
    const-string v36, "any_screen_enabled"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 1307
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    const-string v37, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v36 .. v37}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_13

    .line 1308
    const-string v36, "sidesoftkey_switch"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 1309
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1dbb

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1312
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1dc1

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1328
    :goto_4
    add-int/lit8 v20, v20, 0x2

    .line 1329
    const-string v36, "smart_pause"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .line 1330
    .local v28, "smartpause":I
    const-string v36, "intelligent_rotation_mode"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 1331
    .local v29, "smartrotation":I
    const-string v36, "intelligent_sleep_mode"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 1332
    .local v32, "smartstay":I
    const-string v36, "smart_scroll"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    .line 1334
    .local v31, "smartscroll":I
    const-string v36, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v36 .. v36}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_14

    .line 1336
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1485    # 1.8354E38f

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1354
    :goto_5
    or-int v36, v32, v29

    or-int v36, v36, v28

    or-int v30, v36, v31

    .line 1357
    const-string v36, "com.sec.feature.overlaymagnifier"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_d

    .line 1358
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x2000

    move/from16 v20, v0

    .line 1359
    const-string v36, "accessibility_magnifier"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 1360
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a0a0e

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1363
    :cond_d
    or-int v36, v12, v7

    or-int v36, v36, v5

    or-int v36, v36, v10

    or-int v36, v36, v24

    or-int v36, v36, v30

    or-int v36, v36, v17

    or-int v36, v36, v6

    or-int v36, v36, v35

    or-int v36, v36, v4

    or-int v36, v36, v21

    or-int v36, v36, v19

    or-int v36, v36, v33

    or-int v36, v36, v34

    or-int v36, v36, v18

    or-int v36, v36, v27

    or-int v36, v36, v3

    or-int v36, v36, v11

    if-lez v36, :cond_15

    const/4 v13, 0x1

    .line 1366
    :goto_6
    const-string v36, "is_enabled"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1367
    const-string v36, "option_flag"

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1368
    const-string v36, "dialog_content"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    return-object v8

    .line 1197
    .end local v28    # "smartpause":I
    .end local v29    # "smartrotation":I
    .end local v31    # "smartscroll":I
    .end local v32    # "smartstay":I
    :cond_e
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a125d

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 1206
    :cond_f
    const-string v36, "finger_air_view"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    goto/16 :goto_1

    .line 1245
    :cond_10
    const-string v36, "com.samsung.android.app.advsounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_8

    .line 1246
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x800

    move/from16 v20, v0

    .line 1247
    const-string v36, "sound_detector"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 1248
    if-nez v33, :cond_11

    const-string v36, "doorbell_detector"

    const/16 v37, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v33

    .line 1249
    :cond_11
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a0aec

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 1299
    :cond_12
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1237

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1300
    or-int v36, v23, v22

    or-int v21, v21, v36

    goto/16 :goto_3

    .line 1317
    :cond_13
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a1619

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    .line 1351
    .restart local v28    # "smartpause":I
    .restart local v29    # "smartrotation":I
    .restart local v31    # "smartscroll":I
    .restart local v32    # "smartstay":I
    :cond_14
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\n- "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7f0a149d

    move-object/from16 v0, v25

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 1363
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_6
.end method

.method public static isVTCallCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 4332
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4333
    const/4 v0, 0x1

    .line 4335
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoSequenceModel()Z
    .locals 4

    .prologue
    .line 4213
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETUPWIZARD_CONFIG_STEP_SEQUENCE_TYPE"

    const-string v3, "video"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4214
    .local v0, "sequenceType":Ljava/lang/String;
    const-string v1, "Settings_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetupWizard SequenceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4216
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video_intro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4218
    :cond_0
    const-string v1, "Settings_Utils"

    const-string v2, "isVideoSequenceModel() floating feature true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4219
    const/4 v1, 0x0

    .line 4222
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isVisibility_panel_bg()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4288
    const-string v1, "americano"

    const-string v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSetupProject_KK_OS()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4289
    const/4 v0, 0x0

    .line 4291
    :cond_0
    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 435
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 437
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWeatherDetailSettings()Z
    .locals 2

    .prologue
    .line 4729
    const-string v0, "1"

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4730
    const/4 v0, 0x1

    .line 4732
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifiCallingEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4027
    const/4 v0, 0x0

    .line 4028
    .local v0, "isWfcRegistered":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4029
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 4032
    :cond_0
    return v0
.end method

.method public static isWifiEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3773
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 3774
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 3775
    const-string v1, "SmartBonding"

    const-string v2, "Can\'t get WifiManager."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    const/4 v1, 0x0

    .line 3778
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 445
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 447
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static loadExpandState(Landroid/content/Context;J)Z
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "header_id"    # J

    .prologue
    .line 3959
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    long-to-int v4, p1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 3960
    .local v0, "headerID":Ljava/lang/String;
    const-string v3, "expand_state"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3961
    .local v2, "pref":Landroid/content/SharedPreferences;
    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3962
    .local v1, "isExpanded":Z
    const-string v3, "GridSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load > headerID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / isExpanded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    return v1
.end method

.method public static loadFavorite(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3457
    .local p1, "favoriteList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    .local p3, "mHeaderIndexMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3458
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 3514
    :goto_0
    return-void

    .line 3459
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 3460
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 3461
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3467
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 3469
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_gridui"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    const/16 v18, 0x1

    .line 3471
    .local v18, "isListView":Z
    :goto_1
    if-eqz v18, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3472
    :cond_2
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 3473
    .local v10, "favoriteCategory":Landroid/preference/PreferenceActivity$Header;
    const-wide/32 v2, 0x7f100002

    iput-wide v2, v10, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 3474
    const v2, 0x7f0a003d

    iput v2, v10, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 3475
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3478
    .end local v10    # "favoriteCategory":Landroid/preference/PreferenceActivity$Header;
    :cond_3
    const-string v2, "Favorite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    new-instance v16, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3480
    .local v16, "indexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3481
    const/4 v9, 0x0

    .line 3483
    .local v9, "count":I
    :cond_4
    const-string v2, "key"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3484
    .local v19, "key":Ljava/lang/String;
    const-string v2, "Favorite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 3486
    .local v14, "id":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3487
    const-string v2, "Favorite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not in Header List"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3495
    new-instance v2, Lcom/android/settings/Utils$IndexAscCompare;

    invoke-direct {v2}, Lcom/android/settings/Utils$IndexAscCompare;-><init>()V

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3497
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 3498
    .local v12, "i":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3469
    .end local v9    # "count":I
    .end local v12    # "i":Ljava/lang/Integer;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "id":I
    .end local v16    # "indexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "isListView":Z
    .end local v19    # "key":Ljava/lang/String;
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 3490
    .restart local v9    # "count":I
    .restart local v14    # "id":I
    .restart local v16    # "indexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18    # "isListView":Z
    .restart local v19    # "key":Ljava/lang/String;
    :cond_6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 3491
    .local v15, "idx":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3492
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 3501
    .end local v15    # "idx":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isGridListUIEnabeld()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3502
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getFavoriteCount(Landroid/content/Context;)I

    move-result v20

    .line 3503
    .local v20, "savedFavoriteCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "settings_gridui"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const/16 v17, 0x1

    .line 3505
    .local v17, "isGridView":Z
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->getMaxFavoriteItemNumber()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_9

    if-nez v17, :cond_8

    if-eqz v18, :cond_9

    .line 3506
    :cond_8
    new-instance v11, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v11}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 3507
    .local v11, "h":Landroid/preference/PreferenceActivity$Header;
    const-wide/32 v2, 0x7f10000b

    iput-wide v2, v11, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 3508
    const v2, 0x7f020238

    iput v2, v11, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 3509
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3513
    .end local v9    # "count":I
    .end local v11    # "h":Landroid/preference/PreferenceActivity$Header;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "id":I
    .end local v17    # "isGridView":Z
    .end local v19    # "key":Ljava/lang/String;
    .end local v20    # "savedFavoriteCount":I
    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3503
    .restart local v9    # "count":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "id":I
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v20    # "savedFavoriteCount":I
    :cond_a
    const/16 v17, 0x0

    goto :goto_4
.end method

.method public static locateSmartNetworkSwitch(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 4579
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4581
    const/4 v0, 0x3

    .line 4585
    :cond_0
    return v0
.end method

.method public static makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 2632
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2644
    :cond_0
    :goto_0
    return-object v2

    .line 2635
    :cond_1
    const-string v3, "%s"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2639
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2640
    .local v2, "ss":Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2641
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, p1, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 2642
    .local v1, "span":Landroid/text/style/ImageSpan;
    const-string v3, "%s"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2643
    .local v0, "iconIndex":I
    add-int/lit8 v3, v0, 0x2

    const/16 v4, 0x11

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableString;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 2648
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2650
    .local v1, "locale":Ljava/lang/String;
    const-string v4, "ar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "fa"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ur"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "iw"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2651
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%s "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2657
    :goto_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_3

    .line 2669
    :cond_1
    :goto_1
    return-object v3

    .line 2653
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2660
    :cond_3
    const-string v4, "%s"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2664
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2665
    .local v3, "ss":Landroid/text/SpannableString;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p1, v6, p2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2666
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, p1, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 2667
    .local v2, "span":Landroid/text/style/ImageSpan;
    const-string v4, "%s"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2668
    .local v0, "iconIndex":I
    add-int/lit8 v4, v0, 0x2

    const/16 v5, 0x11

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method public static moveToSharedPref(Landroid/content/Context;Landroid/preference/PreferenceActivity$Header;)V
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 3946
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .line 3947
    .local v4, "title_res":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 3948
    .local v1, "headerID":Ljava/lang/String;
    const-string v5, "expand_state"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3949
    .local v3, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3950
    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3951
    .local v2, "isExpanded":Z
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3952
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3953
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3954
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3956
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "isExpanded":Z
    :cond_0
    return-void
.end method

.method public static needsDockSettings(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 3836
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResId"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "isShortcut"    # Z

    .prologue
    .line 2038
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2039
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2040
    const-string v1, "Settings_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fragmentName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    const-string v1, "Settings_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "titleResId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    const-string v1, "Settings_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    const-string v1, "Settings_Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShortcut : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2046
    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2047
    const-string v1, ":settings:show_fragment_title_resid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2048
    const-string v1, ":settings:show_fragment_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2049
    const-string v1, ":settings:show_fragment_as_shortcut"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2050
    return-object v0
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V
    .locals 9
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/view/View;
    .param p3, "ignoreSidePadding"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1756
    invoke-virtual {p2}, Landroid/view/View;->getScrollBarStyle()I

    move-result v5

    const/high16 v8, 0x2000000

    if-ne v5, v8, :cond_1

    move v1, v7

    .line 1757
    .local v1, "movePadding":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1758
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1759
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0f008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1760
    .local v3, "paddingSide":I
    const v5, 0x1050023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1763
    .local v2, "paddingBottom":I
    instance-of v5, p0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_3

    .line 1764
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 1766
    if-eqz p3, :cond_2

    move v0, v6

    .line 1767
    .local v0, "effectivePaddingSide":I
    :goto_1
    invoke-virtual {p2, v0, v6, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1772
    .end local v0    # "effectivePaddingSide":I
    .end local v2    # "paddingBottom":I
    .end local v3    # "paddingSide":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_2
    return-void

    .end local v1    # "movePadding":Z
    :cond_1
    move v1, v6

    .line 1756
    goto :goto_0

    .restart local v1    # "movePadding":Z
    .restart local v2    # "paddingBottom":I
    .restart local v3    # "paddingSide":I
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_2
    move v0, v3

    .line 1766
    goto :goto_1

    .line 1769
    :cond_3
    invoke-virtual {p2, v3, v6, v3, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_2
.end method

.method public static printLog(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "shouldBeRemoved"    # Z

    .prologue
    .line 3917
    return-void
.end method

.method public static queryEventIdToday(Landroid/content/ContentResolver;[I)I
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "festivalEventIds"    # [I

    .prologue
    .line 4622
    const/4 v12, -0x1

    .line 4624
    .local v12, "eventId":I
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "festival_effect_id"

    aput-object v4, v2, v0

    .line 4628
    .local v2, "INSTANCES_PROJECTION":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 4629
    .local v8, "calendar":Ljava/util/Calendar;
    const/16 v0, 0xe

    const/16 v4, 0xf

    invoke-virtual {v8, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v8, v0, v4}, Ljava/util/Calendar;->add(II)V

    .line 4632
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 4633
    .local v6, "begin":J
    move-wide v10, v6

    .line 4635
    .local v10, "end":J
    const-string v0, "content://com.sec.android.jpnanniversaryprovider/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4637
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dtstart <= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and dtend >= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4638
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4640
    .local v9, "cur":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 4641
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4642
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 4645
    invoke-static {p1, v12}, Lcom/android/settings/Utils;->isSupportedEvent([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4646
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 4654
    :goto_0
    return v0

    .line 4650
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4654
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static readCountryIsoCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4967
    new-instance v0, Lcom/android/settings/Utils$CustomCscParser;

    const-string v1, "/system/csc/customer.xml"

    invoke-direct {v0, v1}, Lcom/android/settings/Utils$CustomCscParser;-><init>(Ljava/lang/String;)V

    .line 4968
    .local v0, "parser":Lcom/android/settings/Utils$CustomCscParser;
    const-string v1, "GeneralInfo.CountryISO"

    invoke-virtual {v0, v1}, Lcom/android/settings/Utils$CustomCscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2698
    const-string v0, ""

    .line 2700
    .local v0, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2701
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2702
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2707
    :cond_0
    :goto_0
    return-object v0

    .line 2704
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static removeFavorite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3576
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "key"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3577
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 3585
    :goto_0
    return-void

    .line 3578
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3579
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3580
    .local v7, "id":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3584
    .end local v7    # "id":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3582
    :cond_1
    const-string v0, "Favorite"

    const-string v1, "no data!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static replaceSIMString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 4504
    const-string v0, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4509
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 4506
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4507
    const-string v0, "SIM"

    const-string v1, "UIM"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4509
    :cond_1
    const-string v0, "SIM"

    const-string v1, "UIM/SIM"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3262
    .local v1, "res":Landroid/content/res/Resources;
    move-object v0, p1

    .line 3263
    .local v0, "c":Landroid/content/Context;
    const/4 v2, 0x0

    .line 3264
    .local v2, "s":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3265
    const v3, 0x7f0a132e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3269
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a01f6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/Utils$3;

    invoke-direct {v5, v0}, Lcom/android/settings/Utils$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3290
    return-void

    .line 3267
    :cond_0
    const v3, 0x7f0a132d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static saveExpandstate(Landroid/content/Context;JZ)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "header_id"    # J
    .param p3, "isExpanded"    # Z

    .prologue
    .line 3967
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    long-to-int v4, p1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 3968
    .local v1, "headerID":Ljava/lang/String;
    const-string v3, "expand_state"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3969
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3970
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3971
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3972
    const-string v3, "GridSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save > headerID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / isExpanded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    return-void
.end method

.method public static saveFavorite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3570
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3571
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3572
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3573
    return-void
.end method

.method public static saveSViewWallpaperDrawable(Landroid/content/Context;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 4193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_bg_wallpaper_path"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4194
    .local v1, "mPath":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4195
    const-string v1, "/storage/emulated/0/Android/data/com.sec.android.sviewcover/files/Pictures/cover_wallpaper.jpg"

    .line 4199
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4201
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4202
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    sput-object v2, Lcom/android/settings/Utils;->mSViewWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 4205
    :goto_1
    return-void

    .line 4197
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cover_wallpaper.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4204
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/Utils;->mSViewWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public static sendLockScreenWeatherIntent(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # Z

    .prologue
    .line 4737
    const-string v2, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    .line 4738
    .local v2, "ACTION_CURRENT_LOCATION_WEATHER_DATA":Ljava/lang/String;
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    .line 4739
    .local v1, "ACTION_CURRENT_LOCATION_KWEATHER_DATA":Ljava/lang/String;
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    .line 4740
    .local v0, "ACTION_CURRENT_LOCATION_CMA_WEATHER_DATA":Ljava/lang/String;
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendLockScreenWeatherIntent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4742
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4743
    .local v3, "mIntent":Landroid/content/Intent;
    const-string v4, "START"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4744
    invoke-static {}, Lcom/android/settings/Utils;->isOSUpgrade()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4745
    const-string v4, "PACKAGE"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4748
    :goto_0
    const-string v4, "CP"

    const-string v5, "Kweather"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4749
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4763
    :goto_1
    return-void

    .line 4747
    :cond_0
    const-string v4, "PACKAGE"

    const-string v5, "com.android.keyguard"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4757
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4758
    .restart local v3    # "mIntent":Landroid/content/Intent;
    const-string v4, "START"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4759
    const-string v4, "PACKAGE"

    const-string v5, "com.android.keyguard"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4760
    const-string v4, "CP"

    const-string v5, "Accuweather"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4761
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static sendSViewCoverWeatherIntent(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # Z

    .prologue
    .line 4766
    const-string v2, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    .line 4767
    .local v2, "ACTION_CURRENT_LOCATION_WEATHER_DATA":Ljava/lang/String;
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    .line 4768
    .local v1, "ACTION_CURRENT_LOCATION_KWEATHER_DATA":Ljava/lang/String;
    const-string v0, "com.sec.android.widgetapp.cmaweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    .line 4769
    .local v0, "ACTION_CURRENT_LOCATION_CMA_WEATHER_DATA":Ljava/lang/String;
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendSViewCoverWeatherIntent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4770
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4771
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4772
    .local v3, "mIntent":Landroid/content/Intent;
    const-string v4, "START"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4773
    const-string v4, "PACKAGE"

    const-string v5, "com.sec.android.sviewcover"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4774
    const-string v4, "CP"

    const-string v5, "Kweather"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4775
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4789
    :goto_0
    return-void

    .line 4783
    .end local v3    # "mIntent":Landroid/content/Intent;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4784
    .restart local v3    # "mIntent":Landroid/content/Intent;
    const-string v4, "START"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4785
    const-string v4, "PACKAGE"

    const-string v5, "com.sec.android.sviewcover"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4786
    const-string v4, "CP"

    const-string v5, "Accuweather"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4787
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 5346
    const/4 v1, 0x0

    .line 5347
    .local v1, "result":I
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5348
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5349
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "API"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5350
    const-string v3, "flag"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5351
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5352
    return-void
.end method

.method public static setMouseHoveringValExceptListScroll(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "val"    # I

    .prologue
    .line 3920
    const-string v0, "mouse_hovering_information_preview"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3921
    const-string v0, "mouse_hovering_icon_label"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3923
    const-string v0, "mouse_hovering_progress_bar_preview"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3924
    const-string v0, "mouse_hovering_full_text"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3925
    const-string v0, "mouse_hovering_magnetic_ui"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3926
    return-void
.end method

.method static setOemUnlockEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 2468
    const-string v1, "persistent_data_block"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 2470
    .local v0, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    invoke-virtual {v0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    .line 2471
    return-void
.end method

.method public static showDialogPopup(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3362
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3363
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a01f6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3364
    const v2, 0x7f0a1c17

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3366
    const v2, 0x7f0a1a6f

    new-instance v3, Lcom/android/settings/Utils$4;

    invoke-direct {v3}, Lcom/android/settings/Utils$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3373
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3374
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3375
    return-void
.end method

.method public static showSimCardTile(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2492
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2497
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    return v1
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1994
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 1996
    return-void
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "isShortcut"    # Z

    .prologue
    .line 2001
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move-object v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v6

    .line 2003
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, ":settings:show_fragment"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2004
    if-nez p3, :cond_0

    .line 2005
    invoke-virtual {p0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2009
    :goto_0
    return-void

    .line 2007
    :cond_0
    invoke-virtual {p3, v6, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResId"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "isShortcut"    # Z
    .param p6, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 2013
    invoke-static/range {p0 .. p5}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    .line 2015
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2016
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2017
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2018
    invoke-virtual {p0, v0, p6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2019
    return-void
.end method

.method private static sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4879
    const/4 v2, 0x0

    .line 4882
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4887
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 4888
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4898
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 4883
    :catch_0
    move-exception v0

    .line 4884
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 4889
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 4890
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4892
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 4893
    :catch_2
    move-exception v1

    .line 4894
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4889
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static toDigitString(I)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # I

    .prologue
    .line 4661
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    .line 4662
    .local v0, "mArgs":[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 4663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4664
    .local v1, "mBuilder":Ljava/lang/StringBuilder;
    const-string v2, "%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4665
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static turnOffAllMotionMaster(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 834
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 836
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 839
    invoke-static {p0}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    .line 842
    invoke-static {p0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 845
    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 846
    return-void
.end method

.method public static turnOffSwitchAccess(Landroid/content/Context;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1050
    const/16 v0, 0x3a

    .line 1051
    .local v0, "ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR":C
    new-instance v11, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v13, 0x3a

    invoke-direct {v11, v13}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1054
    .local v11, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    .line 1057
    .local v5, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v13

    if-ne v5, v13, :cond_0

    .line 1058
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1061
    .restart local v5    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_0
    const-string v13, "com.google.android.marvin.talkback/com.googlecode.eyesfree.switchcontrol.SwitchControlService"

    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 1062
    .local v12, "toggledService":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 1064
    .local v1, "accessibilityEnabled":Z
    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1066
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1067
    .local v10, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1068
    .local v4, "enabledService":Landroid/content/ComponentName;
    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1070
    const/4 v1, 0x1

    .line 1076
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1081
    .local v6, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1082
    .restart local v4    # "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    const/16 v13, 0x3a

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1085
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 1086
    .local v7, "enabledServicesBuilderLength":I
    if-lez v7, :cond_4

    .line 1087
    add-int/lit8 v13, v7, -0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1090
    :cond_4
    const/4 v8, 0x0

    .line 1091
    .local v8, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1092
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "enabled_accessibility_services"

    invoke-static {v13, v14, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1095
    if-eqz v8, :cond_6

    .line 1096
    move-object v2, v11

    .line 1097
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v8}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1099
    :cond_5
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1100
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 1101
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1103
    .restart local v4    # "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_5

    .line 1104
    const/4 v1, 0x1

    .line 1112
    .end local v2    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "accessibility_enabled"

    if-eqz v1, :cond_7

    const/4 v13, 0x1

    :goto_1
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1115
    const/4 v13, 0x1

    return v13

    .line 1112
    :cond_7
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public static turnOffTalkBack(Landroid/content/Context;)Z
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 975
    const/16 v1, 0x3a

    .line 976
    .local v1, "ENABLED_ACCESSIBILITY_SERVICES_SEPARATOR":C
    new-instance v12, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v14, 0x3a

    invoke-direct {v12, v14}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 979
    .local v12, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v6

    .line 982
    .local v6, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v14

    if-ne v6, v14, :cond_0

    .line 983
    new-instance v6, Ljava/util/HashSet;

    .end local v6    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 986
    .restart local v6    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_0
    const-string v14, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    .line 987
    .local v13, "toggledService":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 989
    .local v2, "accessibilityEnabled":Z
    invoke-interface {v6, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 991
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 992
    .local v11, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 993
    .local v5, "enabledService":Landroid/content/ComponentName;
    invoke-interface {v11, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 995
    const/4 v2, 0x1

    .line 1001
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1006
    .local v7, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 1007
    .restart local v5    # "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const/16 v14, 0x3a

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1010
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 1011
    .local v8, "enabledServicesBuilderLength":I
    if-lez v8, :cond_4

    .line 1012
    add-int/lit8 v14, v8, -0x1

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1015
    :cond_4
    const/4 v9, 0x0

    .line 1016
    .local v9, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1017
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "enabled_accessibility_services"

    invoke-static {v14, v15, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1020
    if-eqz v9, :cond_6

    .line 1021
    move-object v3, v12

    .line 1022
    .local v3, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v9}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1024
    :cond_5
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1025
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 1026
    .local v4, "componentNameString":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 1028
    .restart local v5    # "enabledService":Landroid/content/ComponentName;
    if-eqz v5, :cond_5

    .line 1029
    const/4 v2, 0x1

    .line 1036
    .end local v3    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v4    # "componentNameString":Ljava/lang/String;
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :cond_6
    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.android.settings.action.talkback_off"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1037
    const-string v14, "Utils Accessibility"

    const-string v15, "All sound off broadcast"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "accessibility_enabled"

    if-eqz v2, :cond_7

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1042
    const/4 v14, 0x1

    return v14

    .line 1039
    :cond_7
    const/4 v14, 0x0

    goto :goto_1
.end method

.method public static turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "option_flag"    # I

    .prologue
    .line 1377
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1380
    .local v13, "resolver":Landroid/content/ContentResolver;
    and-int/lit8 v17, p1, 0x20

    if-lez v17, :cond_0

    .line 1381
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    const-string v17, "assistant_menu"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1383
    new-instance v4, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1384
    .local v4, "assistantMenu":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.assistantmenu"

    const-string v19, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1386
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1387
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    .end local v4    # "assistantMenu":Landroid/content/Intent;
    :cond_0
    and-int/lit8 v17, p1, 0x10

    if-lez v17, :cond_3

    .line 1392
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x10"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const-string v17, "air_motion_engine"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1394
    new-instance v2, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1395
    .local v2, "air_motion_changed":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1396
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1398
    const-string v17, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v17 .. v17}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1399
    const-string v17, "air_motion_call_accept"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1400
    const-string v17, "air_motion_call_accept"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1401
    new-instance v11, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1402
    .local v11, "motion_changed_callaccept":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1403
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1405
    .end local v11    # "motion_changed_callaccept":Landroid/content/Intent;
    :cond_1
    const-string v17, "master_motion"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 1406
    const-string v17, "air_motion_turn"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1407
    const-string v17, "air_motion_scroll"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1409
    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1410
    .local v12, "motion_changed_scroll":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1411
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1413
    new-instance v10, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1414
    .local v10, "motion_changed_browse":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1415
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1418
    .end local v10    # "motion_changed_browse":Landroid/content/Intent;
    .end local v12    # "motion_changed_scroll":Landroid/content/Intent;
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isAllMotionDisabled2014(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1419
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->turnOffAllMotionMaster(Landroid/content/Context;)V

    .line 1425
    .end local v2    # "air_motion_changed":Landroid/content/Intent;
    :cond_3
    and-int/lit8 v17, p1, 0x8

    if-lez v17, :cond_4

    .line 1426
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x08"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 1428
    const/16 v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 1440
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string v17, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v5, "finger_air_view_changed":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1442
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1446
    .end local v5    # "finger_air_view_changed":Landroid/content/Intent;
    :cond_4
    and-int/lit8 v17, p1, 0x40

    if-lez v17, :cond_5

    .line 1447
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const-string v17, "access_control_use"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1449
    const-string v17, "access_control_enabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1450
    new-instance v6, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1451
    .local v6, "icIntent":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.accesscontrol"

    const-string v19, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1453
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1454
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    .end local v6    # "icIntent":Landroid/content/Intent;
    :cond_5
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x800

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 1459
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x800"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const-string v17, "com.samsung.android.app.sounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 1462
    const-string v17, "sound_detector"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1464
    new-instance v9, Landroid/content/Intent;

    const-string v17, "com.android.settings.action.sound_detector"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1465
    .local v9, "mIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1467
    new-instance v14, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1468
    .local v14, "sdIntent":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.sounddetector"

    const-string v19, "com.samsung.android.app.sounddetector.service.SoundDetectService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1470
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1488
    .end local v9    # "mIntent":Landroid/content/Intent;
    .end local v14    # "sdIntent":Landroid/content/Intent;
    :cond_6
    :goto_1
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x800"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_7
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x1000

    move/from16 v17, v0

    if-lez v17, :cond_8

    .line 1493
    const-string v17, "toolbox_onoff"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1497
    :cond_8
    and-int/lit8 v17, p1, 0x4

    if-lez v17, :cond_9

    .line 1498
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x04"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    const-string v17, "pen_hovering"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1503
    :cond_9
    and-int/lit8 v17, p1, 0x2

    if-lez v17, :cond_a

    .line 1504
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x02"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    const-string v17, "intelligent_sleep_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1506
    const-string v17, "intelligent_rotation_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1507
    const-string v17, "smart_pause"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1508
    new-instance v15, Landroid/content/Intent;

    const-string v17, "com.sec.SMART_PAUSE_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1509
    .local v15, "smart_pause_changed":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1510
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1511
    const-string v17, "smart_scroll"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1512
    new-instance v16, Landroid/content/Intent;

    const-string v17, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1513
    .local v16, "smart_scroll_changed":Landroid/content/Intent;
    const-string v17, "isEnable"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1514
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1518
    .end local v15    # "smart_pause_changed":Landroid/content/Intent;
    .end local v16    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_a
    and-int/lit8 v17, p1, 0x1

    if-lez v17, :cond_b

    .line 1519
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x01"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const-string v17, "multi_window_enabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1524
    :cond_b
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-lez v17, :cond_c

    .line 1525
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x80"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const-string v17, "pen_writing_buddy"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1527
    const-string v17, "air_button_onoff"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1530
    :cond_c
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    if-lez v17, :cond_d

    .line 1531
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x100"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    const-string v17, "SEC_FLOATING_FEATURE_SETTINGS_MOTION_CONCEPT_2014"

    invoke-static/range {v17 .. v17}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 1533
    const-string v17, "surface_palm_swipe"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1543
    :cond_d
    :goto_2
    const-string v17, "any_screen_enabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1544
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "com.sec.feature.floating_side_softkey"

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1545
    const-string v17, "sidesoftkey_switch"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1550
    :cond_e
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    if-lez v17, :cond_f

    .line 1551
    new-instance v3, Landroid/content/Intent;

    const-string v17, "android.settings.ALL_SOUND_MUTE"

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1552
    .local v3, "all_sound_off_intent":Landroid/content/Intent;
    const-string v17, "all_sound_off"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1553
    const-string v17, "mute"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1554
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1555
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - TurnOffAllSound in"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    .end local v3    # "all_sound_off_intent":Landroid/content/Intent;
    :cond_f
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x2000

    move/from16 v17, v0

    if-lez v17, :cond_10

    const-string v17, "com.sec.feature.overlaymagnifier"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1560
    const-string v17, "Utils"

    const-string v18, "turnOffTalkBackExclusiveOptions - 0x2000"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const-string v17, "accessibility_magnifier"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1563
    :cond_10
    return-void

    .line 1430
    :cond_11
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1431
    const-string v17, "finger_air_view"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1432
    const-string v17, "finger_air_view_information_preview"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1433
    const-string v17, "finger_air_view_highlight"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1435
    :cond_12
    const-string v17, "finger_air_view"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1436
    const-string v17, "finger_air_view_highlight"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1471
    :cond_13
    const-string v17, "com.samsung.android.app.advsounddetector"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1472
    const-string v17, "sound_detector"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1473
    const-string v17, "doorbell_detector"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1475
    new-instance v7, Landroid/content/Intent;

    const-string v17, "com.android.settings.action.sound_detector"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1476
    .local v7, "mBabyIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1478
    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.android.settings.action.doorbell_detector"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1479
    .local v8, "mDoorIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1481
    new-instance v14, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1482
    .restart local v14    # "sdIntent":Landroid/content/Intent;
    new-instance v17, Landroid/content/ComponentName;

    const-string v18, "com.samsung.android.app.advsounddetector"

    const-string v19, "com.samsung.android.app.advsounddetector.service.SoundDetectService"

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1485
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 1535
    .end local v7    # "mBabyIntent":Landroid/content/Intent;
    .end local v8    # "mDoorIntent":Landroid/content/Intent;
    .end local v14    # "sdIntent":Landroid/content/Intent;
    :cond_14
    const-string v17, "surface_palm_touch"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1536
    const-string v17, "surface_palm_swipe"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1537
    const-string v17, "surface_motion_engine"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method public static turnOnAirMotionEngine(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 745
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 747
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string v2, "air_motion_engine"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v4}, Lcom/android/settings/Utils;->isAllAirMotionDisabled2014(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    const-string v2, "air_motion_engine"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 749
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .local v1, "motion_changed":Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 751
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 753
    .end local v1    # "motion_changed":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static turnOnAllMotionMaster(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 819
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 821
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 824
    invoke-static {p0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 827
    invoke-static {p0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 830
    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 831
    return-void
.end method

.method public static turnOnMotionEngine(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 667
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 668
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string v2, "motion_engine"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 669
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    .local v1, "motion_changed":Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 671
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 672
    return-void
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentPreferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 319
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 320
    .local v5, "preference":Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 353
    :goto_0
    return v7

    .line 324
    :cond_0
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 325
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 328
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 329
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 330
    .local v3, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 331
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 332
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 336
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 340
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 342
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 345
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 330
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "listSize":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public static updateSideViewVisibility(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "mLeftside"    # Landroid/view/View;
    .param p1, "mRightside"    # Landroid/view/View;

    .prologue
    .line 4276
    const-string v1, "grande"

    const-string v2, "ro.build.scafe.size"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 4277
    const/16 v0, 0x8

    .line 4279
    .local v0, "visibility":I
    if-eqz p0, :cond_0

    .line 4280
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4282
    :cond_0
    if-eqz p1, :cond_1

    .line 4283
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4286
    .end local v0    # "visibility":I
    :cond_1
    return-void
.end method

.method public static updateSmartNetworkSwitchCheckBox(Landroid/content/Context;)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 4361
    const-string v11, "connectivity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 4362
    .local v2, "mConnectivityManager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    .line 4364
    .local v4, "result":I
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v3

    .line 4366
    .local v3, "mMobilePolicyDataEnable":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_1

    const/4 v0, 0x1

    .line 4368
    .local v0, "isAirplaneMode":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "mobile_data"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_2

    const/4 v1, 0x1

    .line 4370
    .local v1, "isMobileDataEnabled":Z
    :goto_1
    const/4 v5, 0x0

    .line 4371
    .local v5, "simState":I
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 4372
    .local v10, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v10, :cond_3

    .line 4373
    const/4 v5, 0x0

    .line 4374
    const-string v11, "Utils"

    const-string v12, "TelephonyManager is null."

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4396
    :goto_2
    const/4 v11, 0x5

    if-eq v5, v11, :cond_9

    .line 4399
    const/4 v4, 0x2

    .line 4410
    :cond_0
    :goto_3
    return v4

    .line 4366
    .end local v0    # "isAirplaneMode":Z
    .end local v1    # "isMobileDataEnabled":Z
    .end local v5    # "simState":I
    .end local v10    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4368
    .restart local v0    # "isAirplaneMode":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 4376
    .restart local v1    # "isMobileDataEnabled":Z
    .restart local v5    # "simState":I
    .restart local v10    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 4377
    const-string v11, "gsm.sim.state"

    const-string v12, "-1,-1"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4378
    .local v8, "simStatus":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 4379
    .local v9, "simStatusInt":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 4380
    .local v6, "simState1":I
    const/4 v7, 0x0

    .line 4381
    .local v7, "simState2":I
    const-string v11, "READY"

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 4382
    const/4 v6, 0x5

    .line 4383
    :cond_4
    array-length v11, v9

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    const-string v11, "READY"

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4384
    const/4 v7, 0x5

    .line 4385
    :cond_5
    const/4 v11, 0x5

    if-eq v6, v11, :cond_6

    const/4 v11, 0x5

    if-ne v7, v11, :cond_7

    .line 4386
    :cond_6
    const/4 v5, 0x5

    goto :goto_2

    .line 4388
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 4393
    .end local v6    # "simState1":I
    .end local v7    # "simState2":I
    .end local v8    # "simStatus":Ljava/lang/String;
    .end local v9    # "simStatusInt":[Ljava/lang/String;
    :cond_8
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    goto :goto_2

    .line 4400
    :cond_9
    if-eqz v0, :cond_a

    .line 4401
    const/4 v4, 0x3

    goto :goto_3

    .line 4402
    :cond_a
    if-eqz v1, :cond_b

    if-nez v3, :cond_0

    .line 4403
    :cond_b
    const/4 v4, 0x4

    goto :goto_3
.end method

.method public static updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardTile;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 370
    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 371
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 374
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/16 v11, 0x80

    invoke-virtual {v6, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 375
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 376
    .local v4, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 377
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 378
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2

    .line 380
    const/4 v1, 0x0

    .line 381
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    .line 382
    .local v10, "title":Ljava/lang/String;
    const/4 v9, 0x0

    .line 386
    .local v9, "summary":Ljava/lang/String;
    :try_start_0
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 388
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 390
    .local v5, "metaData":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    .line 391
    const-string v11, "com.android.settings.icon"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 392
    const-string v11, "com.android.settings.title"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 393
    const-string v11, "com.android.settings.summary"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 403
    .end local v5    # "metaData":Landroid/os/Bundle;
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 404
    invoke-virtual {v8, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 410
    :cond_1
    iput-object v10, p1, Lcom/android/settings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    .line 411
    iput-object v9, p1, Lcom/android/settings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    .line 413
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    iput-object v11, p1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 416
    const/4 v11, 0x1

    .line 421
    .end local v0    # "i":I
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "listSize":I
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "summary":Ljava/lang/String;
    .end local v10    # "title":Ljava/lang/String;
    :goto_2
    return v11

    .line 376
    .restart local v0    # "i":I
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "listSize":I
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    .end local v0    # "i":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "listSize":I
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 397
    .restart local v0    # "i":I
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "listSize":I
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "summary":Ljava/lang/String;
    .restart local v10    # "title":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto :goto_1

    .line 395
    :catch_1
    move-exception v11

    goto :goto_1
.end method
