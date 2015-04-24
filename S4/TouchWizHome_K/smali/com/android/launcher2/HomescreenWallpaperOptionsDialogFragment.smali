.class public Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;
.super Landroid/app/DialogFragment;
.source "HomescreenWallpaperOptionsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$CropImage;,
        Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$CropImageCmd;,
        Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$ActivityResultID;
    }
.end annotation


# static fields
.field public static final BOTH_POSITION:I = 0x2

.field public static final HOMESCREEN_POSITION:I = 0x0

.field public static final IMAGE_PICK:I = 0x5

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/*"

.field public static final KEYGUARD_CATEGORY_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.ui.KeyguardCategoriesEntryActivity"

.field public static final KEYGUARD_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator"

.field public static final KEYGUARD_PHOTO_SLIDE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.ui.KeyguardPhotoSlideMainActivity"

.field public static final LIVE_WALLPAPER_CLASS_NAME:Ljava/lang/String; = "com.android.wallpaper.livepicker.LiveWallpaperActivity"

.field public static final LIVE_WALLPAPER_PACKAGE_NAME:Ljava/lang/String; = "com.android.wallpaper.livepicker"

.field public static final LIVE_WEATHER_CLASS_NAME:Ljava/lang/String; = "com.yahoo.mobile.client.android.liveweather.MainActivity"

.field public static final LIVE_WEATHER_PACKAGE_NAME:Ljava/lang/String; = "com.yahoo.mobile.client.android.liveweather"

.field public static final LOCKSCREEN_POSITION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HomescreenWallpaperOptionsDialogFragment"

.field protected static currentMode:I = 0x0

.field public static isHomeScreenWallpaperDialogVisible:Z = false

.field private static final sFragmentTag:Ljava/lang/String; = "HomescreenWallpaperOptionsDialogFragment"


# instance fields
.field context:Landroid/content/Context;

.field private isResultSuccess:Z

.field private ivKeyword:Landroid/widget/ImageView;

.field private ivLocationWeather:Landroid/widget/ImageView;

.field private ivPhotoSlide:Landroid/widget/ImageView;

.field private llBottomContainer:Landroid/widget/LinearLayout;

.field private llDefaultImage:Landroid/widget/LinearLayout;

.field private llKeyword:Landroid/widget/LinearLayout;

.field private llLiveWallpaper:Landroid/widget/LinearLayout;

.field private llLocationWeather:Landroid/widget/LinearLayout;

.field private llMoreImage:Landroid/widget/LinearLayout;

.field private llPhotoSlide:Landroid/widget/LinearLayout;

.field private mLauncher:Lcom/android/launcher2/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isHomeScreenWallpaperDialogVisible:Z

    .line 48
    sput v0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isResultSuccess:Z

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->launchTargetApp(Ljava/lang/String;)V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;I)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "currentMode"    # I

    .prologue
    .line 56
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    sput p1, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    .line 59
    new-instance v0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;-><init>()V

    .line 60
    .local v0, "f":Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;
    if-eqz p0, :cond_0

    .line 61
    const-string v1, "HomescreenWallpaperOptionsDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 69
    const-string v1, "HomescreenWallpaperOptionsDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 70
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 73
    :cond_0
    return-void
.end method

.method private finishHelpWallpaperGuide()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    .line 395
    iget-object v0, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-boolean v1, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isResultSuccess:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->finishWallpaperGuide(Z)V

    .line 397
    :cond_0
    return-void
.end method

.method private getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 263
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 269
    :goto_0
    return-object v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 266
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDisplayHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 360
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 361
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 362
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 353
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 354
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 355
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 65
    const-string v0, "HomescreenWallpaperOptionsDialogFragment"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchTargetApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 255
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 258
    return-void
.end method

.method private makeIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 304
    const/16 v8, 0x400

    .line 306
    .local v8, "type":I
    sget v10, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    if-nez v10, :cond_1

    .line 307
    const/16 v8, 0x400

    .line 316
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getWallpaperDesiredMinimumWidth()I

    move-result v9

    .line 317
    .local v9, "width":I
    iget-object v10, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getWallpaperDesiredMinimumHeight()I

    move-result v2

    .line 318
    .local v2, "height":I
    if-le v9, v2, :cond_3

    move v3, v9

    .line 319
    .local v3, "longLength":I
    :goto_1
    const/4 v6, 0x0

    .line 320
    .local v6, "spotlightX":F
    const/4 v7, 0x0

    .line 321
    .local v7, "spotlightY":F
    const/16 v10, 0x402

    if-ne v8, v10, :cond_4

    .line 322
    iget-object v10, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getDisplayWidth(Landroid/content/Context;)I

    move-result v10

    int-to-float v6, v10

    .line 323
    iget-object v10, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getDisplayHeight(Landroid/content/Context;)I

    move-result v10

    int-to-float v7, v10

    .line 331
    :goto_2
    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.gallery3d"

    const-string v11, "com.sec.android.gallery3d.app.CropImage"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v11, Landroid/content/Intent;

    const/16 v10, 0x400

    if-ne v8, v10, :cond_5

    const-string v10, "com.android.camera.action.CROP"

    :goto_3
    invoke-direct {v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "image/*"

    invoke-virtual {v10, p1, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "outputX"

    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "outputY"

    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "aspectX"

    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "aspectY"

    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "spotlightX"

    invoke-virtual {v10, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "spotlightY"

    invoke-virtual {v10, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "scale"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "noFaceDetection"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "set-as-wallpaper"

    const/16 v10, 0x400

    if-ne v8, v10, :cond_6

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "set-as-lockscreen"

    const/16 v10, 0x401

    if-ne v8, v10, :cond_7

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "set-as-bothscreen"

    const/16 v10, 0x402

    if-ne v8, v10, :cond_8

    const/4 v10, 0x1

    :goto_6
    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    .line 348
    .local v5, "request":Landroid/content/Intent;
    return-object v5

    .line 309
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "height":I
    .end local v3    # "longLength":I
    .end local v5    # "request":Landroid/content/Intent;
    .end local v6    # "spotlightX":F
    .end local v7    # "spotlightY":F
    .end local v9    # "width":I
    :cond_1
    sget v10, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 310
    const/16 v8, 0x401

    goto/16 :goto_0

    .line 312
    :cond_2
    sget v10, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 313
    const/16 v8, 0x402

    goto/16 :goto_0

    .restart local v2    # "height":I
    .restart local v9    # "width":I
    :cond_3
    move v3, v2

    .line 318
    goto/16 :goto_1

    .line 325
    .restart local v3    # "longLength":I
    .restart local v6    # "spotlightX":F
    .restart local v7    # "spotlightY":F
    :cond_4
    iget-object v10, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 326
    .local v1, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 327
    .local v4, "outSize":Landroid/graphics/Point;
    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 328
    iget v10, v4, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    int-to-float v11, v3

    div-float v6, v10, v11

    .line 329
    iget v10, v4, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    int-to-float v11, v3

    div-float v7, v10, v11

    goto/16 :goto_2

    .line 334
    .end local v1    # "display":Landroid/view/Display;
    .end local v4    # "outSize":Landroid/graphics/Point;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    :cond_5
    const-string v10, "com.sed.android.gallery3d.CROP_SEC_ONLY"

    goto/16 :goto_3

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    goto :goto_6
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v7, 0x7f100002

    const/16 v6, 0x403

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 273
    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    if-ne p2, v4, :cond_1

    .line 274
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 275
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 276
    .local v2, "uri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->makeIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 277
    .local v1, "request":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 279
    const/16 v3, 0x403

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    .end local v1    # "request":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 280
    .restart local v1    # "request":Landroid/content/Intent;
    .restart local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    invoke-static {v3, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 282
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    invoke-static {v3, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 284
    const-string v3, "HomescreenWallpaperOptionsDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher does not have the permission to launch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 290
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "request":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    if-ne p1, v6, :cond_2

    if-ne p2, v4, :cond_2

    .line 291
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isResultSuccess:Z

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->dismiss()V

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x4

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 83
    .local v1, "c":Landroid/content/Context;
    iput-object v1, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    .line 84
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher2/Launcher;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 85
    const v4, 0x7f030027

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 87
    .local v3, "layout":Landroid/view/View;
    const v4, 0x7f0f005f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llDefaultImage:Landroid/widget/LinearLayout;

    .line 88
    const v4, 0x7f0f0062

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llMoreImage:Landroid/widget/LinearLayout;

    .line 89
    const v4, 0x7f0f0065

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLiveWallpaper:Landroid/widget/LinearLayout;

    .line 90
    const v4, 0x7f0f0068

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llKeyword:Landroid/widget/LinearLayout;

    .line 91
    const v4, 0x7f0f006c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLocationWeather:Landroid/widget/LinearLayout;

    .line 92
    const v4, 0x7f0f006f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llPhotoSlide:Landroid/widget/LinearLayout;

    .line 93
    const v4, 0x7f0f006b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llBottomContainer:Landroid/widget/LinearLayout;

    .line 94
    const v4, 0x7f0f0069

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->ivKeyword:Landroid/widget/ImageView;

    .line 95
    const v4, 0x7f0f006d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->ivLocationWeather:Landroid/widget/ImageView;

    .line 96
    const v4, 0x7f0f0070

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->ivPhotoSlide:Landroid/widget/ImageView;

    .line 98
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->ivKeyword:Landroid/widget/ImageView;

    const-string v5, "com.samsung.android.keyguardwallpaperupdator"

    invoke-direct {p0, v5}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->ivLocationWeather:Landroid/widget/ImageView;

    const-string v5, "com.yahoo.mobile.client.android.liveweather"

    invoke-direct {p0, v5}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->ivPhotoSlide:Landroid/widget/ImageView;

    const-string v5, "com.samsung.android.keyguardwallpaperupdator"

    invoke-direct {p0, v5}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    sget v4, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    if-ne v4, v7, :cond_0

    .line 103
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLiveWallpaper:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llBottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llKeyword:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLocationWeather:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llPhotoSlide:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v4, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 120
    const v4, 0x7f100013

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 126
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 128
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 130
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llDefaultImage:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$1;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$1;-><init>(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llMoreImage:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$2;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$2;-><init>(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLiveWallpaper:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;-><init>(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llKeyword:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$4;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$4;-><init>(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLocationWeather:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$5;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$5;-><init>(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llPhotoSlide:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$6;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$6;-><init>(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    sput-boolean v7, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isHomeScreenWallpaperDialogVisible:Z

    .line 249
    return-object v2

    .line 110
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialog":Landroid/app/Dialog;
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llKeyword:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLiveWallpaper:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLocationWeather:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llPhotoSlide:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llBottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 121
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    sget v4, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    if-ne v4, v7, :cond_2

    .line 122
    const v4, 0x7f100012

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 124
    :cond_2
    const v4, 0x7f100018

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 400
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isHomeScreenWallpaperDialogVisible:Z

    .line 401
    invoke-virtual {p0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 402
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    invoke-direct {p0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->finishHelpWallpaperGuide()V

    .line 403
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->dismissAllowingStateLoss()V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->dismiss()V

    goto :goto_0
.end method
