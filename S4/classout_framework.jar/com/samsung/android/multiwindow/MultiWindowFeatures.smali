.class public Lcom/samsung/android/multiwindow/MultiWindowFeatures;
.super Ljava/lang/Object;
.source "MultiWindowFeatures.java"


# static fields
.field public static final MULTIWINDOW_ENABLED:Z = true

.field private static SUPPORT_COMMON_UI:J

.field private static SUPPORT_FIXED_SPLIT_VIEW:J

.field private static SUPPORT_FREESTYLE:J

.field private static SUPPORT_FREESTYLE_DOCKING:J

.field private static SUPPORT_FREESTYLE_LAUNCH:J

.field private static SUPPORT_MINIMIZE:J

.field private static SUPPORT_MINIMIZE_ANIMATION:J

.field private static SUPPORT_MULTIWINDOW:J

.field private static SUPPORT_MULTIWINDOW_LAUNCH:J

.field private static SUPPORT_MULTI_INSTANCE:J

.field private static SUPPORT_QUADVIEW:J

.field private static SUPPORT_RECENT_UI:J

.field private static SUPPORT_SCALE_WINDOW:J

.field private static SUPPORT_SIMPLIFICATION_UI:J

.field private static SUPPORT_SPLIT_FULLSCREEN:J

.field private static SUPPORT_STYLE_TRANSITION:J

.field private static SUPPORT_TAB_PEN_WINDOW:J

.field private static sEnabledFeaturesFlags:J

.field private static sQueriedTypeMultiWindow:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, sQueriedTypeMultiWindow:Z

    .line 22
    const-wide/16 v0, 0x0

    sput-wide v0, sEnabledFeaturesFlags:J

    .line 24
    const-wide/16 v0, 0x1

    sput-wide v0, SUPPORT_MULTIWINDOW:J

    .line 25
    const-wide/16 v0, 0x2

    sput-wide v0, SUPPORT_FREESTYLE:J

    .line 26
    const-wide/16 v0, 0x4

    sput-wide v0, SUPPORT_MINIMIZE:J

    .line 27
    const-wide/16 v0, 0x8

    sput-wide v0, SUPPORT_QUADVIEW:J

    .line 28
    const-wide/16 v0, 0x10

    sput-wide v0, SUPPORT_FIXED_SPLIT_VIEW:J

    .line 29
    const-wide/16 v0, 0x20

    sput-wide v0, SUPPORT_FREESTYLE_DOCKING:J

    .line 30
    const-wide/16 v0, 0x40

    sput-wide v0, SUPPORT_FREESTYLE_LAUNCH:J

    .line 31
    const-wide/16 v0, 0x80

    sput-wide v0, SUPPORT_SCALE_WINDOW:J

    .line 32
    const-wide/16 v0, 0x100

    sput-wide v0, SUPPORT_MULTIWINDOW_LAUNCH:J

    .line 33
    const-wide/16 v0, 0x200

    sput-wide v0, SUPPORT_SPLIT_FULLSCREEN:J

    .line 34
    const-wide/16 v0, 0x400

    sput-wide v0, SUPPORT_MULTI_INSTANCE:J

    .line 35
    const-wide/16 v0, 0x800

    sput-wide v0, SUPPORT_COMMON_UI:J

    .line 36
    const-wide/16 v0, 0x1000

    sput-wide v0, SUPPORT_STYLE_TRANSITION:J

    .line 37
    const-wide/16 v0, 0x2000

    sput-wide v0, SUPPORT_RECENT_UI:J

    .line 38
    const-wide/16 v0, 0x4000

    sput-wide v0, SUPPORT_MINIMIZE_ANIMATION:J

    .line 39
    const-wide/32 v0, 0x8000

    sput-wide v0, SUPPORT_TAB_PEN_WINDOW:J

    .line 40
    const-wide/32 v0, 0x10000

    sput-wide v0, SUPPORT_SIMPLIFICATION_UI:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMultiWindowFeature(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    .line 55
    sget-boolean v3, sQueriedTypeMultiWindow:Z

    if-eqz v3, :cond_c

    sget-wide v4, sEnabledFeaturesFlags:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_33

    .line 56
    :cond_c
    const/4 v3, 0x1

    sput-boolean v3, sQueriedTypeMultiWindow:Z

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_34

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 61
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_34

    .line 62
    const-string/jumbo v3, "multiwindow_facade"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 63
    .local v1, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getEnabledFeaturesFlags()J

    move-result-wide v4

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 65
    sget-wide v4, sEnabledFeaturesFlags:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_34

    .line 182
    .end local v1    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_33
    :goto_33
    return-void

    .line 72
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_34
    if-eqz v2, :cond_13d

    .line 73
    :try_start_36
    const-string v3, "com.sec.feature.multiwindow"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 74
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_MULTIWINDOW:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 76
    :cond_45
    const-string v3, "com.sec.feature.multiwindow.freestyle"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 77
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_FREESTYLE:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 79
    :cond_54
    const-string v3, "com.sec.feature.multiwindow.minimize"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 80
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_MINIMIZE:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 82
    :cond_63
    const-string v3, "com.sec.feature.multiwindow.quadview"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 83
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_QUADVIEW:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 85
    :cond_72
    const-string v3, "com.sec.feature.multiwindow.fixedsplitview"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 86
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_FIXED_SPLIT_VIEW:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 88
    :cond_81
    const-string v3, "com.sec.feature.multiwindow.freestyledocking"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 89
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_FREESTYLE_DOCKING:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 91
    :cond_90
    const-string v3, "com.sec.feature.multiwindow.freestylelaunch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 92
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_FREESTYLE_LAUNCH:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 94
    :cond_9f
    const-string v3, "com.sec.feature.multiwindow.scalewindow"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 95
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_SCALE_WINDOW:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 97
    :cond_ae
    const-string v3, "com.sec.feature.multiwindow.multiwindowlaunch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 98
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_MULTIWINDOW_LAUNCH:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 100
    :cond_bd
    const-string v3, "com.sec.feature.multiwindow.splitfullscreen"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 101
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_SPLIT_FULLSCREEN:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 103
    :cond_cc
    const-string v3, "com.sec.feature.multiwindow.multiinstance"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_db

    .line 104
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_MULTI_INSTANCE:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 106
    :cond_db
    const-string v3, "com.sec.feature.multiwindow.commonui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 107
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_COMMON_UI:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 109
    :cond_ea
    const-string v3, "com.sec.feature.multiwindow.styletransition"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 110
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_STYLE_TRANSITION:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 112
    :cond_f9
    const-string v3, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 113
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_RECENT_UI:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 115
    :cond_108
    const-string v3, "com.sec.feature.multiwindow.minimizeanimation"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 116
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_MINIMIZE_ANIMATION:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 118
    :cond_117
    const-string v3, "com.sec.feature.multiwindow.tabpenwindow"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_126

    .line 119
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_TAB_PEN_WINDOW:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 121
    :cond_126
    const-string v3, "com.sec.feature.multiwindow.simplificationui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 122
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_SIMPLIFICATION_UI:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_135} :catch_137

    goto/16 :goto_33

    .line 178
    :catch_137
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sput-boolean v3, sQueriedTypeMultiWindow:Z

    goto/16 :goto_33

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13d
    :try_start_13d
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_151

    .line 127
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_MULTIWINDOW:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 129
    :cond_151
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.freestyle.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_165

    .line 130
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_FREESTYLE:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 132
    :cond_165
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.minimize.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_179

    .line 133
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_MINIMIZE:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 135
    :cond_179
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.quadview.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_18d

    .line 136
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_QUADVIEW:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 138
    :cond_18d
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.fixedsplitview"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1a1

    .line 139
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_FIXED_SPLIT_VIEW:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 141
    :cond_1a1
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.freestyledocking.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b5

    .line 142
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_FREESTYLE_DOCKING:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 144
    :cond_1b5
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.freestylelaunch.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1c9

    .line 145
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_FREESTYLE_LAUNCH:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 147
    :cond_1c9
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.scalewindow.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1dd

    .line 148
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_SCALE_WINDOW:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 150
    :cond_1dd
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.multiwindowlaunch.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1f1

    .line 151
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_MULTIWINDOW_LAUNCH:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 153
    :cond_1f1
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.splitfullscreen.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_205

    .line 154
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_SPLIT_FULLSCREEN:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 156
    :cond_205
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.multiinstance.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_219

    .line 157
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_MULTI_INSTANCE:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 159
    :cond_219
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.commonui.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_22d

    .line 160
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_COMMON_UI:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 162
    :cond_22d
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.styletransition.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_241

    .line 163
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_STYLE_TRANSITION:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 165
    :cond_241
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.recentui.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_255

    .line 166
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_RECENT_UI:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 168
    :cond_255
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.minimizeanimation.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_269

    .line 169
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_MINIMIZE_ANIMATION:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 171
    :cond_269
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.tabpenwindow.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_27d

    .line 172
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_TAB_PEN_WINDOW:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J

    .line 174
    :cond_27d
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/permissions/com.sec.feature.multiwindow.simplificationui.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 175
    sget-wide v4, sEnabledFeaturesFlags:J

    sget-wide v6, SUPPORT_SIMPLIFICATION_UI:J

    or-long/2addr v4, v6

    sput-wide v4, sEnabledFeaturesFlags:J
    :try_end_291
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_291} :catch_137

    goto/16 :goto_33
.end method

.method public static getEnabledFeaturesFlags(Landroid/content/Context;)J
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 48
    sget-wide v0, sEnabledFeaturesFlags:J

    return-wide v0
.end method

.method private static isEnabled(J)Z
    .registers 6
    .param p0, "feature"    # J

    .prologue
    .line 43
    sget-wide v0, sEnabledFeaturesFlags:J

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isSupportCommonUI(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 290
    sget-wide v0, SUPPORT_COMMON_UI:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFixedSplitView(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 250
    sget-wide v0, SUPPORT_FIXED_SPLIT_VIEW:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFreeStyle(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 202
    sget-wide v0, SUPPORT_FREESTYLE:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFreeStyleDocking(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 258
    sget-wide v0, SUPPORT_FREESTYLE_DOCKING:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportFreeStyleLaunch(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 266
    sget-wide v0, SUPPORT_FREESTYLE_LAUNCH:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMinimize(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 232
    sget-wide v0, SUPPORT_MINIMIZE:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMinimizeAnimation(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 314
    sget-wide v0, SUPPORT_MINIMIZE_ANIMATION:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMultiInstance(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 212
    sget-wide v0, SUPPORT_MULTI_INSTANCE:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMultiWindow(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 192
    sget-wide v0, SUPPORT_MULTIWINDOW:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportMultiWindowLaunch(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 274
    sget-wide v0, SUPPORT_MULTIWINDOW_LAUNCH:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportQuadView(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 222
    sget-wide v0, SUPPORT_QUADVIEW:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportRecentUI(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 305
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 306
    sget-wide v0, SUPPORT_RECENT_UI:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportScaleWindow(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 242
    sget-wide v0, SUPPORT_SCALE_WINDOW:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportSimplificationUI(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 329
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 330
    sget-wide v0, SUPPORT_SIMPLIFICATION_UI:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportSplitFullScreen(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 281
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 282
    sget-wide v0, SUPPORT_SPLIT_FULLSCREEN:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportStyleTransition(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 298
    sget-wide v0, SUPPORT_STYLE_TRANSITION:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method

.method public static isSupportTabPenWindow(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    invoke-static {p0}, checkMultiWindowFeature(Landroid/content/Context;)V

    .line 322
    sget-wide v0, SUPPORT_TAB_PEN_WINDOW:J

    invoke-static {v0, v1}, isEnabled(J)Z

    move-result v0

    return v0
.end method
