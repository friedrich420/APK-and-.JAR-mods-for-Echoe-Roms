.class public Lcom/android/launcher2/PkgResCache;
.super Ljava/lang/Object;
.source "PkgResCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PkgResCache$1;,
        Lcom/android/launcher2/PkgResCache$PkgEntry;,
        Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final INITIAL_ICON_CAPACITY:I = 0x3

.field private static final INITIAL_LABEL_CAPACITY:I = 0x3

.field private static final INITIAL_PACKAGE_CAPACITY:I = 0x50

.field private static final TAG:Ljava/lang/String; = "PkgResCache"


# instance fields
.field private final mApp:Lcom/android/launcher2/LauncherApplication;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private final mFolderIcon:Landroid/graphics/Bitmap;

.field private final mIconDpi:I

.field private mMenuIconSize:I

.field private final mPkgCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/PkgResCache$PkgEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private mTargetIconDpi:I

.field private final mUnavailableIcon:Landroid/graphics/Bitmap;

.field private final nullIcon:Landroid/graphics/Bitmap;

.field private final nullString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/PkgResCache;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;)V
    .locals 12
    .param p1, "app"    # Lcom/android/launcher2/LauncherApplication;

    .prologue
    const/16 v11, 0x140

    const/16 v10, 0xf0

    const/16 v9, 0xa0

    const/16 v8, 0x78

    const/4 v7, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v6, ""

    iput-object v6, p0, Lcom/android/launcher2/PkgResCache;->nullString:Ljava/lang/String;

    .line 95
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    .line 98
    new-instance v6, Ljava/util/HashMap;

    const/16 v7, 0x50

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    .line 109
    iput-object p1, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 110
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 111
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, "appRes":Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 114
    .local v3, "sysRes":Landroid/content/res/Resources;
    const v6, 0x7f0e00c6

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 115
    .local v5, "targetIconSize":I
    const/high16 v6, 0x1050000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 116
    .local v2, "stdIconSize":I
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 117
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v6, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, p0, Lcom/android/launcher2/PkgResCache;->mTargetIconDpi:I

    .line 118
    if-ne v5, v2, :cond_0

    .line 121
    iget v6, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    .line 146
    :goto_0
    const/high16 v6, 0x10d0000

    invoke-direct {p0, v3, v6}, Lcom/android/launcher2/PkgResCache;->createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/PkgResCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 147
    const v6, 0x7f02010e

    invoke-direct {p0, v0, v6}, Lcom/android/launcher2/PkgResCache;->createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/PkgResCache;->mUnavailableIcon:Landroid/graphics/Bitmap;

    .line 149
    const v6, 0x7f0200bc

    invoke-direct {p0, v0, v6}, Lcom/android/launcher2/PkgResCache;->createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/PkgResCache;->mFolderIcon:Landroid/graphics/Bitmap;

    .line 150
    return-void

    .line 126
    :cond_0
    int-to-float v6, v5

    int-to-float v7, v2

    div-float/2addr v6, v7

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 128
    .local v4, "targetDPI":I
    if-gt v4, v8, :cond_1

    .line 129
    iput v8, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    .line 130
    :cond_1
    if-gt v4, v9, :cond_2

    .line 131
    iput v9, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    .line 132
    :cond_2
    if-gt v4, v10, :cond_3

    .line 133
    iput v10, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    .line 134
    :cond_3
    if-gt v4, v11, :cond_4

    .line 135
    iput v11, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    .line 136
    :cond_4
    const/16 v6, 0x1e0

    if-gt v4, v6, :cond_5

    .line 137
    const/16 v6, 0x1e0

    iput v6, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    .line 139
    :cond_5
    const/16 v6, 0x280

    iput v6, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;I)V
    .locals 3
    .param p1, "app"    # Lcom/android/launcher2/LauncherApplication;
    .param p2, "menuIconSize"    # I

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/launcher2/PkgResCache;-><init>(Lcom/android/launcher2/LauncherApplication;)V

    .line 155
    iput p2, p0, Lcom/android/launcher2/PkgResCache;->mMenuIconSize:I

    .line 161
    const-string v0, "teeeeeeeeeeeeeeeeeeest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIconDpi is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method private createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 180
    iget v2, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 181
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v1, v2}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    .local v0, "b":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private loadTitleAndIcon(Ljava/lang/String;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ComponentInfo;)V
    .locals 14
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    .param p3, "ci"    # Landroid/content/pm/ComponentInfo;

    .prologue
    .line 514
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 515
    .local v3, "iconId":I
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    .line 516
    .local v4, "labelId":I
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 517
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_0

    if-eqz v4, :cond_c

    .line 518
    :cond_0
    const/4 v6, 0x0

    .line 519
    .local v6, "newIcon":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 520
    .local v7, "newLabel":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v11

    .line 523
    :try_start_0
    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/PkgResCache$PkgEntry;

    .line 524
    .local v8, "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    if-nez v8, :cond_d

    .line 525
    new-instance v8, Lcom/android/launcher2/PkgResCache$PkgEntry;

    .end local v8    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/android/launcher2/PkgResCache$PkgEntry;-><init>(Lcom/android/launcher2/PkgResCache$1;)V

    .line 526
    .restart local v8    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v10, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    :cond_1
    :goto_0
    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v10, :cond_2

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIsWidget:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_2

    .line 541
    const/4 v6, 0x0

    .line 545
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    if-eqz v4, :cond_a

    if-nez v7, :cond_a

    .line 551
    :cond_4
    if-nez v1, :cond_10

    .line 552
    :try_start_1
    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 556
    .local v9, "res":Landroid/content/res/Resources;
    :goto_1
    if-eqz v3, :cond_8

    if-nez v6, :cond_8

    .line 557
    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v10, :cond_13

    .line 558
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v5

    .line 559
    .local v5, "loader":Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v5}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v10

    if-nez v10, :cond_5

    .line 560
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/ThemeLoader;->loadAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 562
    if-nez v6, :cond_5

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIsWidget:Z

    if-nez v10, :cond_5

    .line 563
    move-object/from16 v0, p3

    iget v10, v0, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v10, :cond_11

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v9, v3, v10}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 566
    :cond_5
    if-nez v6, :cond_6

    .line 567
    move-object/from16 v0, p3

    iget v10, v0, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v10, :cond_12

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v9, v3, v10}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 571
    .end local v5    # "loader":Lcom/android/launcher2/ThemeLoader;
    :cond_6
    :goto_4
    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v10, :cond_7

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIsWidget:Z

    if-nez v10, :cond_8

    .line 572
    :cond_7
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v12

    if-nez v6, :cond_15

    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    :goto_5
    invoke-virtual {v12, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 575
    :cond_8
    if-eqz v4, :cond_a

    if-nez v7, :cond_a

    .line 576
    move-object/from16 v0, p3

    iget v10, v0, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v10, :cond_16

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_6
    invoke-virtual {p0, v9, v4, v10}, Lcom/android/launcher2/PkgResCache;->loadString(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 577
    sget-boolean v10, Lcom/android/launcher2/PkgResCache;->DEBUGGABLE:Z

    if-eqz v10, :cond_9

    const-string v10, "PkgResCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loaded app name : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", packageName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    iget-object v13, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_9
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v12

    if-nez v7, :cond_17

    const-string v10, ""

    :goto_7
    invoke-virtual {v12, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_a
    :goto_8
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 594
    if-eqz v6, :cond_b

    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    if-eq v6, v10, :cond_b

    .line 595
    move-object/from16 v0, p2

    iput-object v6, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 596
    :cond_b
    if-eqz v7, :cond_c

    const-string v10, ""

    if-eq v7, v10, :cond_c

    .line 597
    move-object/from16 v0, p2

    iput-object v7, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    .line 599
    .end local v6    # "newIcon":Landroid/graphics/Bitmap;
    .end local v7    # "newLabel":Ljava/lang/String;
    .end local v8    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    :cond_c
    return-void

    .line 528
    .restart local v6    # "newIcon":Landroid/graphics/Bitmap;
    .restart local v7    # "newLabel":Ljava/lang/String;
    .restart local v8    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    :cond_d
    if-eqz v3, :cond_e

    .line 529
    :try_start_3
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v6, v0

    .line 531
    :cond_e
    if-eqz v4, :cond_f

    .line 532
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 534
    :cond_f
    sget-boolean v10, Lcom/android/launcher2/PkgResCache;->DEBUGGABLE:Z

    if-eqz v10, :cond_1

    .line 535
    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    if-ne v6, v10, :cond_1

    .line 536
    const-string v10, "PkgResCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadTitleAndIcon: pkgEntry bitmap is nullIcon. label = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 593
    .end local v8    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 554
    .restart local v8    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    :cond_10
    :try_start_4
    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .restart local v9    # "res":Landroid/content/res/Resources;
    goto/16 :goto_1

    .line 563
    .restart local v5    # "loader":Lcom/android/launcher2/ThemeLoader;
    :cond_11
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_2

    .line 567
    :cond_12
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_3

    .line 570
    .end local v5    # "loader":Lcom/android/launcher2/ThemeLoader;
    :cond_13
    move-object/from16 v0, p3

    iget v10, v0, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v10, :cond_14

    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_9
    invoke-virtual {p0, v9, v3, v10}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_4

    :cond_14
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_9

    :cond_15
    move-object v10, v6

    .line 572
    goto/16 :goto_5

    .line 576
    :cond_16
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    :cond_17
    move-object v10, v7

    .line 578
    goto/16 :goto_7

    .line 580
    .end local v9    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 585
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v3, :cond_18

    if-nez v6, :cond_18

    .line 586
    :try_start_5
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v10

    iget-object v12, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v3, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 587
    :cond_18
    if-eqz v4, :cond_a

    if-nez v7, :cond_a

    .line 588
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v10

    const-string v12, ""

    invoke-virtual {v10, v4, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 589
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 590
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_8
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 169
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFolderIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mFolderIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, "icon":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 226
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PkgResCache;->getIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    :cond_0
    return-object v0
.end method

.method public getIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 244
    const/4 v3, 0x0

    .line 245
    .local v3, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v4

    .line 246
    .local v4, "iconId":I
    if-eqz v4, :cond_1

    .line 247
    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v7, :cond_2

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 248
    .local v1, "ci":Landroid/content/pm/ComponentInfo;
    :goto_0
    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 250
    :try_start_0
    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PkgResCache$PkgEntry;

    .line 251
    .local v5, "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    if-eqz v5, :cond_3

    .line 252
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v3, v0

    .line 257
    :goto_1
    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    if-ne v3, v7, :cond_4

    .line 258
    const/4 v3, 0x0

    .line 271
    :cond_0
    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .end local v1    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v5    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    :cond_1
    return-object v3

    .line 247
    :cond_2
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 254
    .restart local v1    # "ci":Landroid/content/pm/ComponentInfo;
    .restart local v5    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    :cond_3
    :try_start_1
    new-instance v5, Lcom/android/launcher2/PkgResCache$PkgEntry;

    .end local v5    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/android/launcher2/PkgResCache$PkgEntry;-><init>(Lcom/android/launcher2/PkgResCache$1;)V

    .line 255
    .restart local v5    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 271
    .end local v5    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 260
    .restart local v5    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    :cond_4
    if-nez v3, :cond_0

    .line 262
    :try_start_2
    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    .line 263
    .local v6, "res":Landroid/content/res/Resources;
    iget v7, v1, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v7, :cond_5

    iget-object v7, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v6, v4, v7}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 264
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v9

    if-nez v3, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    :goto_4
    invoke-virtual {v9, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 265
    .end local v6    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v7

    iget-object v9, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 263
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "res":Landroid/content/res/Resources;
    :cond_5
    :try_start_4
    iget-object v7, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_6
    move-object v7, v3

    .line 264
    goto :goto_4
.end method

.method public getTitle(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 286
    const/4 v1, 0x0

    .line 288
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 289
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PkgResCache;->getTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    .line 292
    :cond_0
    return-object v1
.end method

.method public getTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 11
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 306
    const/4 v7, 0x0

    .line 307
    .local v7, "title":Ljava/lang/String;
    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v8, :cond_2

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 309
    .local v1, "ci":Landroid/content/pm/ComponentInfo;
    :goto_0
    const/4 v4, 0x0

    .line 310
    .local v4, "labelId":I
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 311
    .local v3, "label":Ljava/lang/CharSequence;
    if-nez v3, :cond_0

    .line 312
    iget v4, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 313
    if-nez v4, :cond_0

    .line 314
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 315
    if-nez v3, :cond_0

    .line 316
    iget v4, v1, Landroid/content/pm/ComponentInfo;->labelRes:I

    .line 317
    if-nez v4, :cond_0

    .line 318
    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 319
    if-nez v3, :cond_0

    .line 320
    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v8, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 325
    :cond_0
    if-eqz v3, :cond_3

    .line 326
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 353
    :cond_1
    :goto_1
    return-object v7

    .line 307
    .end local v1    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v3    # "label":Ljava/lang/CharSequence;
    .end local v4    # "labelId":I
    :cond_2
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 327
    .restart local v1    # "ci":Landroid/content/pm/ComponentInfo;
    .restart local v3    # "label":Ljava/lang/CharSequence;
    .restart local v4    # "labelId":I
    :cond_3
    if-eqz v4, :cond_1

    .line 328
    iget-object v9, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v9

    .line 330
    :try_start_0
    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    iget-object v10, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PkgResCache$PkgEntry;

    .line 331
    .local v5, "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    if-eqz v5, :cond_5

    .line 332
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 337
    :goto_2
    const-string v8, ""

    if-ne v7, v8, :cond_6

    .line 338
    const/4 v7, 0x0

    .line 351
    :cond_4
    :goto_3
    monitor-exit v9

    goto :goto_1

    .end local v5    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 334
    .restart local v5    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    :cond_5
    :try_start_1
    new-instance v5, Lcom/android/launcher2/PkgResCache$PkgEntry;

    .end local v5    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;-><init>(Lcom/android/launcher2/PkgResCache$1;)V

    .line 335
    .restart local v5    # "pkgEntry":Lcom/android/launcher2/PkgResCache$PkgEntry;
    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    iget-object v10, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 340
    :cond_6
    if-nez v7, :cond_4

    .line 342
    :try_start_2
    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v10, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    .line 343
    .local v6, "res":Landroid/content/res/Resources;
    iget v8, v1, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v8, :cond_7

    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0, v6, v4, v8}, Lcom/android/launcher2/PkgResCache;->loadString(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 344
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v10

    if-nez v7, :cond_8

    const-string v8, ""

    :goto_5
    invoke-virtual {v10, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 345
    .end local v6    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    # getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v8

    const-string v10, ""

    invoke-virtual {v8, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 343
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "res":Landroid/content/res/Resources;
    :cond_7
    :try_start_4
    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_8
    move-object v8, v7

    .line 344
    goto :goto_5
.end method

.method public getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 371
    iget-object v1, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 372
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V

    .line 381
    :goto_0
    return-void

    .line 375
    :cond_0
    iput v2, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 376
    iput-object v3, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 377
    iput v2, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    .line 378
    iput-object v3, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    .line 379
    iput-boolean v2, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIsWidget:Z

    goto :goto_0
.end method

.method public getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v4, 0x0

    .line 398
    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_4

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 400
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    :goto_0
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 401
    .local v1, "iconId":I
    iput-object v4, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 403
    const/4 v3, 0x0

    .line 404
    .local v3, "labelId":I
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 405
    .local v2, "label":Ljava/lang/CharSequence;
    if-nez v2, :cond_0

    .line 406
    iget v3, p2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 407
    if-nez v3, :cond_0

    .line 408
    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 409
    if-nez v2, :cond_0

    .line 410
    iget v3, v0, Landroid/content/pm/ComponentInfo;->labelRes:I

    .line 411
    if-nez v3, :cond_0

    .line 412
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 413
    if-nez v2, :cond_0

    .line 414
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 419
    :cond_0
    iput v3, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    .line 420
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_1
    iput-object v4, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    .line 422
    if-nez v1, :cond_2

    if-eqz v3, :cond_3

    .line 423
    :cond_2
    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, p1, v0}, Lcom/android/launcher2/PkgResCache;->loadTitleAndIcon(Ljava/lang/String;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ComponentInfo;)V

    .line 425
    :cond_3
    return-void

    .line 398
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "iconId":I
    .end local v2    # "label":Ljava/lang/CharSequence;
    .end local v3    # "labelId":I
    :cond_4
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method

.method public getUnavailableIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mUnavailableIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 437
    const/4 v2, 0x0

    .line 438
    .local v2, "newIcon":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 441
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 446
    :goto_0
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/PkgResCache;->mMenuIconSize:I

    if-nez v3, :cond_1

    .line 448
    :cond_0
    :try_start_1
    const-string v3, "com.samsung.helphub"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 449
    iget v3, p0, Lcom/android/launcher2/PkgResCache;->mTargetIconDpi:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 459
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 460
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/launcher2/PkgResCache;->mMenuIconSize:I

    if-lez v3, :cond_4

    .line 461
    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    iget v4, p0, Lcom/android/launcher2/PkgResCache;->mMenuIconSize:I

    invoke-static {v1, v3, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 467
    :cond_2
    :goto_2
    return-object v2

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v3, "PkgResCache"

    const-string v4, "Cound not call getCSCPackageItemIcon. This should only happen when running on a device without CSC related features"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_3
    :try_start_2
    iget v3, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_1

    .line 453
    :catch_1
    move-exception v0

    .line 454
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-boolean v3, Lcom/android/launcher2/PkgResCache;->DEBUGGABLE:Z

    if-eqz v3, :cond_1

    .line 455
    const-string v3, "PkgResCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load icon from res.getDrawableForDensity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 464
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v1, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2
.end method

.method public loadString(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 481
    const/4 v2, 0x0

    .line 484
    .local v2, "text":Ljava/lang/CharSequence;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 491
    :goto_0
    if-nez v2, :cond_0

    .line 492
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 494
    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 498
    .local v1, "newString":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 485
    .end local v1    # "newString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v3, "PkgResCache"

    const-string v4, "Could not call getCSCPackageItemText. This should only happen when running on a device without CSC related features"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 495
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 496
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "newString":Ljava/lang/String;
    goto :goto_1
.end method

.method public refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V
    .locals 4
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "item"    # Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    .prologue
    .line 613
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 617
    .local v0, "ci":Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, v0}, Lcom/android/launcher2/PkgResCache;->loadTitleAndIcon(Ljava/lang/String;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ComponentInfo;)V

    .line 620
    :cond_0
    return-void

    .line 614
    .end local v0    # "ci":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 615
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "ci":Landroid/content/pm/ActivityInfo;
    goto :goto_0
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 627
    iget-object v1, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    monitor-exit v1

    .line 630
    return-void

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
