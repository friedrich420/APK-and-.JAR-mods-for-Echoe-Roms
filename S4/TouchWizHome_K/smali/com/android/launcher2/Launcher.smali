.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/ActivityGroup;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher2/LauncherModel$Callbacks;
.implements Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;
.implements Lcom/samsung/android/service/gesture/GestureListener;
.implements Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$14;,
        Lcom/android/launcher2/Launcher$AlwaysMicOnObserver;,
        Lcom/android/launcher2/Launcher$ActivityResultCallback;,
        Lcom/android/launcher2/Launcher$AirGestureSettingsChangeReceiver;,
        Lcom/android/launcher2/Launcher$WidgetAddInfo;,
        Lcom/android/launcher2/Launcher$TalkbackEnableIntentReceiver;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$StateAnimatorProvider;,
        Lcom/android/launcher2/Launcher$HardwareKeys;
    }
.end annotation


# static fields
.field private static final ACTION_HOME_MODE:Ljava/lang/String; = "com.android.launcher.action.HOME_MODE_CHANGE"

.field private static final ACTION_HOME_RESTORE:Ljava/lang/String; = "com.android.launcher.action.ACTION_HOME_RESTORE"

.field private static final ACTION_STATUSBAR_COLLAPSE:Ljava/lang/String; = "com.android.systemui.statusbar.COLLAPSED"

.field private static final ACTION_STATUSBAR_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field static final ADD_TOAST_POPUP_DISMISSED_KEY:Ljava/lang/String; = "add.toast.popup.dismissed.key"

.field public static CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z = false

.field public static CSCFEATURE_LAUNCHER_DISABLETILTEFFECT:Z = false

.field public static CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z = false

.field public static CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z = false

.field public static CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z = false

.field public static CSCFEATURE_LAUNCHER_THEME_ENABLE:Z = false

.field public static CSCFEATURE_LAUNCHER_USM_EXISTS:Z = false

.field private static final DEBUGGABLE:Z

.field private static final DEBUG_ADD_WIDGET_VIA_INTENT:Z = false

.field private static final DEBUG_ADD_WIDGET_VIA_INTENT_TAG:Ljava/lang/String; = "Launcher.AddWidgetViaIntent"

.field static final DISABLE_TOAST_POPUP_DISMISSED_KEY:Ljava/lang/String; = "disable.toast.popup.dismissed.key"

.field static final DUMP_STATE_PROPERTY:Ljava/lang/String; = "launcher_dump_state"

.field private static final EXTRA_HOME_VIEW_HIDDEN:Ljava/lang/String; = "extra_home_view_hidden"

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field private static final HELP_ACTIVITY_TYPE:Ljava/lang/String; = "help_activity_type"

.field public static final HELP_HUB_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.helphub.provider/help_page_status/"

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field private static final LAUNCHER_ACTION_IDLE:Ljava/lang/String; = "com.android.launcher2.IDLE"

.field public static final LAUNCHER_THEME_ACTION:Ljava/lang/String; = "com.sec.android.intent.action.THEME_CHOOSER"

.field private static final MORE_SERVICE_DOWNLOADABLE_APP_LIST_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.moreservices.moreservices"

.field private static final MORE_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.moreservices"

.field static final PREFERENCES:Ljava/lang/String; = "com.sec.android.app.launcher.prefs"

.field private static final REQUEST_CODE_UNINSTALL_PACKAGE:I = 0x6f

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final SAMSUNG_APPS_DOWNLOADABLE_APP_LIST_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps.downloadableapps.DownloadableAppsActivity"

.field private static final SAMSUNG_APPS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field public static SEC_PRODUCT_FEATURE_LAUNCHER_KITKAT_ADD_TO_HOMESCREEN_CONCEPT:Z = false

.field private static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field public static SHOW_ALL_APPS_TRANSITION_DURATION:J = 0x0L

.field private static final SYSTEMUI_TRANSPARENCY:Z = true

.field private static final TAG:Ljava/lang/String; = "Launcher"

.field public static UseLauncherHighPriority:Z = false

.field public static UseQwertyKeypad:Z = false

.field static final VIBRATE_DURATION:I = 0x23

.field static final WIDGET_RESIZE_UPDATE_PAUSE:Ljava/lang/String; = "com.sec.android.intent.action.HOME_PAUSE"

.field static final WIDGET_RESIZE_UPDATE_RESUME:Ljava/lang/String; = "com.sec.android.intent.action.HOME_RESUME"

.field public static bSupportAirMove:Z

.field public static changeWallpaperStatus:I

.field static dragstate:Lcom/android/launcher2/DragState;

.field public static isExitingFromHelp:Z

.field public static isExitingFromWallpaperActivity:Z

.field public static isHelpAppRunning:Z

.field public static isHelpIntentFired:Z

.field public static isHomescreenRestoring:Z

.field public static isMotionDialogLaunching:Z

.field public static isSystemAppDisable:Z

.field public static is_TB:Z

.field private static launcher:Lcom/android/launcher2/Launcher;

.field public static mAlwaysMicOn:Z

.field private static mEasyStateForHelpApp:Z

.field public static mIsBabyCryingEnable:I

.field public static mIsDoorbellEnable:I

.field public static mIsExpandStatusBar:Z

.field public static mNonDisableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPackageTobeDisabled:Ljava/lang/String;

.field private static mPendingIntent:Landroid/content/Intent;

.field public static mRemovableAppItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mRemovableCustomerAppItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mRemovablePreloadAppItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mTalkbackEnable:Z

.field public static sActivityOrientation:I

.field private static volatile sHelpHubAvailable:Ljava/lang/Boolean;

.field private static sHwPopupMenuShowing:Z

.field public static sInComingIntentHelpHub:Landroid/content/Intent;

.field public static sIsEditFromHome:Z

.field public static sIsFestivalModeOn:Z

.field public static sIsHeadlinesAppEnable:Z

.field private static sIsHomeEditMode:Z

.field private static sIsHomeRemoveMode:Z

.field public static sIsMagazineHomeEnable:Z

.field public static sIsSecretModeOn:Z

.field public static sIsStopped:Z

.field static sMenuBgDarkenAmountNormal:F

.field private static sPopupMenuShowing:Z

.field public static sViewLayerPaint:Landroid/graphics/Paint;

.field public static sWhichTransitionEffect:I

.field public static wasWidgetsTabShown:Z


# instance fields
.field final AUTHORITY:Ljava/lang/String;

.field final content_uri:Landroid/net/Uri;

.field private isEnteredFromMagazine:Z

.field public isFolderCreatedFromMenuButton:Z

.field private mActivityCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/launcher2/Launcher$ActivityResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityName:Landroid/content/ComponentName;

.field private final mAirGestureSettingsChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mAlwaysMicOnObserver:Landroid/database/ContentObserver;

.field private mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

.field private mAppMarketIntent:Landroid/content/Intent;

.field private mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

.field public mAttached:Z

.field private mAutoRestart:Z

.field private mBabyCryingDetector:Landroid/database/ContentObserver;

.field private mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

.field private mChangeCallAppReceiver:Lcom/android/launcher2/ChangeCallAppReceiver;

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDarkenView:Landroid/view/View;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDoorbellDetector:Landroid/database/ContentObserver;

.field private mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mExitingAllApps:Z

.field private mFactoryModeString:Ljava/lang/String;

.field private mFestivalPageManager:Lcom/android/launcher2/FestivalPageManager;

.field public mFocusState:Z

.field private mGestureListenerRegistered:Z

.field private mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

.field private mGestureServiceConnected:Z

.field private mHasMenuKey:Z

.field mHomeView:Lcom/android/launcher2/HomeView;

.field private mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

.field mInMenu:Z

.field private mIsDestroyed:Z

.field private mIsExternalHelpActivity:Z

.field private mIsFactoryMode:Z

.field private mMarketLabelName:Ljava/lang/CharSequence;

.field private mMenuButtonView:Landroid/view/View;

.field private mMenuView:Lcom/android/launcher2/MenuView;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mOnResumeNeedsLoad:Z

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPaused:Z

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

.field private mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

.field private mPrevOrientationHelp:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRemainSavedInstance:Z

.field private mRestoring:Z

.field private mResumed:Z

.field private mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

.field private mSecretPageManager:Lcom/android/launcher2/SecretPageManager;

.field private mShowEmptyPageMsg:Z

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mStateAnimatorProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$StateAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

.field private final mTalkbackEnableReceiver:Landroid/content/BroadcastReceiver;

.field private mTransitionAnimator:Landroid/animation/Animator;

.field private mTransitioningToAllApps:Z

.field private mWidgetAddInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$WidgetAddInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    sput-object v1, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    .line 187
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    .line 202
    sput-boolean v2, Lcom/android/launcher2/Launcher;->isHomescreenRestoring:Z

    .line 208
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    .line 209
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsMagazineHomeEnable:Z

    .line 210
    sput-boolean v2, Lcom/android/launcher2/Launcher;->mIsExpandStatusBar:Z

    .line 213
    sput-boolean v3, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->mRemovablePreloadAppItems:Ljava/util/ArrayList;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->mRemovableCustomerAppItems:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->mRemovableAppItems:Ljava/util/ArrayList;

    .line 221
    const-string v0, ""

    sput-object v0, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    .line 225
    sput-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    .line 226
    sput-boolean v2, Lcom/android/launcher2/Launcher;->isHelpIntentFired:Z

    .line 227
    sput-boolean v2, Lcom/android/launcher2/Launcher;->wasWidgetsTabShown:Z

    .line 228
    sput-boolean v2, Lcom/android/launcher2/Launcher;->isExitingFromWallpaperActivity:Z

    .line 229
    sput-boolean v2, Lcom/android/launcher2/Launcher;->isMotionDialogLaunching:Z

    .line 230
    const/4 v0, -0x1

    sput v0, Lcom/android/launcher2/Launcher;->changeWallpaperStatus:I

    .line 256
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 257
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 293
    sput-object v1, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    .line 294
    sput-boolean v2, Lcom/android/launcher2/Launcher;->mEasyStateForHelpApp:Z

    .line 295
    const-wide/16 v0, 0x14a

    sput-wide v0, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    .line 307
    sput-boolean v2, Lcom/android/launcher2/Launcher;->is_TB:Z

    .line 328
    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    .line 329
    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLETILTEFFECT:Z

    .line 330
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    .line 331
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    .line 332
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LAUNCHER_BOOT_HIGHPRIORITY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    .line 334
    sput-boolean v2, Lcom/android/launcher2/Launcher;->UseQwertyKeypad:Z

    .line 337
    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    .line 338
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    .line 340
    sput-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    .line 341
    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z

    .line 343
    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_USM_EXISTS:Z

    .line 344
    sput-boolean v2, Lcom/android/launcher2/Launcher;->isExitingFromHelp:Z

    .line 347
    sput-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    .line 348
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    .line 355
    sput-boolean v2, Lcom/android/launcher2/Launcher;->SEC_PRODUCT_FEATURE_LAUNCHER_KITKAT_ADD_TO_HOMESCREEN_CONCEPT:Z

    .line 356
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    .line 363
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sIsStopped:Z

    .line 365
    sput v2, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    .line 368
    sput v2, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    .line 373
    sput-boolean v3, Lcom/android/launcher2/Launcher;->mAlwaysMicOn:Z

    .line 374
    sput v2, Lcom/android/launcher2/Launcher;->mIsBabyCryingEnable:I

    .line 375
    sput v2, Lcom/android/launcher2/Launcher;->mIsDoorbellEnable:I

    .line 376
    sput-boolean v2, Lcom/android/launcher2/Launcher;->mTalkbackEnable:Z

    .line 378
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    .line 379
    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 380
    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4079
    sput-boolean v2, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 385
    invoke-direct {p0, v1}, Landroid/app/ActivityGroup;-><init>(Z)V

    .line 211
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    .line 231
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIsExternalHelpActivity:Z

    .line 236
    new-instance v0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    new-instance v0, Lcom/android/launcher2/Launcher$TalkbackEnableIntentReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher2/Launcher$TalkbackEnableIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mTalkbackEnableReceiver:Landroid/content/BroadcastReceiver;

    .line 245
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 246
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mRemainSavedInstance:Z

    .line 252
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 260
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 263
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    .line 265
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    .line 266
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 269
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mResumed:Z

    .line 322
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mActivityCallbacks:Landroid/util/SparseArray;

    .line 352
    iput v1, p0, Lcom/android/launcher2/Launcher;->mPrevOrientationHelp:I

    .line 364
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->isFolderCreatedFromMenuButton:Z

    .line 370
    const-string v0, "content.alwaysmicon.provider"

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->AUTHORITY:Ljava/lang/String;

    .line 371
    const-string v0, "content://content.alwaysmicon.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->content_uri:Landroid/net/Uri;

    .line 372
    new-instance v0, Lcom/android/launcher2/Launcher$AlwaysMicOnObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$AlwaysMicOnObserver;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mAlwaysMicOnObserver:Landroid/database/ContentObserver;

    .line 1155
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    .line 1243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    .line 1255
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 1418
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    .line 2179
    new-instance v0, Lcom/android/launcher2/Launcher$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$7;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    .line 4077
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mGestureListenerRegistered:Z

    .line 4078
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mGestureServiceConnected:Z

    .line 4080
    new-instance v0, Lcom/android/launcher2/Launcher$AirGestureSettingsChangeReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher2/Launcher$AirGestureSettingsChangeReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mAirGestureSettingsChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 4869
    new-instance v0, Lcom/android/launcher2/Launcher$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$12;-><init>(Lcom/android/launcher2/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mBabyCryingDetector:Landroid/database/ContentObserver;

    .line 4878
    new-instance v0, Lcom/android/launcher2/Launcher$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Launcher$13;-><init>(Lcom/android/launcher2/Launcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mDoorbellDetector:Landroid/database/ContentObserver;

    .line 386
    sput-object p0, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    .line 387
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher ctor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {}, Lcom/android/launcher2/ShadowStyleable;->init()V

    .line 389
    return-void
.end method

.method private AllWidgetCount()I
    .locals 2

    .prologue
    .line 2217
    new-instance v0, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    invoke-direct {v1, p0}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-direct {v1, p0}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;

    invoke-direct {v1, p0}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 1767
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1769
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 166
    sget-boolean v0, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->bindAndUnBindGestureService()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/Launcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishShowAllApps()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishExitAllApps()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/Launcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->AllWidgetCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 166
    sput-boolean p0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    return p0
.end method

.method private addNonDisableAppToList()V
    .locals 7

    .prologue
    .line 4496
    const-string v0, "nondisableapps"

    .line 4497
    .local v0, "TAG_APPORDER":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4498
    .local v4, "resParser":Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x0

    .line 4499
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 4501
    :try_start_0
    const-string v5, "nondisableapps"

    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4509
    :goto_0
    move-object v3, v4

    .line 4511
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 4512
    .local v2, "eventType":I
    :goto_1
    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    .line 4513
    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    .line 4514
    sget-object v5, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4516
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    goto :goto_1

    .line 4502
    .end local v2    # "eventType":I
    :catch_0
    move-exception v1

    .line 4504
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 4505
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 4507
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 4518
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 4520
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 4526
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_2
    return-void

    .line 4521
    :catch_3
    move-exception v1

    .line 4523
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private addNonDisableAppToListCsc()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 4529
    const/4 v6, 0x0

    .line 4530
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v0, 0x0

    .line 4533
    .local v0, "cscFile":Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v7, "/system/csc/default_disableapp_skiplist.xml"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4535
    .local v2, "cscFileChk":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 4536
    new-instance v1, Ljava/io/FileReader;

    const-string v7, "/system/csc/default_disableapp_skiplist.xml"

    invoke-direct {v1, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4537
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .local v1, "cscFile":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 4538
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 4539
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 4540
    invoke-interface {v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 4542
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 4543
    .local v4, "eventType":I
    :goto_0
    if-eq v4, v12, :cond_1

    .line 4544
    const/4 v7, 0x4

    if-ne v4, v7, :cond_0

    .line 4545
    sget-object v7, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4547
    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 4557
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .end local v4    # "eventType":I
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    :cond_2
    if-eqz v0, :cond_3

    .line 4559
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 4564
    .end local v2    # "cscFileChk":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 4550
    :catch_0
    move-exception v3

    .line 4552
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4557
    if-eqz v0, :cond_3

    .line 4559
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 4560
    :catch_1
    move-exception v7

    goto :goto_1

    .line 4553
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v3

    .line 4555
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4557
    if-eqz v0, :cond_3

    .line 4559
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 4560
    :catch_3
    move-exception v7

    goto :goto_1

    .line 4557
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v0, :cond_4

    .line 4559
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 4561
    :cond_4
    :goto_5
    throw v7

    .line 4560
    .restart local v2    # "cscFileChk":Ljava/io/File;
    :catch_4
    move-exception v7

    goto :goto_1

    .end local v2    # "cscFileChk":Ljava/io/File;
    :catch_5
    move-exception v8

    goto :goto_5

    .line 4557
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFileChk":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    goto :goto_4

    .line 4553
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    goto :goto_3

    .line 4550
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private addRemovableAppToList()V
    .locals 13

    .prologue
    .line 4611
    const/4 v0, 0x0

    .line 4612
    .local v0, "appIdList":Ljava/lang/String;
    const/4 v7, 0x0

    .line 4613
    .local v7, "instream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 4614
    .local v5, "inputreader":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 4616
    .local v1, "buffreader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/File;

    const-string v11, "/system/etc/removable_preload.txt"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4617
    .local v10, "mFile":Ljava/io/File;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4618
    .end local v7    # "instream":Ljava/io/InputStream;
    .local v8, "instream":Ljava/io/InputStream;
    if-eqz v8, :cond_5

    .line 4619
    :try_start_1
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4620
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .local v6, "inputreader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4623
    .end local v1    # "buffreader":Ljava/io/BufferedReader;
    .local v2, "buffreader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 4624
    const-string v11, "name="

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4625
    const-string v11, "name=\'"

    const-string v12, ""

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4626
    const-string v11, "\'"

    const-string v12, ""

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4627
    sget-object v11, Lcom/android/launcher2/Launcher;->mRemovableAppItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 4631
    .end local v9    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v2

    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .restart local v1    # "buffreader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .line 4633
    .end local v8    # "instream":Ljava/io/InputStream;
    .end local v10    # "mFile":Ljava/io/File;
    .local v4, "e1":Ljava/io/FileNotFoundException;
    .restart local v7    # "instream":Ljava/io/InputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4640
    if-eqz v7, :cond_1

    .line 4641
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 4642
    :cond_1
    if-eqz v5, :cond_2

    .line 4643
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 4644
    :cond_2
    if-eqz v1, :cond_3

    .line 4645
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 4651
    .end local v4    # "e1":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_2
    return-void

    .end local v1    # "buffreader":Ljava/io/BufferedReader;
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/InputStream;
    .restart local v2    # "buffreader":Ljava/io/BufferedReader;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "instream":Ljava/io/InputStream;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v10    # "mFile":Ljava/io/File;
    :cond_4
    move-object v1, v2

    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .restart local v1    # "buffreader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 4640
    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .end local v9    # "line":Ljava/lang/String;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    :cond_5
    if-eqz v8, :cond_6

    .line 4641
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 4642
    :cond_6
    if-eqz v5, :cond_7

    .line 4643
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 4644
    :cond_7
    if-eqz v1, :cond_8

    .line 4645
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_8
    move-object v7, v8

    .line 4649
    .end local v8    # "instream":Ljava/io/InputStream;
    .restart local v7    # "instream":Ljava/io/InputStream;
    goto :goto_2

    .line 4646
    .end local v7    # "instream":Ljava/io/InputStream;
    .restart local v8    # "instream":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 4648
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 4650
    .end local v8    # "instream":Ljava/io/InputStream;
    .restart local v7    # "instream":Ljava/io/InputStream;
    goto :goto_2

    .line 4646
    .end local v3    # "e":Ljava/io/IOException;
    .end local v10    # "mFile":Ljava/io/File;
    .restart local v4    # "e1":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 4648
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 4634
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e1":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v3

    .line 4636
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4640
    if-eqz v7, :cond_9

    .line 4641
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 4642
    :cond_9
    if-eqz v5, :cond_a

    .line 4643
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 4644
    :cond_a
    if-eqz v1, :cond_3

    .line 4645
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 4646
    :catch_4
    move-exception v3

    .line 4648
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 4639
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 4640
    :goto_4
    if-eqz v7, :cond_b

    .line 4641
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 4642
    :cond_b
    if-eqz v5, :cond_c

    .line 4643
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 4644
    :cond_c
    if-eqz v1, :cond_d

    .line 4645
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 4649
    :cond_d
    :goto_5
    throw v11

    .line 4646
    :catch_5
    move-exception v3

    .line 4648
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 4639
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "instream":Ljava/io/InputStream;
    .restart local v8    # "instream":Ljava/io/InputStream;
    .restart local v10    # "mFile":Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "instream":Ljava/io/InputStream;
    .restart local v7    # "instream":Ljava/io/InputStream;
    goto :goto_4

    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/InputStream;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "instream":Ljava/io/InputStream;
    :catchall_2
    move-exception v11

    move-object v5, v6

    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "instream":Ljava/io/InputStream;
    .restart local v7    # "instream":Ljava/io/InputStream;
    goto :goto_4

    .end local v1    # "buffreader":Ljava/io/BufferedReader;
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/InputStream;
    .restart local v2    # "buffreader":Ljava/io/BufferedReader;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "instream":Ljava/io/InputStream;
    :catchall_3
    move-exception v11

    move-object v1, v2

    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .restart local v1    # "buffreader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "instream":Ljava/io/InputStream;
    .restart local v7    # "instream":Ljava/io/InputStream;
    goto :goto_4

    .line 4634
    .end local v7    # "instream":Ljava/io/InputStream;
    .restart local v8    # "instream":Ljava/io/InputStream;
    :catch_6
    move-exception v3

    move-object v7, v8

    .end local v8    # "instream":Ljava/io/InputStream;
    .restart local v7    # "instream":Ljava/io/InputStream;
    goto :goto_3

    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/InputStream;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "instream":Ljava/io/InputStream;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "instream":Ljava/io/InputStream;
    .restart local v7    # "instream":Ljava/io/InputStream;
    goto :goto_3

    .end local v1    # "buffreader":Ljava/io/BufferedReader;
    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/InputStream;
    .restart local v2    # "buffreader":Ljava/io/BufferedReader;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "instream":Ljava/io/InputStream;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2    # "buffreader":Ljava/io/BufferedReader;
    .restart local v1    # "buffreader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "instream":Ljava/io/InputStream;
    .restart local v7    # "instream":Ljava/io/InputStream;
    goto :goto_3

    .line 4631
    .end local v10    # "mFile":Ljava/io/File;
    :catch_9
    move-exception v4

    goto :goto_1

    .end local v7    # "instream":Ljava/io/InputStream;
    .restart local v8    # "instream":Ljava/io/InputStream;
    .restart local v10    # "mFile":Ljava/io/File;
    :catch_a
    move-exception v4

    move-object v7, v8

    .end local v8    # "instream":Ljava/io/InputStream;
    .restart local v7    # "instream":Ljava/io/InputStream;
    goto :goto_1

    .end local v5    # "inputreader":Ljava/io/InputStreamReader;
    .end local v7    # "instream":Ljava/io/InputStream;
    .restart local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v8    # "instream":Ljava/io/InputStream;
    :catch_b
    move-exception v4

    move-object v5, v6

    .end local v6    # "inputreader":Ljava/io/InputStreamReader;
    .restart local v5    # "inputreader":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "instream":Ljava/io/InputStream;
    .restart local v7    # "instream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private addRemovableCustomerAppToList()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 4654
    const-string v0, "removablecustomerapps"

    .line 4655
    .local v0, "TAG_APPORDER":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4656
    .local v8, "resParser":Landroid/content/res/XmlResourceParser;
    const/4 v7, 0x0

    .line 4657
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    .line 4660
    .local v1, "cscFile":Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/csc/default_removablecustomerapp_list.xml"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4662
    .local v3, "cscFileChk":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    .line 4663
    new-instance v2, Ljava/io/FileReader;

    const-string v9, "/system/csc/default_removablecustomerapp_list.xml"

    invoke-direct {v2, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4664
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .local v2, "cscFile":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 4665
    .local v6, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 4666
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 4667
    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 4674
    .end local v2    # "cscFile":Ljava/io/FileReader;
    .end local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    :goto_0
    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 4675
    .local v5, "eventType":I
    :goto_1
    if-eq v5, v14, :cond_2

    .line 4676
    const/4 v9, 0x4

    if-ne v5, v9, :cond_0

    .line 4677
    sget-object v9, Lcom/android/launcher2/Launcher;->mRemovableCustomerAppItems:Ljava/util/ArrayList;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4679
    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_1

    .line 4669
    .end local v5    # "eventType":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 4670
    const-string v9, "removablecustomerapps"

    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4671
    move-object v7, v8

    goto :goto_0

    .line 4688
    .restart local v5    # "eventType":I
    :cond_2
    if-eqz v1, :cond_3

    .line 4690
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 4695
    .end local v3    # "cscFileChk":Ljava/io/File;
    .end local v5    # "eventType":I
    :cond_3
    :goto_2
    return-void

    .line 4681
    :catch_0
    move-exception v4

    .line 4683
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4688
    if-eqz v1, :cond_3

    .line 4690
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 4691
    :catch_1
    move-exception v9

    goto :goto_2

    .line 4684
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v4

    .line 4686
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4688
    if-eqz v1, :cond_3

    .line 4690
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 4691
    :catch_3
    move-exception v9

    goto :goto_2

    .line 4688
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v1, :cond_4

    .line 4690
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 4692
    :cond_4
    :goto_6
    throw v9

    .line 4691
    .restart local v3    # "cscFileChk":Ljava/io/File;
    .restart local v5    # "eventType":I
    :catch_4
    move-exception v9

    goto :goto_2

    .end local v3    # "cscFileChk":Ljava/io/File;
    .end local v5    # "eventType":I
    :catch_5
    move-exception v10

    goto :goto_6

    .line 4688
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v3    # "cscFileChk":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    goto :goto_5

    .line 4684
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    :catch_6
    move-exception v4

    move-object v1, v2

    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    goto :goto_4

    .line 4681
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    :catch_7
    move-exception v4

    move-object v1, v2

    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    goto :goto_3
.end method

.method private addRemovablePreloadAppToList()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 4567
    const-string v0, "removablepreloadapps"

    .line 4568
    .local v0, "TAG_APPORDER":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4569
    .local v8, "resParser":Landroid/content/res/XmlResourceParser;
    const/4 v7, 0x0

    .line 4570
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    .line 4573
    .local v1, "cscFile":Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/csc/default_removablepreloadapp_list.xml"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4575
    .local v3, "cscFileChk":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    .line 4576
    new-instance v2, Ljava/io/FileReader;

    const-string v9, "/system/csc/default_removablepreloadapp_list.xml"

    invoke-direct {v2, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4577
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .local v2, "cscFile":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 4578
    .local v6, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 4579
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 4580
    invoke-interface {v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 4587
    .end local v2    # "cscFile":Ljava/io/FileReader;
    .end local v6    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    :goto_0
    :try_start_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 4588
    .local v5, "eventType":I
    :goto_1
    if-eq v5, v14, :cond_2

    .line 4589
    const/4 v9, 0x4

    if-ne v5, v9, :cond_0

    .line 4590
    sget-object v9, Lcom/android/launcher2/Launcher;->mRemovablePreloadAppItems:Ljava/util/ArrayList;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4592
    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_1

    .line 4582
    .end local v5    # "eventType":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 4583
    const-string v9, "removablepreloadapps"

    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4584
    move-object v7, v8

    goto :goto_0

    .line 4601
    .restart local v5    # "eventType":I
    :cond_2
    if-eqz v1, :cond_3

    .line 4603
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 4608
    .end local v3    # "cscFileChk":Ljava/io/File;
    .end local v5    # "eventType":I
    :cond_3
    :goto_2
    return-void

    .line 4594
    :catch_0
    move-exception v4

    .line 4596
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4601
    if-eqz v1, :cond_3

    .line 4603
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 4604
    :catch_1
    move-exception v9

    goto :goto_2

    .line 4597
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v4

    .line 4599
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4601
    if-eqz v1, :cond_3

    .line 4603
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 4604
    :catch_3
    move-exception v9

    goto :goto_2

    .line 4601
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v1, :cond_4

    .line 4603
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 4605
    :cond_4
    :goto_6
    throw v9

    .line 4604
    .restart local v3    # "cscFileChk":Ljava/io/File;
    .restart local v5    # "eventType":I
    :catch_4
    move-exception v9

    goto :goto_2

    .end local v3    # "cscFileChk":Ljava/io/File;
    .end local v5    # "eventType":I
    :catch_5
    move-exception v10

    goto :goto_6

    .line 4601
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v3    # "cscFileChk":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    goto :goto_5

    .line 4597
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    :catch_6
    move-exception v4

    move-object v1, v2

    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    goto :goto_4

    .line 4594
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    :catch_7
    move-exception v4

    move-object v1, v2

    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    goto :goto_3
.end method

.method private addToHelpMenuOption(Landroid/view/MenuItem;)V
    .locals 6
    .param p1, "homeHelp"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3119
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "easy_mode_switch"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/launcher2/Launcher;->mEasyStateForHelpApp:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3126
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isHelpAppAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3128
    sget-boolean v1, Lcom/android/launcher2/Launcher;->mEasyStateForHelpApp:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3130
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3136
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v1, v3

    .line 3119
    goto :goto_0

    .line 3120
    :catch_0
    move-exception v0

    .line 3122
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v1, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stuck to help app because of indicated Easymode now   Error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3133
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private bindAndUnBindGestureService()V
    .locals 4

    .prologue
    .line 4182
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAirMoveOninSettings()Z

    move-result v0

    .line 4183
    .local v0, "enable":Z
    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 4184
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAndUnBindGestureService() isEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    :cond_0
    if-eqz v0, :cond_2

    .line 4188
    new-instance v1, Lcom/samsung/android/service/gesture/GestureManager;

    invoke-direct {v1, p0, p0}, Lcom/samsung/android/service/gesture/GestureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    .line 4196
    :cond_1
    :goto_0
    return-void

    .line 4189
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-eqz v1, :cond_1

    .line 4191
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mGestureListenerRegistered:Z

    if-eqz v1, :cond_3

    .line 4192
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v2, "ir_provider"

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    .line 4193
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    invoke-virtual {v1}, Lcom/samsung/android/service/gesture/GestureManager;->unbindFromService()V

    .line 4194
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/Launcher;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    goto :goto_0
.end method

.method private buildWidgetMap(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1084
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    .line 1085
    .local v4, "ws":Lcom/android/launcher2/Workspace;
    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    .line 1088
    .local v3, "screenCount":I
    const/4 v2, 0x0

    .local v2, "screen":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1089
    invoke-virtual {v4, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1090
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 1092
    .local v1, "clc":Lcom/android/launcher2/CellLayoutChildren;
    new-instance v5, Lcom/android/launcher2/Launcher$2;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher2/Launcher$2;-><init>(Lcom/android/launcher2/Launcher;Ljava/util/HashMap;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->iterateBaseItems(Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;Ljava/lang/Object;)V

    .line 1088
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1106
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v1    # "clc":Lcom/android/launcher2/CellLayoutChildren;
    :cond_0
    return-void
.end method

.method private cancelAppFolderRemoveDialog()V
    .locals 3

    .prologue
    .line 2442
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 2443
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 2444
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    invoke-static {v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->getCurrentInstance(Landroid/app/FragmentManager;)Lcom/android/launcher2/AppFolderRemoveDialog;

    move-result-object v0

    .line 2445
    .local v0, "dialog":Lcom/android/launcher2/AppFolderRemoveDialog;
    if-eqz v0, :cond_0

    .line 2446
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->dismiss()V

    .line 2447
    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2448
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->cancelDelete()V

    .line 2449
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 2451
    :cond_0
    return-void
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2124
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2125
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2126
    return-void
.end method

.method private exitWidgetResizeMode()V
    .locals 2

    .prologue
    .line 2605
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 2606
    .local v0, "workspace":Lcom/android/launcher2/Workspace;
    if-eqz v0, :cond_0

    .line 2607
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 2608
    :cond_0
    return-void
.end method

.method private fillInHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/Launcher$WidgetAddInfo;[I)V
    .locals 4
    .param p1, "homeInfo"    # Lcom/android/launcher2/HomeItem;
    .param p2, "addInfo"    # Lcom/android/launcher2/Launcher$WidgetAddInfo;
    .param p3, "span"    # [I

    .prologue
    const/4 v1, -0x1

    .line 950
    iget v0, p2, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    :goto_0
    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 951
    iget v0, p2, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    aget v0, p3, v0

    :goto_1
    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 952
    const-wide/16 v2, -0x64

    iput-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    .line 953
    iput v1, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 954
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 955
    return-void

    :cond_0
    move v0, v1

    .line 950
    goto :goto_0

    :cond_1
    move v0, v1

    .line 951
    goto :goto_1
.end method

.method private finishExitAllApps()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1551
    iput-boolean v6, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    .line 1552
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->onFinishExitAllApps()V

    .line 1553
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1554
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 1555
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 1556
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    .line 1557
    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v4, :cond_1

    .line 1558
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1567
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1568
    iput-boolean v6, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 1569
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1570
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_0

    const-string v4, "create_folder"

    sget-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    if-eqz v4, :cond_0

    .line 1573
    const/4 v2, 0x0

    .line 1574
    .local v2, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v2, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v2    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-direct {v2, p0}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    .line 1575
    .restart local v2    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v2, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v2    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v2}, Lcom/android/launcher2/guide/CreateFolderGuider;->showHelpDialog_step3()V

    .line 1578
    :cond_0
    return-void

    .line 1561
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1562
    :catch_0
    move-exception v1

    .line 1563
    .local v1, "illegalStateException":Ljava/lang/IllegalStateException;
    const-string v4, "Launcher"

    const-string v5, "IllegalStateException should not happen in normal use but may be in stress testing"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private finishShowAllApps()V
    .locals 6

    .prologue
    .line 1396
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1397
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    .line 1398
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/HomeView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 1399
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1400
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 1401
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1402
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 1404
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    if-eqz v2, :cond_1

    .line 1416
    :goto_0
    return-void

    .line 1406
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v2, :cond_2

    .line 1407
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1410
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1411
    :catch_0
    move-exception v0

    .line 1412
    .local v0, "illegalStateException":Ljava/lang/IllegalStateException;
    const-string v2, "Launcher"

    const-string v3, "IllegalStateException should not happen in normal use but may be in stress testing"

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "commit"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/launcher2/Launcher;
    .locals 3

    .prologue
    .line 392
    sget-object v1, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    if-nez v1, :cond_0

    .line 393
    const-string v1, "Launcher"

    const-string v2, "Please Call me after onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 395
    .local v0, "nullPointerException":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 397
    :cond_0
    sget-object v1, Lcom/android/launcher2/Launcher;->launcher:Lcom/android/launcher2/Launcher;

    return-object v1
.end method

.method private getLaunchIntentForHelpHub()Landroid/content/Intent;
    .locals 7

    .prologue
    const/16 v6, 0x258

    .line 2551
    const/4 v2, 0x0

    .line 2552
    .local v2, "intent":Landroid/content/Intent;
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mIsExternalHelpActivity:Z

    if-eqz v5, :cond_7

    .line 2554
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.helphub.HELP"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2555
    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-lt v5, v6, :cond_1

    .line 2556
    const-string v5, "helphub:section"

    const-string v6, "homescreen"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2570
    :goto_0
    const/high16 v5, 0x10200000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2571
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/Launcher;->mIsExternalHelpActivity:Z

    move-object v2, v3

    .line 2595
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-object v2

    .line 2559
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    .line 2560
    .local v1, "homescreenItem":Ljava/lang/String;
    sget-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v6, "addapps"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v6, "add_widgets"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2561
    :cond_2
    const-string v1, "homescreen_using_home"

    .line 2566
    :cond_3
    :goto_2
    if-nez v1, :cond_6

    const-string v5, "helphub:section"

    const-string v6, "homescreen"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2568
    :goto_3
    const-string v5, "isIntentFromLauncher"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2573
    .end local v1    # "homescreenItem":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 2574
    .end local v3    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    :goto_4
    sget-boolean v5, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    .line 2575
    const-string v5, "Launcher"

    const-string v6, "Unable to launch  intent= com.samsung.helphub.HELP"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2562
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "homescreenItem":Ljava/lang/String;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_4
    :try_start_2
    sget-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v6, "create_folder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2563
    const-string v1, "homescreen_create_folder"

    goto :goto_2

    .line 2564
    :cond_5
    sget-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v6, "change_wallpaper"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2565
    const-string v1, "homescreen_change_wallpaper"

    goto :goto_2

    .line 2567
    :cond_6
    const-string v5, "helphub:item"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 2581
    .end local v1    # "homescreenItem":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_7
    :try_start_3
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-lt v5, v6, :cond_8

    .line 2582
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2583
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "com.samsung.helphub"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2584
    goto :goto_1

    .line 2585
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2586
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :try_start_4
    const-string v5, "com.samsung.helphub"

    const-string v6, "com.samsung.helphub.HelpHubSecondDepthActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2587
    const/high16 v5, 0x10200000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v2, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 2590
    :catch_1
    move-exception v0

    .line 2591
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_5
    sget-boolean v5, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    .line 2592
    const-string v5, "Launcher"

    const-string v6, "Unable to launch HelpHub Activity"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2590
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_5

    .line 2573
    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method public static getStatusBarHeight(Landroid/content/res/Resources;)I
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 4824
    const/4 v1, 0x0

    .line 4825
    .local v1, "result":I
    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4826
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 4827
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4829
    :cond_0
    return v1
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 4407
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4408
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 4410
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4415
    :goto_0
    return v1

    .line 4411
    :catch_0
    move-exception v0

    .line 4412
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 4413
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isFactoryMode()Z
    .locals 3

    .prologue
    .line 3387
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3388
    const-string v0, "/efs/FactoryApp/factorymode"

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    .line 3389
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    .line 3390
    sget-boolean v0, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 3391
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFactoryMode string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFactoryMode returns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    return v0

    .line 3389
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFactorySim()Z
    .locals 6

    .prologue
    .line 3345
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3371
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 3372
    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 3373
    .local v1, "imsi":Ljava/lang/String;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFactorySim() imsi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    :cond_0
    if-eqz v1, :cond_2

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3375
    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_1

    const-string v3, "Launcher"

    const-string v4, "isFactorySim() : true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    :cond_1
    const/4 v3, 0x1

    .line 3380
    :goto_0
    return v3

    .line 3379
    :cond_2
    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_3

    const-string v3, "Launcher"

    const-string v4, "isFactorySim() : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3380
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static isHomeEditMode()Z
    .locals 1

    .prologue
    .line 4050
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    return v0
.end method

.method static isHomeRemoveMode()Z
    .locals 1

    .prologue
    .line 4060
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    return v0
.end method

.method public static isInValidDragState(Landroid/view/DragEvent;)Z
    .locals 3
    .param p0, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4834
    if-nez p0, :cond_1

    .line 4839
    :cond_0
    :goto_0
    return v0

    .line 4836
    :cond_1
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sDNDBinding:Z

    if-eqz v2, :cond_3

    .line 4837
    invoke-virtual {p0}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/DragState;

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 4839
    :cond_3
    invoke-virtual {p0}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/DragState;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isKnoxLauncher()Z
    .locals 3

    .prologue
    .line 928
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 930
    .local v0, "myUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 931
    const/4 v1, 0x1

    .line 933
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOptionMenuShowing()Z
    .locals 1

    .prologue
    .line 3750
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPopupMenuShowing()Z
    .locals 1

    .prologue
    .line 3746
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    return v0
.end method

.method private static isPropertyEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 401
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static isWifiOnly(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 4482
    const/4 v2, 0x0

    .line 4484
    .local v2, "retVal":Z
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 4486
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 4487
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 4488
    .local v1, "ni":Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    if-eqz v4, :cond_0

    .line 4489
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x1

    .line 4492
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .restart local v1    # "ni":Landroid/net/NetworkInfo;
    :cond_1
    move v2, v3

    .line 4489
    goto :goto_0
.end method

.method private processAsAndroidAppWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z
    .locals 8
    .param p1, "info"    # Lcom/android/launcher2/Launcher$WidgetAddInfo;

    .prologue
    const/4 v7, 0x0

    .line 1022
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1027
    .local v3, "wdgtInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1031
    new-instance v2, Lcom/android/launcher2/HomePendingWidget;

    invoke-direct {v2, v3, v7, v7}, Lcom/android/launcher2/HomePendingWidget;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1032
    .local v2, "w":Lcom/android/launcher2/HomePendingWidget;
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget v5, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iget v6, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForAppWidget(Landroid/appwidget/AppWidgetProviderInfo;II[I)[I

    move-result-object v1

    .line 1033
    .local v1, "span":[I
    invoke-direct {p0, v2, p1, v1}, Lcom/android/launcher2/Launcher;->fillInHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/Launcher$WidgetAddInfo;[I)V

    .line 1034
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/HomeView;->addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;)V

    .line 1035
    const/4 v4, 0x1

    .line 1038
    .end local v1    # "span":[I
    .end local v2    # "w":Lcom/android/launcher2/HomePendingWidget;
    .end local v3    # "wdgtInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private processAsSamsungSurfaceWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z
    .locals 7
    .param p1, "info"    # Lcom/android/launcher2/Launcher$WidgetAddInfo;

    .prologue
    const/4 v6, 0x0

    .line 988
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    iget-object v4, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v2

    .line 989
    .local v2, "widgetInfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    if-nez v2, :cond_0

    .line 990
    const/4 v3, 0x0

    .line 1001
    :goto_0
    return v3

    .line 997
    :cond_0
    new-instance v1, Lcom/android/launcher2/HomePendingSurfaceWidget;

    invoke-direct {v1, v2}, Lcom/android/launcher2/HomePendingSurfaceWidget;-><init>(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V

    .line 998
    .local v1, "w":Lcom/android/launcher2/HomePendingSurfaceWidget;
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget v4, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iget v5, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForSurfaceWidget(II[I)[I

    move-result-object v0

    .line 999
    .local v0, "span":[I
    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher2/Launcher;->fillInHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/Launcher$WidgetAddInfo;[I)V

    .line 1000
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/HomeView;->addSurfaceWidgetFromDrop(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z

    .line 1001
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private processAsSamsungWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z
    .locals 9
    .param p1, "info"    # Lcom/android/launcher2/Launcher$WidgetAddInfo;

    .prologue
    const/4 v5, 0x0

    .line 962
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    iget-object v1, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher2/SamsungWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/launcher2/SamsungWidgetProviderInfo;

    move-result-object v8

    .line 963
    .local v8, "widgetInfo":Lcom/android/launcher2/SamsungWidgetProviderInfo;
    if-nez v8, :cond_0

    .line 964
    const/4 v0, 0x0

    .line 974
    :goto_0
    return v0

    .line 970
    :cond_0
    new-instance v7, Lcom/android/launcher2/HomePendingSamsungWidget;

    invoke-direct {v7, v8}, Lcom/android/launcher2/HomePendingSamsungWidget;-><init>(Lcom/android/launcher2/SamsungWidgetProviderInfo;)V

    .line 971
    .local v7, "w":Lcom/android/launcher2/HomePendingSamsungWidget;
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget v1, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iget v2, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    iget v3, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iget v4, p1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForSamsungWidget(IIII[I)[I

    move-result-object v6

    .line 972
    .local v6, "span":[I
    invoke-direct {p0, v7, p1, v6}, Lcom/android/launcher2/Launcher;->fillInHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/Launcher$WidgetAddInfo;[I)V

    .line 973
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v7}, Lcom/android/launcher2/HomeView;->addSamsungWidgetFromDrop(Lcom/android/launcher2/HomePendingSamsungWidget;)Z

    .line 974
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 3425
    const-string v6, ""

    .line 3426
    .local v6, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3427
    .local v0, "buf":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 3429
    .local v4, "fr":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3430
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x1fa0

    invoke-direct {v1, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3431
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 3440
    if-eqz v5, :cond_0

    .line 3441
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 3442
    :cond_0
    if-eqz v1, :cond_1

    .line 3443
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .line 3449
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    if-nez v6, :cond_7

    .line 3450
    const-string v6, ""

    .line 3453
    :goto_1
    return-object v6

    .line 3444
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 3445
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .line 3448
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_0

    .line 3432
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 3433
    .local v3, "ex":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v7, "Launcher"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3440
    if-eqz v4, :cond_3

    .line 3441
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 3442
    :cond_3
    if-eqz v0, :cond_2

    .line 3443
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 3444
    :catch_2
    move-exception v2

    .line 3445
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3435
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 3436
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v7, "Launcher"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3440
    if-eqz v4, :cond_4

    .line 3441
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 3442
    :cond_4
    if-eqz v0, :cond_2

    .line 3443
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 3444
    :catch_4
    move-exception v2

    .line 3445
    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3439
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 3440
    :goto_4
    if-eqz v4, :cond_5

    .line 3441
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 3442
    :cond_5
    if-eqz v0, :cond_6

    .line 3443
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 3447
    :cond_6
    :goto_5
    throw v7

    .line 3444
    :catch_5
    move-exception v2

    .line 3445
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "Launcher"

    const-string v9, "IOException close()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 3452
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 3439
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 3435
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 3432
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_9
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4753
    const-string v0, ""

    .line 4755
    .local v0, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4756
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4757
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4762
    :cond_0
    :goto_0
    return-object v0

    .line 4759
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private releaseShadows()V
    .locals 2

    .prologue
    .line 3995
    const-string v0, "Launcher"

    const-string v1, "releaseShadows called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->releaseShadows()V

    .line 3997
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->releaseShadows()V

    .line 3999
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->releaseShadows()V

    .line 4000
    return-void
.end method

.method public static requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 4419
    move-object v0, p1

    .line 4420
    .local v0, "c":Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-direct {v2, p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f100059

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f1000e9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/launcher2/Launcher$10;

    invoke-direct {v4, v0}, Lcom/android/launcher2/Launcher$10;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 4439
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4440
    const v2, 0x7f1000ea

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4441
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4442
    return-void
.end method

.method static setHomeEditMode(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 4055
    sput-boolean p0, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    .line 4056
    return-void
.end method

.method static setHomeRemoveMode(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 4065
    sput-boolean p0, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    .line 4066
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 2

    .prologue
    .line 2169
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x7c000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2177
    return-void
.end method

.method private setMarketLabel()V
    .locals 6

    .prologue
    const v5, 0x7f100030

    .line 1259
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 1260
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1261
    .local v1, "marketAppInfo":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    .end local v1    # "marketAppInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 1267
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    .line 1269
    :cond_1
    :goto_0
    return-void

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1266
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 1267
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1266
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    .line 1267
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    :cond_2
    throw v2
.end method

.method private setupOptionsMenu(Landroid/view/Menu;)Z
    .locals 41
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v38

    .line 2883
    .local v38, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/AnimationLayer;->areTouchEventsBlocked()Z

    move-result v39

    if-nez v39, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/16 v39, 0x0

    .line 3107
    :goto_0
    return v39

    .line 2885
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f100034

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2887
    .local v22, "mDisableText":Ljava/lang/String;
    const v39, 0x7f0f00ed

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    .line 2888
    .local v23, "market":Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    move-object/from16 v39, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2889
    const v39, 0x7f0f00ee

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 2890
    .local v8, "edit":Landroid/view/MenuItem;
    const v39, 0x7f0f00f6

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v27

    .line 2891
    .local v27, "search":Landroid/view/MenuItem;
    const v39, 0x7f0f00f9

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v35

    .line 2892
    .local v35, "uninstall":Landroid/view/MenuItem;
    const v39, 0x7f0f00f8

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2893
    .local v6, "downloaded":Landroid/view/MenuItem;
    const v39, 0x7f0f00f7

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v36

    .line 2894
    .local v36, "viewType":Landroid/view/MenuItem;
    const v39, 0x7f0f00fa

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    .line 2895
    .local v31, "shareApp":Landroid/view/MenuItem;
    const v39, 0x7f0f00fb

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v28

    .line 2896
    .local v28, "selAppsToHide":Landroid/view/MenuItem;
    const v39, 0x7f0f00fd

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    .line 2897
    .local v29, "selAppsToUnHide":Landroid/view/MenuItem;
    const v39, 0x7f0f00fe

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v24

    .line 2898
    .local v24, "moveToSecretBox":Landroid/view/MenuItem;
    const v39, 0x7f0f00ff

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v26

    .line 2899
    .local v26, "removeFromSecretBox":Landroid/view/MenuItem;
    const v39, 0x7f0f00f0

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 2900
    .local v5, "createFolder":Landroid/view/MenuItem;
    const v39, 0x7f0f00f1

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v25

    .line 2901
    .local v25, "removeFolder":Landroid/view/MenuItem;
    const v39, 0x7f0f00ef

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 2902
    .local v12, "homeAddWidget":Landroid/view/MenuItem;
    const v39, 0x7f0f00f2

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 2903
    .local v11, "homeAddWallpaper":Landroid/view/MenuItem;
    const v39, 0x7f0f00f5

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 2905
    .local v16, "homeSearchViaSFinder":Landroid/view/MenuItem;
    const v39, 0x7f0f0101

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 2906
    .local v15, "homeSearch":Landroid/view/MenuItem;
    const v39, 0x7f0f00f4

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 2907
    .local v13, "homeEdit":Landroid/view/MenuItem;
    const v39, 0x7f0f0103

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 2908
    .local v18, "homeSettings":Landroid/view/MenuItem;
    const v39, 0x7f0f0104

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 2909
    .local v14, "homeHelp":Landroid/view/MenuItem;
    const v39, 0x7f0f0102

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    .line 2910
    .local v19, "homeUsm":Landroid/view/MenuItem;
    const v39, 0x7f0f00fc

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v30

    .line 2911
    .local v30, "selappstoenable":Landroid/view/MenuItem;
    const v39, 0x7f0f00f3

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 2912
    .local v17, "homeSetTheme":Landroid/view/MenuItem;
    const v39, 0x7f0f0105

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2915
    .local v2, "GalaxyEssentials":Landroid/view/MenuItem;
    const v39, 0x7f0f0100

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 2916
    .local v10, "homeAddPage":Landroid/view/MenuItem;
    sget-object v39, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v7

    .line 2919
    .local v7, "downloadedApp":Z
    const/16 v39, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2920
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2921
    const/16 v39, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2922
    const/16 v39, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2923
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2924
    const/16 v39, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2925
    const/16 v39, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2926
    const/16 v39, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2927
    const/16 v39, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2928
    const/16 v39, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2929
    const/16 v39, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2930
    const/16 v39, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2931
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2932
    const/16 v39, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2933
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2934
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2935
    const/16 v39, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2938
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2939
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2940
    const/16 v39, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2941
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2942
    const/16 v39, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2943
    const/16 v39, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2944
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2947
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v39

    if-eqz v39, :cond_e

    .line 2950
    const/16 v21, 0x0

    .line 2951
    .local v21, "isEnableFindoFeature":Z
    if-eqz v21, :cond_c

    .line 2957
    :cond_2
    :goto_1
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2959
    sget-boolean v39, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v39, :cond_3

    .line 2960
    invoke-virtual/range {v38 .. v38}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v39

    if-nez v39, :cond_d

    .line 2961
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2962
    const v39, 0x7f100056

    move/from16 v0, v39

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2968
    :cond_3
    :goto_2
    sget-boolean v39, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v39, :cond_4

    .line 2969
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2970
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/Launcher;->addToHelpMenuOption(Landroid/view/MenuItem;)V

    .line 2971
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isKnoxLauncher()Z

    move-result v39

    if-nez v39, :cond_5

    .line 2972
    const/16 v39, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2973
    :cond_5
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2974
    const-string v39, "KNIGHT"

    const-string v40, "ALTIUS"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_6

    .line 2975
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2976
    :cond_6
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2978
    sget-boolean v39, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_USM_EXISTS:Z

    if-eqz v39, :cond_7

    .line 2979
    const/16 v39, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2982
    :cond_7
    sget-boolean v39, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v39, :cond_8

    .line 2983
    const/16 v39, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3096
    .end local v21    # "isEnableFindoFeature":Z
    :cond_8
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v40, "CscFeature_Launcher_DisableGoogleOption"

    invoke-virtual/range {v39 .. v40}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_9

    .line 3098
    const/16 v39, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3099
    const/16 v39, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3102
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    move-object/from16 v39, v0

    if-eqz v39, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    move-object/from16 v39, v0

    const-string v40, "com.android.vending"

    invoke-virtual/range {v39 .. v40}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    move-object/from16 v39, v0

    const-string v40, "com.google.android.finsky"

    invoke-virtual/range {v39 .. v40}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_b

    .line 3104
    :cond_a
    const/16 v39, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3107
    :cond_b
    const/16 v39, 0x1

    goto/16 :goto_0

    .line 2954
    .restart local v21    # "isEnableFindoFeature":Z
    :cond_c
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v39

    if-nez v39, :cond_2

    .line 2955
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 2964
    :cond_d
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 2986
    .end local v21    # "isEnableFindoFeature":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v39

    if-eqz v39, :cond_8

    .line 2987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v39

    if-eqz v39, :cond_11

    .line 2988
    sget-boolean v39, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-nez v39, :cond_f

    .line 2989
    const/16 v39, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2990
    :cond_f
    const/16 v39, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v37

    .line 2993
    .local v37, "widgets":Lcom/android/launcher2/MenuWidgets;
    if-eqz v37, :cond_10

    invoke-virtual/range {v37 .. v37}, Lcom/android/launcher2/MenuWidgets;->hasUninstallableWidgets()Z

    move-result v39

    if-eqz v39, :cond_10

    const/16 v39, 0x1

    :goto_4
    move-object/from16 v0, v35

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_10
    const/16 v39, 0x0

    goto :goto_4

    .line 2998
    .end local v37    # "widgets":Lcom/android/launcher2/MenuWidgets;
    :cond_11
    sget-object v39, Lcom/android/launcher2/Launcher$14;->$SwitchMap$com$android$launcher2$MenuView$ViewType:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/launcher2/MenuView$ViewType;->ordinal()I

    move-result v40

    aget v39, v39, v40

    packed-switch v39, :pswitch_data_0

    goto/16 :goto_3

    .line 3001
    :pswitch_0
    sget-boolean v39, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-nez v39, :cond_12

    .line 3003
    const/16 v39, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3004
    move-object/from16 v0, v31

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3006
    :cond_12
    move-object/from16 v0, v35

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3008
    sget-object v39, Lcom/android/launcher2/Launcher$14;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v40

    aget v39, v39, v40

    packed-switch v39, :pswitch_data_1

    goto/16 :goto_3

    .line 3011
    :pswitch_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v39

    if-eqz v39, :cond_13

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v39

    if-nez v39, :cond_13

    .line 3012
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3013
    :cond_13
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3014
    sget-object v39, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v3

    .line 3015
    .local v3, "_tmp":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/16 v33, 0x0

    .line 3016
    .local v33, "topLevelListHasAppItem":Z
    const/4 v9, 0x0

    .line 3017
    .local v9, "hasFolder":Z
    if-eqz v3, :cond_14

    .line 3018
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_14

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    .line 3019
    .local v4, "app":Lcom/android/launcher2/AppItem;
    if-eqz v33, :cond_17

    if-eqz v9, :cond_17

    .line 3032
    .end local v4    # "app":Lcom/android/launcher2/AppItem;
    .end local v20    # "i$":Ljava/util/Iterator;
    :cond_14
    if-eqz v3, :cond_1a

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v39

    if-nez v39, :cond_1a

    const/16 v34, 0x1

    .line 3033
    .local v34, "topLevelListNotEmpty":Z
    :goto_6
    move/from16 v0, v34

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3034
    if-eqz v34, :cond_1b

    if-eqz v33, :cond_1b

    const/16 v34, 0x1

    .line 3035
    :goto_7
    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3036
    move-object/from16 v0, v36

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3037
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/Launcher;->addToHelpMenuOption(Landroid/view/MenuItem;)V

    .line 3041
    if-eqz v7, :cond_1c

    if-eqz v34, :cond_1c

    const/16 v39, 0x1

    :goto_8
    move/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3042
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v39

    if-eqz v39, :cond_15

    .line 3043
    sget-object v39, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/MenuAppModel;->getUninstallableApps()Ljava/util/List;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    if-nez v39, :cond_15

    .line 3044
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3047
    :cond_15
    const/16 v39, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3048
    const/16 v39, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3049
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3050
    sget-object v39, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v32

    .line 3051
    .local v32, "topApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v32, :cond_1d

    .line 3052
    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3056
    :goto_9
    sget-object v39, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/MenuAppModel;->hasHiddenApps()Z

    move-result v39

    move-object/from16 v0, v29

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3058
    sget-boolean v39, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v39, :cond_16

    .line 3059
    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 3063
    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3064
    sget-object v39, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v39 .. v39}, Lcom/android/launcher2/MenuAppModel;->isDisableAppListEmpty()Z

    move-result v39

    if-nez v39, :cond_1e

    const/16 v39, 0x1

    :goto_a
    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3083
    :cond_16
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 3022
    .end local v32    # "topApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v34    # "topLevelListNotEmpty":Z
    .restart local v4    # "app":Lcom/android/launcher2/AppItem;
    .restart local v20    # "i$":Ljava/util/Iterator;
    :cond_17
    invoke-static {v4}, Lcom/android/launcher2/AppItem;->isFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v39

    if-nez v39, :cond_18

    .line 3023
    const/16 v33, 0x1

    goto/16 :goto_5

    .line 3025
    :cond_18
    check-cast v4, Lcom/android/launcher2/FolderItem;

    .end local v4    # "app":Lcom/android/launcher2/AppItem;
    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v39

    if-lez v39, :cond_19

    .line 3026
    const/16 v33, 0x1

    .line 3028
    :cond_19
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 3032
    .end local v20    # "i$":Ljava/util/Iterator;
    :cond_1a
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 3034
    .restart local v34    # "topLevelListNotEmpty":Z
    :cond_1b
    const/16 v34, 0x0

    goto/16 :goto_7

    .line 3041
    :cond_1c
    const/16 v39, 0x0

    goto/16 :goto_8

    .line 3054
    .restart local v32    # "topApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_1d
    const/16 v39, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9

    .line 3064
    :cond_1e
    const/16 v39, 0x0

    goto :goto_a

    .line 3089
    .end local v3    # "_tmp":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v9    # "hasFolder":Z
    .end local v32    # "topApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v33    # "topLevelListHasAppItem":Z
    .end local v34    # "topLevelListNotEmpty":Z
    :pswitch_2
    const/16 v39, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3090
    const/16 v39, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2998
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 3008
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static startDrag(Landroid/view/View;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 3754
    new-instance v0, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v0

    return v0
.end method

.method public static startDrag(Landroid/view/View;F)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "shrinkfactor"    # F

    .prologue
    .line 3760
    new-instance v0, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;FF)V

    invoke-static {p0, v0}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v0

    return v0
.end method

.method public static startDrag(Landroid/view/View;FF)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "shrinkfactor"    # F
    .param p2, "pointfactor"    # F

    .prologue
    .line 3757
    new-instance v0, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;FF)V

    invoke-static {p0, v0}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v0

    return v0
.end method

.method public static startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "shadow"    # Lcom/android/launcher2/ShadowBuilder;

    .prologue
    const/4 v4, 0x0

    .line 3766
    new-instance v0, Lcom/android/launcher2/DragState;

    invoke-direct {v0, p0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    .line 3767
    .local v0, "myLocalState":Lcom/android/launcher2/DragState;
    const/4 v1, 0x0

    .line 3769
    .local v1, "okay":Z
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 3770
    .local v2, "shadowSize":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 3771
    .local v3, "shadowTouchPoint":Landroid/graphics/Point;
    invoke-virtual {p1, v2, v3}, Lcom/android/launcher2/ShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 3775
    iget v5, v3, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_0

    iget v5, v3, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_1

    .line 3776
    :cond_0
    const-string v5, "Launcher"

    const-string v6, "Drag shadow touch point must not be negative"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    :goto_0
    return v4

    .line 3780
    :cond_1
    iget v5, v2, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_2

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_3

    .line 3781
    :cond_2
    const-string v5, "Launcher"

    const-string v6, "Drag shadow dimensions must not be negative"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3812
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1, v0, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v1

    .line 3814
    if-eqz v1, :cond_5

    .line 3815
    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragState;->setShadow(Lcom/android/launcher2/ShadowBuilder;)V

    .line 3816
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onDragStartedSuccessfully()V

    .line 3823
    :cond_4
    :goto_1
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start Drag result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    .line 3824
    goto :goto_0

    .line 3818
    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v5, :cond_4

    .line 3819
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private tryQueueWidgetAddViaIntent(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "overwriteAction"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 2297
    if-eqz p1, :cond_4

    .line 2298
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2303
    .local v0, "action":Ljava/lang/String;
    const-string v7, "com.sec.launcher.action.INSTALL_WIDGET"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2304
    if-eqz p2, :cond_0

    .line 2305
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2307
    :cond_0
    const-string v7, "com.sec.launcher.intent.extra.COMPONENT"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2308
    .local v2, "compName":Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    .line 2312
    new-instance v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lcom/android/launcher2/Launcher$WidgetAddInfo;-><init>(Lcom/android/launcher2/Launcher$1;)V

    .line 2313
    .local v1, "addInfo":Lcom/android/launcher2/Launcher$WidgetAddInfo;
    iput-object v2, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    .line 2314
    const-string v7, "com.sec.launcher.intent.extra.DUPLICATE"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mAllowDuplicate:Z

    .line 2316
    const-string v7, "com.sec.launcher.intent.extra.sizeX"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2317
    .local v3, "sizeX":I
    if-ge v3, v6, :cond_1

    move v3, v5

    .end local v3    # "sizeX":I
    :cond_1
    iput v3, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    .line 2318
    const-string v7, "com.sec.launcher.intent.extra.sizeY"

    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2319
    .local v4, "sizeY":I
    if-ge v4, v6, :cond_3

    :goto_0
    iput v5, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    .line 2320
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1    # "addInfo":Lcom/android/launcher2/Launcher$WidgetAddInfo;
    .end local v4    # "sizeY":I
    :cond_2
    move v5, v6

    .line 2325
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "compName":Landroid/content/ComponentName;
    :goto_1
    return v5

    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "addInfo":Lcom/android/launcher2/Launcher$WidgetAddInfo;
    .restart local v2    # "compName":Landroid/content/ComponentName;
    .restart local v4    # "sizeY":I
    :cond_3
    move v5, v4

    .line 2319
    goto :goto_0

    .line 2325
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "addInfo":Lcom/android/launcher2/Launcher$WidgetAddInfo;
    .end local v2    # "compName":Landroid/content/ComponentName;
    .end local v4    # "sizeY":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public RestoreHomeScreen()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 4446
    sput-boolean v9, Lcom/android/launcher2/Launcher;->isHomescreenRestoring:Z

    .line 4447
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 4449
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v3

    .line 4451
    .local v3, "oldScreenCount":I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    .line 4452
    .local v4, "screenCount":I
    if-ne v4, v8, :cond_0

    .line 4453
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v4

    .line 4455
    :cond_0
    sub-int v2, v4, v3

    .line 4456
    .local v2, "difference":I
    if-lez v2, :cond_1

    .line 4457
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 4458
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->addPage()V

    .line 4457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4460
    .end local v1    # "count":I
    :cond_1
    if-gez v2, :cond_2

    .line 4461
    const/4 v1, 0x0

    .restart local v1    # "count":I
    :goto_1
    mul-int/lit8 v6, v2, -0x1

    if-ge v1, v6, :cond_2

    .line 4462
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    .line 4461
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4466
    .end local v1    # "count":I
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v5

    .line 4467
    .local v5, "screenIndex":I
    if-eq v5, v8, :cond_3

    if-ge v5, v4, :cond_3

    .line 4468
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v5}, Lcom/android/launcher2/HomeView;->setHomeScreenAt(I)V

    .line 4470
    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/launcher2/LauncherModel;->setRefreshRequired(Z)V

    .line 4471
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/launcher2/Launcher$11;

    invoke-direct {v7, p0, v0}, Lcom/android/launcher2/Launcher$11;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/LauncherApplication;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4477
    return-void
.end method

.method public addAnyPendingWidgetsToWorkspace()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1048
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1049
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->buildWidgetMap(Ljava/util/HashMap;)V

    .line 1050
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    .line 1051
    .local v6, "ws":Lcom/android/launcher2/Workspace;
    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    .line 1053
    .local v0, "currentScreen":I
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1054
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mWidgetAddInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;

    .line 1055
    .local v1, "info":Lcom/android/launcher2/Launcher$WidgetAddInfo;
    iget-boolean v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mAllowDuplicate:Z

    if-nez v7, :cond_1

    .line 1056
    iget-object v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1057
    .local v5, "screen":Ljava/lang/Integer;
    if-eqz v5, :cond_1

    .line 1058
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1059
    const v7, 0x7f10001f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher2/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1060
    .local v3, "msg":Ljava/lang/String;
    invoke-static {p0, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1064
    .end local v3    # "msg":Ljava/lang/String;
    .end local v5    # "screen":Ljava/lang/Integer;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->processAsSamsungWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z

    move-result v4

    .line 1065
    .local v4, "processed":Z
    if-nez v4, :cond_2

    .line 1066
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->processAsSamsungSurfaceWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z

    move-result v4

    .line 1068
    :cond_2
    if-nez v4, :cond_3

    .line 1069
    invoke-direct {p0, v1}, Lcom/android/launcher2/Launcher;->processAsAndroidAppWidget(Lcom/android/launcher2/Launcher$WidgetAddInfo;)Z

    move-result v4

    .line 1071
    :cond_3
    if-eqz v4, :cond_0

    iget-object v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1078
    iget-object v7, v1, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1081
    .end local v1    # "info":Lcom/android/launcher2/Launcher$WidgetAddInfo;
    .end local v4    # "processed":Z
    :cond_4
    return-void
.end method

.method public addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    return-void
.end method

.method public bindAllAppsSecretMode()V
    .locals 1

    .prologue
    .line 3685
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->bindMenuSecretMode()V

    .line 3686
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 3687
    return-void
.end method

.method public bindAppsLoaded()V
    .locals 2

    .prologue
    .line 3590
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/MenuView;->mMenuAppLoaded:Z

    .line 3591
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->appModelLoaded()V

    .line 3592
    return-void
.end method

.method public bindBadgeUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3595
    .local p1, "appItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .local p2, "homeItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3596
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher2/HomeView;->bindHomeItemsUpdated(Ljava/util/List;Z)V

    .line 3598
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3599
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuView;->appBadgeUpdated(Ljava/util/List;)V

    .line 3601
    :cond_1
    return-void
.end method

.method public bindFestivalModeChange(Z)V
    .locals 3
    .param p1, "isFestivalMode"    # Z

    .prologue
    .line 3692
    sput-boolean p1, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    .line 3694
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3695
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    .line 3703
    :cond_0
    :goto_0
    return-void

    .line 3696
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3697
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    .line 3698
    .local v0, "menuGrid":Lcom/android/launcher2/MenuAppsGrid;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getAppsQuickViewState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3699
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->onBackPressed()Z

    goto :goto_0

    .line 3700
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3701
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    goto :goto_0
.end method

.method public bindHomeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher2/HomeWidgetItem;

    .prologue
    .line 3566
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3567
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    .line 3568
    return-void
.end method

.method public bindHomeBegin()V
    .locals 1

    .prologue
    .line 3538
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->startBinding()V

    .line 3539
    return-void
.end method

.method public bindHomeDeleteFestivalPage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3717
    .local p1, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 3718
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 3719
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3720
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->deleteWidgetFestivalPage(Ljava/util/List;)V

    .line 3721
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->bindHomeDeleteFestivalPage()V

    .line 3722
    return-void
.end method

.method public bindHomeDeleteSecretPage()V
    .locals 2

    .prologue
    .line 3674
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSecretPageManager:Lcom/android/launcher2/SecretPageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/SecretPageManager;->getSecretPageCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3681
    :goto_0
    return-void

    .line 3677
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 3678
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 3679
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->bindHomeDeleteSecretPage()V

    .line 3680
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->refreshQuickViewWorkspace(Z)V

    goto :goto_0
.end method

.method public bindHomeEnd()V
    .locals 3

    .prologue
    .line 3552
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3553
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->finishBindingItems()V

    .line 3555
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    .line 3556
    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    .line 3557
    .local v1, "oldGMode":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    .line 3558
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    .line 3559
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3560
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "homescreen:guide_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3561
    invoke-static {p0, v0}, Lcom/android/launcher2/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 3563
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "oldGMode":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bindHomeFolders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3547
    .local p1, "folders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3548
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindFolders(Ljava/util/Map;)V

    .line 3549
    return-void
.end method

.method public bindHomeInsertFestivalPage()V
    .locals 1

    .prologue
    .line 3707
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 3708
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 3709
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFestivalPageManager:Lcom/android/launcher2/FestivalPageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/FestivalPageManager;->getFestivalPageCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3713
    :goto_0
    return-void

    .line 3712
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->bindHomeInsertFestivalPage()V

    goto :goto_0
.end method

.method public bindHomeInsertSecretPage()V
    .locals 2

    .prologue
    .line 3663
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 3664
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 3665
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSecretPageManager:Lcom/android/launcher2/SecretPageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/SecretPageManager;->getSecretPageCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3670
    :goto_0
    return-void

    .line 3668
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->bindHomeInsertSecretPage()V

    .line 3669
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->refreshQuickViewWorkspace(Z)V

    goto :goto_0
.end method

.method public bindHomeItemsRemoved(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3618
    .local p1, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3620
    .local v6, "now":J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 3621
    .local v1, "date":Ljava/util/Date;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v8, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3622
    .local v8, "sdfNow":Ljava/text/SimpleDateFormat;
    invoke-virtual {v8, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 3623
    .local v9, "strNow":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 3624
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    const-string v10, "com.sec.android.app.launcher.prefs"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 3625
    .local v5, "prefs":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 3626
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    .line 3627
    .local v4, "item":Lcom/android/launcher2/HomeItem;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bindHomeItemsRemoved"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", time : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3628
    add-int/lit8 v2, v2, 0x1

    .line 3629
    goto :goto_0

    .line 3630
    .end local v4    # "item":Lcom/android/launcher2/HomeItem;
    :cond_0
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3632
    .end local v0    # "app":Lcom/android/launcher2/LauncherApplication;
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "prefs":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "now":J
    .end local v8    # "sdfNow":Ljava/text/SimpleDateFormat;
    .end local v9    # "strNow":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10, p1}, Lcom/android/launcher2/HomeView;->bindHomeItemsRemoved(Ljava/util/List;)V

    .line 3633
    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3636
    .local p1, "updated":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/HomeView;->bindHomeItemsUpdated(Ljava/util/List;Z)V

    .line 3637
    return-void
.end method

.method public bindHomeSamsungWidget(Lcom/android/launcher2/SamsungWidgetItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/SamsungWidgetItem;

    .prologue
    .line 3571
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3572
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindSamsungWidget(Lcom/android/launcher2/SamsungWidgetItem;)V

    .line 3573
    return-void
.end method

.method public bindHomeShortcuts(Ljava/util/List;II)V
    .locals 1
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 3542
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3543
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/HomeView;->bindItems(Ljava/util/List;II)V

    .line 3544
    return-void
.end method

.method public bindHomeSurfaceWidget(Lcom/android/launcher2/SurfaceWidgetItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/SurfaceWidgetItem;

    .prologue
    .line 3584
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3585
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindSurfaceWidget(Lcom/android/launcher2/SurfaceWidgetItem;)V

    .line 3586
    return-void
.end method

.method public bindHotseatItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3576
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 3577
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/HomeView;->sIsBindHotseat:Z

    .line 3578
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindHotseat(Ljava/util/List;)V

    .line 3579
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/HomeView;->sIsBindHotseat:Z

    .line 3580
    return-void
.end method

.method public bindModeChange()V
    .locals 1

    .prologue
    .line 3533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    .line 3534
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->finish()V

    .line 3535
    return-void
.end method

.method public bindPackagesChanged(Z)V
    .locals 1
    .param p1, "appModelUpdated"    # Z

    .prologue
    .line 3604
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->forceReload()V

    .line 3605
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuView;->packagesChanged(Z)V

    .line 3615
    return-void
.end method

.method public bindSearchablesChanged()V
    .locals 1

    .prologue
    .line 3936
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->updateGlobalSearchIcon()Z

    .line 3937
    return-void
.end method

.method public bindSecretModeChange(Z)V
    .locals 3
    .param p1, "isSecretMode"    # Z

    .prologue
    .line 3641
    sput-boolean p1, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    .line 3643
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3644
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    .line 3654
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    sput-boolean v1, Lcom/android/launcher2/MenuAppsGrid;->mChangeMenuModeForSecretBox:Z

    .line 3656
    return-void

    .line 3645
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3646
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    .line 3647
    .local v0, "menuGrid":Lcom/android/launcher2/MenuAppsGrid;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getAppsQuickViewState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3648
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->onBackPressed()Z

    goto :goto_0

    .line 3649
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3650
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v2

    if-eqz p1, :cond_3

    sget-object v1, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->SECRET_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    goto :goto_1
.end method

.method public bindWidgetsAfterConfigChange()V
    .locals 1

    .prologue
    .line 3526
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    if-nez v0, :cond_0

    .line 3527
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->bindWidgetsAfterConfigChange()V

    .line 3529
    :cond_0
    return-void
.end method

.method public callDisableDialog(Lcom/android/launcher2/BaseItem;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    const/4 v5, 0x0

    .line 4231
    const/4 v0, 0x0

    .line 4233
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4239
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    .line 4240
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->shouldDisablePopupRepeat()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4241
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher2/DisableAppConfirmationDialog;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;Z)V

    .line 4258
    :goto_1
    return-void

    .line 4234
    :catch_0
    move-exception v1

    .line 4236
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 4245
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_1

    .line 4249
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->shouldDisablePopupRepeat()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4250
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher2/DisableAppConfirmationDialog;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;Z)V

    goto :goto_1

    .line 4254
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    .line 4255
    sget-object v2, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public checkFactoryMode()Z
    .locals 1

    .prologue
    .line 3420
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

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

.method public closePopupMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2047
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    .line 2050
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 2052
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeOptionsMenu()V

    .line 2053
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 2054
    return-void
.end method

.method public createPopupMenu(Landroid/view/View;)V
    .locals 3
    .param p1, "popupAnchorView"    # Landroid/view/View;

    .prologue
    .line 2827
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setMarketLabel()V

    .line 2828
    if-nez p1, :cond_0

    .line 2829
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find anchor for menu button."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2831
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    .line 2832
    new-instance v0, Lcom/android/launcher2/popup/PopupMenu;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/popup/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    .line 2833
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    new-instance v1, Lcom/android/launcher2/Launcher$8;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$8;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/PopupMenu;->setOnDismissListener(Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;)V

    .line 2840
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    .line 2841
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f120000

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2842
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/PopupMenu;->setOnMenuItemClickListener(Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;)V

    .line 2843
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)Z

    .line 2844
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0f00bb

    const v8, 0x7f0f00a8

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 1774
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_d

    .line 1775
    const/4 v1, 0x0

    .line 1776
    .local v1, "menuWidgets":Lcom/android/launcher2/MenuWidgets;
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v6, :cond_0

    .line 1777
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    .line 1778
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 1996
    .end local v1    # "menuWidgets":Lcom/android/launcher2/MenuWidgets;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    :cond_2
    :goto_1
    return v5

    .line 1781
    .restart local v1    # "menuWidgets":Lcom/android/launcher2/MenuWidgets;
    :sswitch_0
    sget v6, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    if-eq v6, v5, :cond_3

    sget v6, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    :cond_3
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_4

    .line 1784
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/16 v6, 0x17

    if-eq v5, v6, :cond_1

    move v5, v0

    .line 1788
    goto :goto_1

    .line 1792
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/HomeScreenOptionMenu;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1796
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 1803
    :sswitch_1
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_2

    move v5, v0

    .line 1804
    goto :goto_1

    :sswitch_2
    move v5, v0

    .line 1809
    goto :goto_1

    .line 1811
    :sswitch_3
    const-string v6, "launcher_dump_state"

    invoke-static {v6}, Lcom/android/launcher2/Launcher;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1812
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->dumpState()V

    goto :goto_1

    .line 1820
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1821
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageReorderingEdit()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1822
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1823
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->requestFocus()Z

    goto :goto_0

    .line 1827
    :cond_5
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 1834
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isEmptyPage()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1835
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1836
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    goto :goto_1

    .line 1844
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1845
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageReorderingEdit()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1846
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1847
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->requestFocus()Z

    goto/16 :goto_0

    .line 1850
    :cond_7
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_0

    .line 1857
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isEmptyPage()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1858
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 1859
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    goto/16 :goto_1

    .line 1865
    :cond_9
    if-eqz v1, :cond_1

    .line 1866
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/PagedViewWidget;

    if-nez v6, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/SearchView$SearchAutoComplete;

    if-nez v6, :cond_a

    move v0, v5

    .line 1867
    .local v0, "allowFocus":Z
    :cond_a
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v6, v7, :cond_1

    if-eqz v0, :cond_1

    .line 1868
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v7, 0x7f0f00cd

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1869
    .local v2, "searchInput":Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 1870
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    goto/16 :goto_1

    .end local v0    # "allowFocus":Z
    .end local v2    # "searchInput":Landroid/view/ViewGroup;
    :sswitch_6
    move v5, v0

    .line 1877
    goto/16 :goto_1

    .line 1879
    :sswitch_7
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    if-nez v5, :cond_c

    .line 1882
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/HomeView;->clearChildFocus(Landroid/view/View;)V

    :cond_b
    :goto_2
    move v5, v0

    .line 1889
    goto/16 :goto_1

    .line 1884
    :cond_c
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    if-nez v5, :cond_b

    .line 1887
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/MenuView;->clearChildFocus(Landroid/view/View;)V

    goto :goto_2

    .line 1891
    .end local v1    # "menuWidgets":Lcom/android/launcher2/MenuWidgets;
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 1892
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto/16 :goto_0

    .line 1906
    :sswitch_8
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_2

    move v5, v0

    .line 1907
    goto/16 :goto_1

    .line 1896
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/HomeScreenOptionMenu;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1900
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_1

    .line 1913
    :sswitch_a
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_e

    move v5, v0

    .line 1914
    goto/16 :goto_1

    .line 1917
    :cond_e
    iget-boolean v6, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-nez v6, :cond_18

    .line 1918
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    .line 1919
    .restart local v1    # "menuWidgets":Lcom/android/launcher2/MenuWidgets;
    if-eqz v1, :cond_10

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1920
    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetFolder()Lcom/android/launcher2/WidgetFolder;

    move-result-object v4

    .line 1921
    .local v4, "widgetFolder":Lcom/android/launcher2/WidgetFolder;
    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v6, v7, :cond_f

    move v5, v0

    .line 1922
    goto/16 :goto_1

    .line 1924
    :cond_f
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_12

    move v5, v0

    .line 1925
    goto/16 :goto_1

    .line 1928
    .end local v4    # "widgetFolder":Lcom/android/launcher2/WidgetFolder;
    :cond_10
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v6, v7, :cond_11

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v6, v7, :cond_11

    move v5, v0

    .line 1931
    goto/16 :goto_1

    .line 1933
    :cond_11
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-eq v6, v7, :cond_12

    move v5, v0

    .line 1935
    goto/16 :goto_1

    .line 1938
    :cond_12
    const/4 v3, 0x0

    .line 1939
    .local v3, "v":Landroid/view/View;
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v6, v7, :cond_15

    .line 1940
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v8, :cond_14

    .line 1942
    :cond_13
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1943
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    .line 1958
    :cond_14
    :goto_3
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v6}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)Z

    .line 1959
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v6}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    .line 1960
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v6}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    .line 1961
    sput-boolean v5, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    goto/16 :goto_1

    .line 1945
    :cond_15
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v6, v7, :cond_16

    .line 1946
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_2

    .line 1947
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v10, v5}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    goto/16 :goto_1

    .line 1950
    :cond_16
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v9, :cond_14

    .line 1952
    :cond_17
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1953
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    goto :goto_3

    .line 1966
    .end local v1    # "menuWidgets":Lcom/android/launcher2/MenuWidgets;
    .end local v3    # "v":Landroid/view/View;
    :cond_18
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v6, v7, :cond_1a

    .line 1967
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_2

    .line 1968
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1969
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    goto/16 :goto_1

    .line 1971
    :cond_19
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v10, v5}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    goto/16 :goto_1

    :cond_1a
    move v5, v0

    .line 1976
    goto/16 :goto_1

    .line 1983
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1984
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageReorderingEdit()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1985
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1986
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->requestFocus()Z

    goto/16 :goto_0

    .line 1778
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_0
        0x19 -> :sswitch_3
        0x42 -> :sswitch_0
        0x52 -> :sswitch_2
        0x107 -> :sswitch_6
        0x10a -> :sswitch_7
    .end sparse-switch

    .line 1892
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_8
        0x13 -> :sswitch_b
        0x14 -> :sswitch_b
        0x15 -> :sswitch_b
        0x16 -> :sswitch_b
        0x17 -> :sswitch_9
        0x42 -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1296
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 1297
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    .line 1298
    .local v1, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1299
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1300
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->isCurrentTabAppsTab()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1301
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_1

    .line 1302
    const v2, 0x7f100035

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    :cond_0
    :goto_0
    return v0

    .line 1304
    :cond_1
    const v2, 0x7f1000d9

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1307
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1308
    const v2, 0x7f100003

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1311
    :cond_3
    const v2, 0x7f100018

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public exitAllApps()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1424
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    .line 1425
    return-void
.end method

.method public exitAllApps(ZZ)V
    .locals 9
    .param p1, "withDrag"    # Z
    .param p2, "immediate"    # Z

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1435
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1437
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1439
    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v4, :cond_3

    .line 1440
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->end()V

    .line 1441
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    .line 1507
    :cond_2
    :goto_0
    return-void

    .line 1443
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1444
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v4, Lcom/android/launcher2/Launcher$5;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Launcher$5;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1454
    .end local v1    # "mHandler":Landroid/os/Handler;
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->onExitAllApps()V

    .line 1455
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v5, "add_widgets"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1456
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    .line 1458
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_6

    .line 1459
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 1462
    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    .line 1463
    .local v3, "workspace":Lcom/android/launcher2/Workspace;
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    .line 1465
    .local v2, "quickviewWorkspace":Lcom/android/launcher2/QuickViewWorkspace;
    if-eqz v3, :cond_d

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1466
    :cond_7
    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 1467
    if-nez p1, :cond_8

    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->resumeMagazineCling()V

    .line 1468
    :cond_8
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHomeAppsBtn()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 1469
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHomeAppsBtn()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1470
    :cond_9
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHomePhoneBtn()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 1471
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHomePhoneBtn()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1476
    :cond_a
    :goto_1
    if-eqz p2, :cond_e

    .line 1479
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 1480
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v8}, Lcom/android/launcher2/HomeView;->setAlpha(F)V

    .line 1481
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v8}, Lcom/android/launcher2/HomeView;->setScaleX(F)V

    .line 1482
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v8}, Lcom/android/launcher2/HomeView;->setScaleY(F)V

    .line 1483
    if-eqz v3, :cond_c

    .line 1484
    const/4 v0, 0x0

    .line 1485
    .local v0, "darkenAmount":F
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1486
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0005

    invoke-virtual {v4, v5, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 1488
    :cond_b
    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->setBackgroundDarken(F)V

    .line 1490
    .end local v0    # "darkenAmount":F
    :cond_c
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishExitAllApps()V

    goto/16 :goto_0

    .line 1473
    :cond_d
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    goto :goto_1

    .line 1494
    :cond_e
    iput-boolean v7, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    .line 1495
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 1497
    if-eqz p1, :cond_10

    .line 1498
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1499
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v7, v6}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(ZZ)V

    .line 1501
    :cond_f
    if-eqz v3, :cond_2

    .line 1502
    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->onFadeStart()V

    goto/16 :goto_0

    .line 1505
    :cond_10
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->exitAllappsAnimation(Z)V

    goto/16 :goto_0
.end method

.method public exitAllappsAnimation(Z)V
    .locals 10
    .param p1, "withDrag"    # Z

    .prologue
    .line 1510
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    .line 1511
    .local v6, "workspace":Lcom/android/launcher2/Workspace;
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    .line 1513
    .local v4, "quickviewWorkspace":Lcom/android/launcher2/QuickViewWorkspace;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    .line 1515
    .local v3, "provider":Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    invoke-interface {v3, v0}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectExitAllAppsAnimators(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1518
    .end local v3    # "provider":Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    :cond_0
    if-eqz v6, :cond_2

    if-nez p1, :cond_2

    .line 1519
    const v7, 0x7f050009

    .line 1520
    .local v7, "xmlID":I
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1521
    const v7, 0x7f05000a

    .line 1522
    :cond_1
    invoke-static {p0, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 1523
    .local v1, "darkenAnimator":Landroid/animation/Animator;
    invoke-virtual {v1, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1524
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1527
    .end local v1    # "darkenAnimator":Landroid/animation/Animator;
    .end local v7    # "xmlID":I
    :cond_2
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1528
    .local v5, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1529
    const-wide/16 v8, 0x190

    invoke-virtual {v5, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1530
    new-instance v8, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v8}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1531
    new-instance v8, Lcom/android/launcher2/Launcher$6;

    invoke-direct {v8, p0}, Lcom/android/launcher2/Launcher$6;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1545
    iput-object v5, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    .line 1546
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 1547
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    .line 1548
    return-void
.end method

.method public exitHelp(Z)V
    .locals 7
    .param p1, "isBackPressed"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2455
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2456
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    .line 2457
    :cond_0
    sput-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    .line 2458
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "add_widgets"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2459
    sput-boolean v6, Lcom/android/launcher2/Launcher;->isExitingFromHelp:Z

    .line 2460
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->removehelpAppPage()V

    .line 2461
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iput-boolean v5, v3, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    .line 2462
    sput-boolean v5, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    .line 2463
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2464
    .local v1, "intentExitHelp":Landroid/content/Intent;
    const-string v3, "homescreen:guide_mode"

    const-string v4, "onBackPressed"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2465
    const-string v3, "currentGmode"

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2466
    invoke-static {p0, v1}, Lcom/android/launcher2/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2467
    sput-boolean v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isWidgetToBeAdded:Z

    .line 2468
    sput v6, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 2469
    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    .line 2470
    if-eqz p1, :cond_1

    .line 2471
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getLaunchIntentForHelpHub()Landroid/content/Intent;

    move-result-object v0

    .line 2472
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 2473
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2541
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-ge v3, v4, :cond_2

    .line 2542
    iput v6, p0, Lcom/android/launcher2/Launcher;->mPrevOrientationHelp:I

    .line 2545
    :cond_2
    iget v3, p0, Lcom/android/launcher2/Launcher;->mPrevOrientationHelp:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 2547
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    .line 2548
    return-void

    .line 2475
    .end local v1    # "intentExitHelp":Landroid/content/Intent;
    :cond_3
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "change_wallpaper"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2476
    sput-boolean v6, Lcom/android/launcher2/Launcher;->isExitingFromHelp:Z

    .line 2477
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->removehelpAppPage()V

    .line 2478
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iput-boolean v5, v3, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    .line 2479
    sput-boolean v5, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    .line 2480
    sget-boolean v3, Lcom/android/launcher2/HomeScreenDialogFragment;->isHomeScreenDialogVisible:Z

    if-eqz v3, :cond_4

    .line 2481
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 2483
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2484
    .restart local v1    # "intentExitHelp":Landroid/content/Intent;
    const-string v3, "homescreen:guide_mode"

    const-string v4, "onBackPressed"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2485
    const-string v3, "currentGmode"

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2486
    invoke-static {p0, v1}, Lcom/android/launcher2/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2487
    sput-boolean v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isWidgetToBeAdded:Z

    .line 2488
    sput v6, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 2489
    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    .line 2490
    if-eqz p1, :cond_1

    .line 2491
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getLaunchIntentForHelpHub()Landroid/content/Intent;

    move-result-object v0

    .line 2492
    .restart local v0    # "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 2493
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2498
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentExitHelp":Landroid/content/Intent;
    :cond_5
    sget-boolean v3, Lcom/android/launcher2/Launcher;->wasWidgetsTabShown:Z

    if-eqz v3, :cond_7

    .line 2499
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    .line 2500
    .local v2, "menuWidgets":Lcom/android/launcher2/MenuWidgets;
    if-eqz v2, :cond_6

    .line 2501
    const-string v3, "Launcher - exitHelp"

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 2503
    :cond_6
    sput-boolean v5, Lcom/android/launcher2/Launcher;->wasWidgetsTabShown:Z

    .line 2506
    .end local v2    # "menuWidgets":Lcom/android/launcher2/MenuWidgets;
    :cond_7
    invoke-static {}, Lcom/android/launcher2/guide/GuideFragment;->removeWrongActionDialog()V

    .line 2507
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->removehelpAppPage()V

    .line 2508
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iput-boolean v5, v3, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    .line 2509
    sput-boolean v5, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    .line 2510
    sget-boolean v3, Lcom/android/launcher2/HomeScreenDialogFragment;->isHomeScreenDialogVisible:Z

    if-eqz v3, :cond_8

    .line 2511
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 2513
    :cond_8
    sput-boolean v5, Lcom/android/launcher2/CellLayout;->isWidgetResized:Z

    .line 2514
    sput-boolean v5, Lcom/android/launcher2/Launcher;->isExitingFromWallpaperActivity:Z

    .line 2515
    sput-boolean v6, Lcom/android/launcher2/AddToHomescreenDialogFragment;->setWallpaperSelected:Z

    .line 2516
    sput-boolean v6, Lcom/android/launcher2/HomeScreenDialogFragment;->homescreenSelected:Z

    .line 2518
    sget-object v3, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    if-eq v3, v4, :cond_9

    .line 2519
    sget-object v3, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-eqz v3, :cond_9

    .line 2520
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuView;->mOldViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    .line 2522
    :cond_9
    sget-object v3, Lcom/android/launcher2/MenuView;->oldState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    if-eq v3, v4, :cond_a

    .line 2523
    sget-object v3, Lcom/android/launcher2/MenuView;->oldState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eqz v3, :cond_a

    .line 2524
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuView;->oldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2527
    :cond_a
    sput-boolean v6, Lcom/android/launcher2/Launcher;->isExitingFromHelp:Z

    .line 2528
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2529
    .restart local v1    # "intentExitHelp":Landroid/content/Intent;
    const-string v3, "homescreen:guide_mode"

    const-string v4, "onBackPressed"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2530
    const-string v3, "currentGmode"

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2531
    invoke-static {p0, v1}, Lcom/android/launcher2/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2532
    sput-boolean v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isWidgetToBeAdded:Z

    .line 2533
    sput v6, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 2534
    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isViewAppsDialogDismissed:Z

    .line 2535
    if-eqz p1, :cond_1

    .line 2536
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getLaunchIntentForHelpHub()Landroid/content/Intent;

    move-result-object v0

    .line 2537
    .restart local v0    # "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 2538
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public finishWallpaperGuide(Z)V
    .locals 4
    .param p1, "isSuccess"    # Z

    .prologue
    const/4 v2, 0x1

    .line 4331
    if-eqz p1, :cond_1

    .line 4332
    const v1, 0x7f1000ac

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4333
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4334
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/launcher2/Launcher$9;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$9;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4345
    .end local v0    # "mHandler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 4342
    :cond_1
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    .line 4343
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    goto :goto_0
.end method

.method public getAnimationLayer()Lcom/android/launcher2/AnimationLayer;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    return-object v0
.end method

.method public getDisplayOrientation()I
    .locals 3

    .prologue
    .line 3457
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3458
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 3460
    .local v1, "rotation":I
    packed-switch v1, :pswitch_data_0

    .line 3467
    :pswitch_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 3463
    :pswitch_1
    const/4 v2, 0x2

    goto :goto_0

    .line 3460
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;
    .locals 1

    .prologue
    .line 4073
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFestivalPageManager:Lcom/android/launcher2/FestivalPageManager;

    return-object v0
.end method

.method public getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;
    .locals 1

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v0

    return-object v0
.end method

.method public getHomeView()Lcom/android/launcher2/HomeView;
    .locals 1

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    return-object v0
.end method

.method public getHotwordServiceClient()Lcom/google/android/hotword/client/HotwordServiceClient;
    .locals 1

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    return-object v0
.end method

.method public getMenuView()Lcom/android/launcher2/MenuView;
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method public getQuickViewWorkspaceOpen()Z
    .locals 1

    .prologue
    .line 4003
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4004
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    .line 4006
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    return-object v0
.end method

.method public getSecretPageManager()Lcom/android/launcher2/SecretPageManager;
    .locals 1

    .prologue
    .line 4068
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSecretPageManager:Lcom/android/launcher2/SecretPageManager;

    return-object v0
.end method

.method public getShowEmptyPageMessagePref()Z
    .locals 1

    .prologue
    .line 3940
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    return v0
.end method

.method public getSurfaceWidgetPackageManager()Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    return-object v0
.end method

.method public getTransitionToAllApps()Z
    .locals 1

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public isAddToScreenDialogShowing()Z
    .locals 1

    .prologue
    .line 2625
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v0

    return v0
.end method

.method public isAirMoveOninSettings()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4173
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4174
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string v3, "air_motion_item_move"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    const-string v3, "air_motion_engine"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    sget-boolean v3, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    if-eqz v3, :cond_0

    .line 4178
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isDialogChecked()Z
    .locals 3

    .prologue
    .line 4285
    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4287
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "add.toast.popup.dismissed.key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isEmptyPage()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2000
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2001
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 2002
    .local v4, "workspace":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/CellLayoutChildren;

    if-nez v6, :cond_1

    .line 2020
    .end local v4    # "workspace":Lcom/android/launcher2/CellLayout;
    :cond_0
    :goto_0
    return v5

    .line 2005
    .restart local v4    # "workspace":Lcom/android/launcher2/CellLayout;
    :cond_1
    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    .line 2006
    .local v3, "parent":Lcom/android/launcher2/CellLayoutChildren;
    const/4 v0, 0x0

    .line 2008
    .local v0, "countAppIcon":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 2009
    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2010
    .local v1, "countItem":Landroid/view/View;
    instance-of v6, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v6, :cond_2

    .line 2011
    add-int/lit8 v0, v0, 0x1

    .line 2008
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2015
    .end local v1    # "countItem":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    if-nez v0, :cond_0

    .line 2016
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isExitingAllApps()Z
    .locals 1

    .prologue
    .line 1420
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    return v0
.end method

.method public isHapticFeedbackExtraOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4698
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_extra"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 4699
    .local v0, "sIsHapticFeedbackExtraOn":Z
    :goto_0
    return v0

    .end local v0    # "sIsHapticFeedbackExtraOn":Z
    :cond_0
    move v0, v1

    .line 4698
    goto :goto_0
.end method

.method public isHelpAppAvailable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3491
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3492
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3493
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3495
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public isHelpHubAvailable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 3474
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3475
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    .line 3487
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3476
    :cond_1
    sget-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 3478
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3479
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "displayed"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3480
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 3481
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    goto :goto_0

    .line 3483
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3484
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/launcher2/Launcher;->sHelpHubAvailable:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public isKeyStringBlocked()Z
    .locals 2

    .prologue
    .line 3399
    const/4 v0, 0x0

    .line 3415
    .local v0, "imeiBlocked":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method public isLauncherDestroyed()Z
    .locals 1

    .prologue
    .line 1172
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    return v0
.end method

.method public isMagazineHomeEnabled(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 4886
    const-string v0, "pref_my_magazine"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sIsMagazineHomeEnable:Z

    .line 4888
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-nez v0, :cond_0

    .line 4889
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sIsMagazineHomeEnable:Z

    .line 4891
    :cond_0
    return-void
.end method

.method public isPageEdit()Z
    .locals 3

    .prologue
    .line 2024
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v1, :cond_2

    .line 2025
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    .line 2026
    .local v0, "menuWidget":Lcom/android/launcher2/MenuWidgets;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_2

    .line 2028
    :cond_1
    const/4 v1, 0x1

    .line 2031
    .end local v0    # "menuWidget":Lcom/android/launcher2/MenuWidgets;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPageReorderingEdit()Z
    .locals 2

    .prologue
    .line 2035
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v1, :cond_1

    .line 2036
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    .line 2037
    .local v0, "menuWidget":Lcom/android/launcher2/MenuWidgets;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->isSettingVisible()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2040
    :cond_0
    const/4 v1, 0x1

    .line 2043
    .end local v0    # "menuWidget":Lcom/android/launcher2/MenuWidgets;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 3932
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    return v0
.end method

.method public isResumed_()Z
    .locals 1

    .prologue
    .line 4820
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mResumed:Z

    return v0
.end method

.method public isTransitioningRunning()Z
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    const/4 v0, 0x1

    .line 1290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransitioningToShowAllApps()Z
    .locals 1

    .prologue
    .line 1280
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1281
    :cond_0
    const/4 v0, 0x1

    .line 1283
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchOptionWallpaper()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2628
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2629
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->startWallpaper(I)V

    .line 2633
    :goto_0
    return-void

    .line 2631
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->startWallpaper(I)V

    goto :goto_0
.end method

.method public menuWidgetsUpdated(Z)V
    .locals 3
    .param p1, "hasUninstallable"    # Z

    .prologue
    .line 3733
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isOptionMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3734
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0f00f9

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3735
    .local v0, "uninstall":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3736
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3740
    .end local v0    # "uninstall":Landroid/view/MenuItem;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3741
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->updateWidgetButtonState()V

    .line 3743
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4292
    const/16 v6, 0x6f

    if-ne p1, v6, :cond_1

    .line 4294
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4296
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    sget-object v4, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    const/16 v5, 0x2200

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4299
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_0

    .line 4300
    sget-object v4, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4324
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 4303
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 4304
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4308
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const/16 v6, 0xa

    if-ne p1, v6, :cond_3

    .line 4309
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_3

    .line 4310
    const/4 v6, -0x1

    if-ne p2, v6, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->finishWallpaperGuide(Z)V

    .line 4313
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mActivityCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher$ActivityResultCallback;

    .line 4314
    .local v1, "callback":Lcom/android/launcher2/Launcher$ActivityResultCallback;
    if-eqz v1, :cond_0

    .line 4315
    invoke-interface {v1, p1, p2, p3}, Lcom/android/launcher2/Launcher$ActivityResultCallback;->onActivityResult(IILandroid/content/Intent;)V

    .line 4316
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mActivityCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4318
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_0

    .line 4319
    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    if-nez p2, :cond_0

    .line 4320
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2230
    const-string v1, "Launcher"

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    invoke-super {p0}, Landroid/app/ActivityGroup;->onAttachedToWindow()V

    .line 2234
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v1}, Lcom/google/android/hotword/client/HotwordServiceClient;->onAttachedToWindow()V

    .line 2235
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    .line 2239
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2240
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2241
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2243
    const-string v1, "android.intent.action.REQUEST_HOME_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2244
    const-string v1, "android.intent.action.REQUEST_WIDGET_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2248
    const-string v1, "com.android.launcher.action.ACTION_HOME_RESTORE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2250
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v1, :cond_0

    .line 2251
    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2252
    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2254
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2256
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 2257
    sget-object v1, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 2258
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mRemainSavedInstance:Z

    if-eqz v1, :cond_1

    .line 2261
    sget-object v1, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->onNewIntent(Landroid/content/Intent;)V

    .line 2264
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    .line 2265
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mRemainSavedInstance:Z

    .line 2266
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2059
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    .line 2062
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->handleResizeWidget()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2063
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    .line 2070
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eqz v0, :cond_6

    .line 2071
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2072
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeOptionsMenu()V

    .line 2073
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    if-eqz v0, :cond_5

    .line 2074
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->startMagazineApp(Z)V

    .line 2075
    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->isEnteredFromMagazine:Z

    .line 2084
    :cond_2
    :goto_1
    return-void

    .line 2065
    :cond_3
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "add_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "change_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2066
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    goto :goto_0

    .line 2077
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    goto :goto_1

    .line 2082
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->onBackPressed()Z

    goto :goto_1
.end method

.method public onClickAppMarketButton()V
    .locals 2

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 3164
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    const-string v1, "app market"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 3166
    :cond_0
    return-void
.end method

.method public onClickAppMarketButton(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3154
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onClickAppMarketButton()V

    .line 3155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3160
    :goto_0
    return-void

    .line 3157
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 3155
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f00a9
        :pswitch_0
    .end packed-switch
.end method

.method public onClickDownloadedButton(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3169
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const/16 v1, 0x20

    const v2, 0x7f100035

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(ILjava/lang/String;Z)V

    .line 3170
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->onOptionSelectedDownload()V

    .line 3171
    return-void
.end method

.method public onClickPopupMenuButton(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2860
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_1

    .line 2874
    :cond_0
    :goto_0
    return-void

    .line 2862
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-eqz v0, :cond_2

    .line 2863
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    goto :goto_0

    .line 2866
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    iget-boolean v0, v0, Lcom/android/launcher2/MenuView;->mMenuAppLoaded:Z

    if-eqz v0, :cond_0

    .line 2869
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    .line 2871
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    .line 2872
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    goto :goto_0
.end method

.method public onClickonlineHelp()V
    .locals 7

    .prologue
    .line 3214
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3215
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v1, v4, 0xa

    .line 3216
    .local v1, "helpVersionCode":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 3247
    .end local v1    # "helpVersionCode":I
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 3221
    .restart local v1    # "helpVersionCode":I
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 3226
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3227
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "helphub:section"

    const-string v5, "homescreen"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3228
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3242
    .end local v1    # "helpVersionCode":I
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 3244
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3230
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "helpVersionCode":I
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 3238
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3239
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v4, "helphub:appid"

    const-string v5, "home_screen"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3240
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onClickstartDownloadableApps()V
    .locals 7

    .prologue
    const v6, 0x7f100002

    const/4 v5, 0x0

    .line 3183
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3184
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/launcher2/Launcher;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    .line 3185
    .local v2, "salesCode":Ljava/lang/String;
    const-string v3, "CHM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3186
    const-string v3, "com.sec.android.app.moreservices"

    const-string v4, "com.sec.android.app.moreservices.moreservices"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3190
    :goto_0
    const v3, 0x14000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3193
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3209
    :cond_0
    :goto_1
    return-void

    .line 3188
    :cond_1
    const-string v3, "com.sec.android.app.samsungapps"

    const-string v4, "com.sec.android.app.samsungapps.downloadableapps.DownloadableAppsActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3194
    :catch_0
    move-exception v0

    .line 3195
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3196
    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    .line 3197
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch. tag=samsungapps downloadable page intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3199
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 3200
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3201
    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    .line 3202
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher does not have the permission to launch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "or use the exported attribute for this activity. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "samsungapps downloadable page"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 4029
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConfigurationChanged. orientation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    sget v5, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_1

    .line 4033
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetView;->isRotationEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4034
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    .line 4035
    .local v2, "currentPage":I
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4036
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 4037
    .local v1, "clChildren":Lcom/android/launcher2/CellLayoutChildren;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 4038
    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4039
    .local v4, "v":Landroid/view/View;
    instance-of v5, v4, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v5, :cond_0

    .line 4040
    check-cast v4, Lcom/android/launcher2/SurfaceWidgetView;

    .end local v4    # "v":Landroid/view/View;
    invoke-virtual {v4}, Lcom/android/launcher2/SurfaceWidgetView;->orientationChange()V

    .line 4037
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4044
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v1    # "clChildren":Lcom/android/launcher2/CellLayoutChildren;
    .end local v2    # "currentPage":I
    .end local v3    # "j":I
    :cond_1
    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    sput v5, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    .line 4045
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4046
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 32
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/LauncherApplication;

    .line 407
    .local v12, "app":Lcom/android/launcher2/LauncherApplication;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.cocktailbar"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/Launcher;->is_TB:Z

    .line 410
    :cond_0
    const-string v4, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate. savedInstanceState: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_15

    const-string v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Launcher: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 413
    if-eqz p1, :cond_16

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Launcher;->mRemainSavedInstance:Z

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 416
    .local v25, "res":Landroid/content/res/Resources;
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config.densityDpi : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget v3, Lcom/android/launcher2/LauncherApplication;->sDensityDpi:I

    if-lez v3, :cond_1

    .line 419
    sget v3, Lcom/android/launcher2/LauncherApplication;->sDensityDpi:I

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v3, v4, :cond_1

    .line 420
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 423
    :cond_1
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v3, Lcom/android/launcher2/LauncherApplication;->sDensityDpi:I

    .line 425
    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 427
    const/high16 v3, 0x7f0d0000

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    sput v3, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    .line 429
    invoke-static/range {v25 .. v25}, Lcom/android/launcher2/FolderIconHelper;->initFolderResources(Landroid/content/res/Resources;)V

    .line 431
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    sput v3, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    .line 433
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    if-eqz v3, :cond_2

    .line 434
    const/4 v3, -0x4

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 438
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v3

    if-nez v3, :cond_19

    .line 440
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v10

    .line 441
    .local v10, "IsProvisioned":Z
    if-eqz v10, :cond_17

    .line 442
    const-string v3, "Launcher"

    const-string v4, "Set device_provisioned: 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 445
    const-string v3, "Launcher"

    const-string v4, "Confirm device_provisioned: 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v10    # "IsProvisioned":Z
    :cond_3
    :goto_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_setup_complete"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v9

    .line 456
    .local v9, "IsCompleteUserSetup":Z
    if-eqz v9, :cond_18

    .line 457
    const-string v3, "Launcher"

    const-string v4, "Set user_setup_complete: 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_setup_complete"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 460
    const-string v3, "Launcher"

    const-string v4, "Confirm user_setup_complete: 1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 479
    .end local v9    # "IsCompleteUserSetup":Z
    :cond_4
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Launcher_ReplaceHotseatAreaInEditMode"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 480
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    .line 481
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    .line 492
    :cond_5
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DYNAMICCSCFEATURE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DYNAMICCSCFEATURE:Z

    if-eqz v3, :cond_6

    .line 494
    if-nez p1, :cond_6

    .line 495
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.CSC_UPDATE_LAUNCHER_READY"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v19, "launcherReady":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    const-string v3, "DYNAMIC_CSC"

    const-string v4, "Launcher Ready intent BroadCasted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v19    # "launcherReady":Landroid/content/Intent;
    :cond_6
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->SEC_PRODUCT_FEATURE_LAUNCHER_KITKAT_ADD_TO_HOMESCREEN_CONCEPT:Z

    .line 515
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v20

    .line 516
    .local v20, "loader":Lcom/android/launcher2/ThemeLoader;
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/ThemeLoader;->isSupportTheme()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 517
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    .line 520
    :cond_7
    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_8

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HOMESCREENEDITMODE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " REPLACEHOTSEATAREAINEDITMODE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1a

    const/4 v3, 0x1

    :goto_4
    sput-boolean v3, Lcom/android/launcher2/Launcher;->UseQwertyKeypad:Z

    .line 523
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    .line 525
    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/launcher2/LauncherModel;->initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V

    .line 527
    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 528
    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    .line 531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherModel;->hasLocaleChanged()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    if-eqz v3, :cond_9

    .line 532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v3}, Lcom/android/launcher2/PkgResCache;->clear()V

    .line 535
    :cond_9
    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 536
    .local v24, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "SHOW_EMPTY_PAGE_MSG"

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 538
    .local v23, "pref":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->isMagazineHomeEnabled(Landroid/content/SharedPreferences;)V

    .line 541
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "ALTIUS"

    const-string v4, "ALTIUS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "HERA"

    const-string v4, "ALTIUS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 543
    :cond_a
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    .line 563
    :goto_5
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 564
    const/4 v3, 0x0

    sput v3, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    .line 571
    :goto_6
    const v3, 0x7f030030

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    .line 573
    sget-object v3, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v3}, Lcom/android/launcher2/SamsungWidgetPackageManager;->loadIfNeeded()V

    .line 576
    sget-object v3, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mSurfaceWidgetPackageManager:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->loadIfNeeded(Landroid/content/Context;)V

    .line 579
    const v3, 0x7f0f0077

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 580
    const v3, 0x7f0f00b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    .line 581
    const v3, 0x7f0f0090

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    .line 583
    const v3, 0x7f10002f

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 584
    .local v21, "optionsMenu":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v29

    .line 585
    .local v29, "viewToast":Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v4, 0x7f0f00bb

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/FrameLayout;

    .line 586
    .local v22, "popup_icon":Landroid/widget/FrameLayout;
    if-eqz v22, :cond_b

    .line 587
    new-instance v3, Lcom/android/launcher2/Launcher$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v3, v0, v1}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;Landroid/widget/Toast;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 598
    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 599
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setHoverPopupType(I)V

    .line 600
    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 601
    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    const/16 v4, 0x3035

    invoke-virtual {v3, v4}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 602
    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    const v4, 0x7f0e0018

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v5, 0x7f0e0019

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 604
    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    .line 609
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v28

    .line 610
    .local v28, "transaction":Landroid/app/FragmentTransaction;
    if-eqz p1, :cond_1f

    .line 611
    const-string v3, "extra_home_view_hidden"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v30

    .line 612
    .local v30, "wasHomeHidden":Z
    if-eqz v30, :cond_1e

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    .line 614
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    sget v4, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 627
    .end local v30    # "wasHomeHidden":Z
    :goto_7
    invoke-virtual/range {v28 .. v28}, Landroid/app/FragmentTransaction;->commit()I

    .line 630
    sget v3, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->setWhichTransitionEffect(I)V

    .line 632
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v3, :cond_c

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    invoke-virtual {v3, v4}, Lcom/android/launcher2/LauncherModel;->startLoader(Z)V

    .line 635
    :cond_c
    new-instance v15, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v15, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 636
    .local v15, "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 637
    new-instance v27, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.action.talkback_off"

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 638
    .local v27, "talkbackFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mTalkbackEnableReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 641
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/BadgeCountReceiver;->initialize(Landroid/content/Context;)Lcom/android/launcher2/BadgeCountReceiver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

    .line 644
    const v3, 0x7f0b0009

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 645
    new-instance v3, Lcom/android/launcher2/ChangeCallAppReceiver;

    invoke-direct {v3}, Lcom/android/launcher2/ChangeCallAppReceiver;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mChangeCallAppReceiver:Lcom/android/launcher2/ChangeCallAppReceiver;

    .line 646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mChangeCallAppReceiver:Lcom/android/launcher2/ChangeCallAppReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/ChangeCallAppReceiver;->init(Lcom/android/launcher2/HomeView;)V

    .line 656
    :cond_d
    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v3, :cond_e

    .line 657
    new-instance v3, Lcom/android/launcher2/FestivalPageManager;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher2/FestivalPageManager;-><init>(Lcom/android/launcher2/Launcher;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mFestivalPageManager:Lcom/android/launcher2/FestivalPageManager;

    .line 658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mFestivalPageManager:Lcom/android/launcher2/FestivalPageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/FestivalPageManager;->initFestivalPage(Lcom/android/launcher2/HomeView;)V

    .line 662
    :cond_e
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 666
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.APP_MARKET"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 669
    .local v18, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    if-eqz v3, :cond_f

    .line 671
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 674
    :cond_f
    const v3, 0x7f0f008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    .line 676
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->setIndicatorTransparency()V

    .line 680
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->setSystemUiTransparency(Z)V

    .line 683
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_20

    .line 685
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 686
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 693
    :goto_8
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-lt v3, v4, :cond_21

    .line 694
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 699
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/launcher2/Launcher;->tryQueueWidgetAddViaIntent(Landroid/content/Intent;Ljava/lang/String;)Z

    .line 701
    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v3, :cond_10

    .line 702
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->mIsExpandStatusBar:Z

    .line 703
    :cond_10
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v3, :cond_11

    .line 704
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->addNonDisableAppToList()V

    .line 705
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->addNonDisableAppToListCsc()V

    .line 708
    :cond_11
    sget v3, Lcom/android/launcher2/LauncherApplication;->RemovablePreloadEnabled:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 709
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->addRemovablePreloadAppToList()V

    .line 710
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->addRemovableCustomerAppToList()V

    .line 711
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->addRemovableAppToList()V

    .line 715
    :cond_12
    const-string v3, "enterprise_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_13

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mEnterpriseDeviceManager:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mApplicationPolicy:Landroid/app/enterprise/ApplicationPolicy;

    .line 722
    :cond_13
    new-instance v3, Lcom/google/android/hotword/client/HotwordServiceClient;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/hotword/client/HotwordServiceClient;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Launcher;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    .line 724
    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->sIsTheFisrt:Z

    if-eqz v3, :cond_14

    .line 725
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    const-string v4, "HOME"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    int-to-long v6, v6

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 726
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 729
    .local v2, "cr":Landroid/content/ContentResolver;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->content_uri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v13

    .line 734
    .local v13, "cursor":Landroid/database/Cursor;
    :goto_a
    if-eqz v13, :cond_28

    .line 735
    :goto_b
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 736
    const-string v3, "isDSPEnabled"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 737
    .local v26, "s":Ljava/lang/String;
    const-string v3, "true"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 738
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->mAlwaysMicOn:Z

    goto :goto_b

    .line 410
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v15    # "filter":Landroid/content/IntentFilter;
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v20    # "loader":Lcom/android/launcher2/ThemeLoader;
    .end local v21    # "optionsMenu":Ljava/lang/String;
    .end local v22    # "popup_icon":Landroid/widget/FrameLayout;
    .end local v23    # "pref":Landroid/content/SharedPreferences;
    .end local v24    # "prefs":Landroid/content/SharedPreferences;
    .end local v25    # "res":Landroid/content/res/Resources;
    .end local v26    # "s":Ljava/lang/String;
    .end local v27    # "talkbackFilter":Landroid/content/IntentFilter;
    .end local v28    # "transaction":Landroid/app/FragmentTransaction;
    .end local v29    # "viewToast":Landroid/widget/Toast;
    :cond_15
    const-string v3, "not null"

    goto/16 :goto_0

    .line 413
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 448
    .restart local v10    # "IsProvisioned":Z
    .restart local v25    # "res":Landroid/content/res/Resources;
    :cond_17
    :try_start_3
    const-string v3, "Launcher"

    const-string v4, "database error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 450
    .end local v10    # "IsProvisioned":Z
    :catch_0
    move-exception v14

    .line 451
    .local v14, "e":Ljava/lang/Exception;
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Setting device_provisioned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 463
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v9    # "IsCompleteUserSetup":Z
    :cond_18
    :try_start_4
    const-string v3, "Launcher"

    const-string v4, "database error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 465
    .end local v9    # "IsCompleteUserSetup":Z
    :catch_1
    move-exception v14

    .line 466
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Setting user_setup_complete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 470
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_19
    const-string v3, "Launcher"

    const-string v4, "FactoryMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 522
    .restart local v20    # "loader":Lcom/android/launcher2/ThemeLoader;
    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 544
    .restart local v23    # "pref":Landroid/content/SharedPreferences;
    .restart local v24    # "prefs":Landroid/content/SharedPreferences;
    :cond_1b
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v3

    if-nez v3, :cond_1c

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsMagazineHomeEnable:Z

    if-nez v3, :cond_1c

    .line 545
    const-string v3, "pref_my_magazine"

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    goto/16 :goto_5

    .line 547
    :cond_1c
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    goto/16 :goto_5

    .line 566
    :cond_1d
    const-string v3, "pref_list_transition_effect"

    const-string v4, "1"

    move-object/from16 v0, v23

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 568
    .local v31, "whichTransitionEffect":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    goto/16 :goto_6

    .line 618
    .end local v31    # "whichTransitionEffect":Ljava/lang/String;
    .restart local v21    # "optionsMenu":Ljava/lang/String;
    .restart local v22    # "popup_icon":Landroid/widget/FrameLayout;
    .restart local v28    # "transaction":Landroid/app/FragmentTransaction;
    .restart local v29    # "viewToast":Landroid/widget/Toast;
    .restart local v30    # "wasHomeHidden":Z
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_7

    .line 624
    .end local v30    # "wasHomeHidden":Z
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    goto/16 :goto_7

    .line 688
    .restart local v15    # "filter":Landroid/content/IntentFilter;
    .restart local v18    # "intent":Landroid/content/Intent;
    .restart local v27    # "talkbackFilter":Landroid/content/IntentFilter;
    :cond_20
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    .line 689
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 690
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    goto/16 :goto_8

    .line 696
    :cond_21
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    goto/16 :goto_9

    .line 730
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    :catch_2
    move-exception v14

    .line 731
    .restart local v14    # "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .restart local v13    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_a

    .line 740
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v26    # "s":Ljava/lang/String;
    :cond_22
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/Launcher;->mAlwaysMicOn:Z

    goto/16 :goto_b

    .line 742
    .end local v26    # "s":Ljava/lang/String;
    :cond_23
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 746
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isBabyCryingEnable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/launcher2/Launcher;->mIsBabyCryingEnable:I

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isDoorbellEnable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/launcher2/Launcher;->mIsDoorbellEnable:I

    .line 748
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v3}, Lcom/sec/dtl/launcher/Talk;->checkTalkbackEnabled()Z

    move-result v3

    sput-boolean v3, Lcom/android/launcher2/Launcher;->mTalkbackEnable:Z

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->content_uri:Landroid/net/Uri;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mAlwaysMicOnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 751
    const-string v3, "isBabyCryingEnable"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mBabyCryingDetector:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 752
    const-string v3, "isDoorbellEnable"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Launcher;->mDoorbellDetector:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 754
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 755
    .local v17, "helpintent":Landroid/content/Intent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_25

    const-string v3, "homescreen:guide_mode"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    sget-boolean v3, Lcom/android/launcher2/Launcher;->isExitingFromHelp:Z

    if-nez v3, :cond_25

    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getRequestedOrientation()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher2/Launcher;->mPrevOrientationHelp:I

    .line 759
    const-string v3, "help_activity_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 760
    .local v16, "helpActivityName":Ljava/lang/String;
    const-string v3, "ExternalHelpActivity"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 761
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Launcher;->mIsExternalHelpActivity:Z

    .line 762
    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/launcher2/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 763
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    .line 765
    .end local v16    # "helpActivityName":Ljava/lang/String;
    :cond_25
    const-string v3, "ALTIUS"

    const-string v4, "ALTIUS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 766
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    .line 768
    :cond_26
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_GESTURE_WITH_IRSENSOR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    sget-boolean v3, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    if-eqz v3, :cond_27

    .line 770
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 771
    .local v11, "airGestureFilter":Landroid/content/IntentFilter;
    const-string v3, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-virtual {v11, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    const-string v3, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-virtual {v11, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mAirGestureSettingsChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 776
    .end local v11    # "airGestureFilter":Landroid/content/IntentFilter;
    :cond_27
    return-void

    .line 744
    .end local v17    # "helpintent":Landroid/content/Intent;
    :cond_28
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/Launcher;->mAlwaysMicOn:Z

    goto/16 :goto_c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1587
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1588
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-eqz v1, :cond_0

    .line 1590
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1591
    .local v0, "menuInflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f120000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1593
    .end local v0    # "menuInflater":Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1179
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_0

    .line 1180
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    .line 1182
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1183
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mAlwaysMicOnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1184
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mBabyCryingDetector:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1185
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mDoorbellDetector:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1187
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->onDestroy()V

    .line 1192
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    .line 1193
    const-string v4, "Launcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDestroy, Launcher: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 1195
    invoke-static {}, Lcom/android/launcher2/Utilities;->onDestroy()V

    .line 1201
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 1202
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherModel;->stopLoader()V

    .line 1203
    invoke-virtual {v0, v8}, Lcom/android/launcher2/LauncherApplication;->setLauncher(Lcom/android/launcher2/Launcher;)V

    .line 1205
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1206
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mTalkbackEnableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1208
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v4, :cond_1

    .line 1210
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 1211
    .local v3, "tempPopupStatus":Z
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v4}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    .line 1212
    iput-object v8, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    .line 1213
    sput-boolean v3, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 1216
    .end local v3    # "tempPopupStatus":Z
    :cond_1
    sget-object v4, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v4}, Lcom/sec/dtl/launcher/Talk;->shutdown()V

    .line 1219
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

    invoke-virtual {v4}, Lcom/android/launcher2/BadgeCountReceiver;->unregister()V

    .line 1222
    iget-boolean v4, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    if-eqz v4, :cond_2

    .line 1223
    iput-boolean v7, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    .line 1224
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/launcher2/Launcher;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1225
    .local v2, "home":Landroid/content/Intent;
    const/high16 v4, 0x14000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1229
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1230
    const/high16 v4, 0x200000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1231
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1233
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1235
    .end local v2    # "home":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ShadowGen;->onDestroy()V

    .line 1236
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 2270
    const-string v0, "Launcher"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDetachedFromWindow()V

    .line 2274
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHotwordServiceClient:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-virtual {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->onDetachedFromWindow()V

    .line 2276
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 2278
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 2279
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 2282
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    .line 2283
    return-void
.end method

.method public onGestureEvent(Lcom/samsung/android/service/gesture/GestureEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/samsung/android/service/gesture/GestureEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4094
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_1

    .line 4127
    :cond_0
    :goto_0
    return-void

    .line 4098
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4099
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4102
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 4104
    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_2

    const-string v1, "Launcher"

    const-string v2, "GESTURE_EVENT_SWEEP_LEFT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/android/launcher2/Workspace;->moveToLeftScreen(ZZ)V

    goto :goto_0

    .line 4106
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v1

    if-nez v1, :cond_0

    .line 4108
    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_4

    const-string v1, "Launcher"

    const-string v2, "GESTURE_EVENT_SWEEP_RIGHT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4109
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/launcher2/Workspace;->moveToLeftScreen(ZZ)V

    goto :goto_0

    .line 4111
    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4113
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getTabManager()Lcom/android/launcher2/tabs/TabManager;

    move-result-object v1

    const-string v2, "APPS"

    invoke-virtual {v1, v2}, Lcom/android/launcher2/tabs/TabManager;->getFragmentForTab(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 4114
    .local v0, "frag":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v1, :cond_0

    .line 4115
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 4117
    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_6

    const-string v1, "Launcher"

    const-string v2, "GESTURE_EVENT_SWEEP_LEFT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/android/launcher2/MenuAppsGrid;->scrollToLeft(ZZ)V

    goto/16 :goto_0

    .line 4119
    :cond_7
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v1

    if-nez v1, :cond_0

    .line 4121
    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_8

    const-string v1, "Launcher"

    const-string v2, "GESTURE_EVENT_SWEEP_RIGHT"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4122
    :cond_8
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/android/launcher2/MenuAppsGrid;->scrollToLeft(ZZ)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1689
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v8

    .line 1690
    .local v8, "uniChar":I
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 1691
    .local v3, "handled":Z
    if-lez v8, :cond_3

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v5, 0x1

    .line 1692
    .local v5, "isKeyNotWhitespace":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1694
    .local v0, "config":Landroid/content/res/Configuration;
    iget v10, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    .line 1695
    const/4 v10, 0x7

    if-lt p1, v10, :cond_6

    const/16 v10, 0x12

    if-gt p1, v10, :cond_6

    .line 1696
    const/4 v6, 0x0

    .line 1697
    .local v6, "myIntentDial":Landroid/content/Intent;
    const/4 v10, 0x7

    if-lt p1, v10, :cond_4

    const/16 v10, 0x10

    if-gt p1, v10, :cond_4

    .line 1698
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "myIntentDial":Landroid/content/Intent;
    const-string v10, "android.intent.action.DIAL"

    const-string v11, "tel:"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1709
    .restart local v6    # "myIntentDial":Landroid/content/Intent;
    :goto_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    .line 1710
    .local v7, "salesCode":Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v10, "CHZ"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "CHN"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "CHM"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "CHU"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "CTC"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "CHC"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1712
    :cond_0
    const-string v10, "firstKeycode"

    invoke-virtual {v6, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1714
    :cond_1
    const-string v10, "isKeyTone"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1716
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1717
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    .line 1764
    .end local v3    # "handled":Z
    .end local v6    # "myIntentDial":Landroid/content/Intent;
    .end local v7    # "salesCode":Ljava/lang/String;
    :cond_2
    :goto_2
    return v3

    .line 1691
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v5    # "isKeyNotWhitespace":Z
    .restart local v3    # "handled":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 1700
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v5    # "isKeyNotWhitespace":Z
    .restart local v6    # "myIntentDial":Landroid/content/Intent;
    :cond_4
    const/16 v10, 0x12

    if-ne p1, v10, :cond_5

    .line 1701
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "myIntentDial":Landroid/content/Intent;
    const-string v10, "android.intent.action.DIAL"

    const-string v11, "tel:"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1703
    .restart local v6    # "myIntentDial":Landroid/content/Intent;
    const-string v10, "isPoundKey"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 1705
    :cond_5
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "myIntentDial":Landroid/content/Intent;
    const-string v10, "android.intent.action.DIAL"

    const-string v11, "tel:"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v6    # "myIntentDial":Landroid/content/Intent;
    goto :goto_1

    .line 1720
    .end local v6    # "myIntentDial":Landroid/content/Intent;
    :cond_6
    const/16 v10, 0x1b

    if-ne p1, v10, :cond_9

    .line 1721
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1722
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v10, 0x4000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1723
    const/high16 v10, 0x10000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1724
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 1739
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_7
    :goto_3
    const/16 v10, 0x106

    if-ne p1, v10, :cond_8

    .line 1740
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1741
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 1745
    :cond_8
    if-nez v3, :cond_a

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v10

    if-eqz v10, :cond_a

    if-eqz v5, :cond_a

    .line 1746
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10, v11, v12, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 1748
    .local v2, "gotKey":Z
    if-eqz v2, :cond_a

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 1755
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v3

    goto :goto_2

    .line 1725
    .end local v2    # "gotKey":Z
    :cond_9
    const/16 v10, 0x43

    if-ne p1, v10, :cond_7

    .line 1726
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v9

    .line 1727
    .local v9, "workspace":Lcom/android/launcher2/Workspace;
    if-eqz v9, :cond_7

    sget-boolean v10, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v10, :cond_7

    .line 1728
    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 1729
    .local v1, "folder":Lcom/android/launcher2/Folder;
    if-nez v1, :cond_7

    .line 1731
    iget-object v10, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1732
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    goto :goto_3

    .line 1760
    .end local v1    # "folder":Lcom/android/launcher2/Folder;
    .end local v9    # "workspace":Lcom/android/launcher2/Workspace;
    :cond_a
    const/16 v10, 0x52

    if-ne p1, v10, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1761
    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3145
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v13, 0x400000

    const/high16 v12, 0x200000

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2330
    sput-boolean v10, Lcom/android/launcher2/Launcher;->isHelpIntentFired:Z

    .line 2331
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 2332
    sput-object p1, Lcom/android/launcher2/Launcher;->sInComingIntentHelpHub:Landroid/content/Intent;

    .line 2337
    const-string v9, "android.intent.action.MAIN"

    invoke-direct {p0, p1, v9}, Lcom/android/launcher2/Launcher;->tryQueueWidgetAddViaIntent(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v8

    .line 2338
    .local v8, "widgetAdded":Z
    iget-boolean v9, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-nez v9, :cond_1

    .line 2343
    sput-object p1, Lcom/android/launcher2/Launcher;->mPendingIntent:Landroid/content/Intent;

    .line 2439
    :cond_0
    :goto_0
    return-void

    .line 2346
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 2348
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->setIntent(Landroid/content/Intent;)V

    .line 2349
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2350
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2351
    const/4 v6, 0x0

    .line 2353
    .local v6, "notiID":I
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_8

    const-string v9, "homescreen:guide_mode"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 2354
    sget-boolean v9, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v9, :cond_2

    .line 2355
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    .line 2357
    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2358
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9, v11}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    .line 2359
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getRequestedOrientation()I

    move-result v9

    iput v9, p0, Lcom/android/launcher2/Launcher;->mPrevOrientationHelp:I

    .line 2366
    const-string v9, "help_activity_type"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2367
    .local v4, "helpActivityName":Ljava/lang/String;
    const-string v9, "ExternalHelpActivity"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2368
    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mIsExternalHelpActivity:Z

    .line 2369
    :cond_4
    invoke-static {p0, p1}, Lcom/android/launcher2/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2370
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher2/CreateFolderDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2372
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/android/launcher2/CreateFolderDialog;->dismiss(Landroid/app/FragmentManager;Z)V

    .line 2374
    :cond_5
    sput-boolean v10, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    .line 2376
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9, v10}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    .line 2424
    .end local v4    # "helpActivityName":Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 2426
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-boolean v9, v9, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    if-eqz v9, :cond_13

    .line 2427
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/launcher2/HomeView;->closeSystemDialogs(Ljava/lang/Boolean;)V

    .line 2430
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 2431
    .local v2, "fm":Landroid/app/FragmentManager;
    invoke-static {v2}, Lcom/android/launcher2/CreateFolderDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2432
    invoke-static {v2, v10}, Lcom/android/launcher2/CreateFolderDialog;->dismiss(Landroid/app/FragmentManager;Z)V

    .line 2433
    :cond_7
    invoke-static {v2}, Lcom/android/launcher2/DisableAppConfirmationDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2434
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 2435
    .local v3, "ft":Landroid/app/FragmentTransaction;
    invoke-static {v3, v2}, Lcom/android/launcher2/DisableAppConfirmationDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 2436
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 2378
    .end local v2    # "fm":Landroid/app/FragmentManager;
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v9

    and-int/2addr v9, v13

    if-eq v9, v13, :cond_f

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v9

    and-int/2addr v9, v12

    if-ne v9, v12, :cond_f

    .line 2381
    const-string v9, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_9

    .line 2382
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2383
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    if-nez v8, :cond_a

    move v9, v10

    :goto_3
    invoke-virtual {v12, v9}, Lcom/android/launcher2/MenuView;->onHomePressed(Z)Z

    move-result v9

    if-nez v9, :cond_9

    .line 2384
    const-string v9, "streetlife"

    const-string v12, "onNewIntent exitAllApps"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->hasWindowFocus()Z

    move-result v9

    if-eqz v9, :cond_b

    move v9, v11

    :goto_4
    invoke-virtual {p0, v11, v9}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    .line 2386
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 2388
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    .line 2400
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v7

    .line 2401
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 2402
    const-string v9, "input_method"

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 2403
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v5, v9, v11}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_1

    .end local v5    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v7    # "v":Landroid/view/View;
    :cond_a
    move v9, v11

    .line 2383
    goto :goto_3

    :cond_b
    move v9, v10

    .line 2385
    goto :goto_4

    .line 2392
    :cond_c
    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-nez v9, :cond_d

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v9

    sget-object v12, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v9, v12, :cond_9

    .line 2394
    :cond_d
    if-nez v6, :cond_9

    .line 2395
    iget-object v12, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-nez v8, :cond_e

    move v9, v10

    :goto_6
    invoke-virtual {v12, v9}, Lcom/android/launcher2/HomeView;->onHomePressed(Z)Z

    goto :goto_5

    :cond_e
    move v9, v11

    goto :goto_6

    .line 2406
    :cond_f
    const-string v9, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 2408
    const-string v9, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2409
    .local v1, "extra":Ljava/lang/String;
    const-string v9, "com.android.launcher2.IDLE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2410
    invoke-virtual {p0, v11, v10}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    goto/16 :goto_1

    .line 2412
    :cond_10
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->cancelAppFolderRemoveDialog()V

    goto/16 :goto_1

    .line 2418
    .end local v1    # "extra":Ljava/lang/String;
    :cond_11
    sget-boolean v9, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->isStartDragStarted()Z

    move-result v9

    if-nez v9, :cond_12

    .line 2419
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    .line 2421
    :cond_12
    invoke-virtual {p0, v11, v10}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    goto/16 :goto_1

    .line 2429
    :cond_13
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/launcher2/HomeView;->closeSystemDialogs(Ljava/lang/Boolean;)V

    goto/16 :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 20
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2636
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 2637
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->invalidateOptionsMenu()V

    .line 2639
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2810
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 2641
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->onClickstartDownloadableApps()V

    .line 2642
    const/4 v3, 0x1

    goto :goto_0

    .line 2644
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->onClickAppMarketButton()V

    .line 2645
    const/4 v3, 0x1

    goto :goto_0

    .line 2647
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2648
    const/4 v3, 0x1

    goto :goto_0

    .line 2650
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->onOptionSelectedSearch()V

    .line 2651
    const/4 v3, 0x1

    goto :goto_0

    .line 2653
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->onOptionSelectedUninstall()V

    .line 2654
    const/4 v3, 0x1

    goto :goto_0

    .line 2656
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->onOptionSelectedDownload()V

    .line 2657
    const/4 v3, 0x1

    goto :goto_0

    .line 2659
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->chooseViewType()V

    .line 2660
    const/4 v3, 0x1

    goto :goto_0

    .line 2662
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2663
    const/4 v3, 0x1

    goto :goto_0

    .line 2665
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_HIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2666
    const/4 v3, 0x1

    goto :goto_0

    .line 2668
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_UNHIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2669
    const/4 v3, 0x1

    goto :goto_0

    .line 2671
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_ENABLE:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2672
    const/4 v3, 0x1

    goto :goto_0

    .line 2674
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->MOVE_TO_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2675
    const/4 v3, 0x1

    goto :goto_0

    .line 2677
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FROM_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2678
    const/4 v3, 0x1

    goto :goto_0

    .line 2682
    :pswitch_d
    const-string v3, "search"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 2683
    .local v2, "searchManager":Landroid/app/SearchManager;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 2684
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2687
    .end local v2    # "searchManager":Landroid/app/SearchManager;
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    .line 2688
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2691
    :pswitch_f
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_0

    .line 2692
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 2693
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeView;->showWorkspaceEditmode(Z)V

    .line 2697
    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2695
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    goto :goto_1

    .line 2699
    :pswitch_10
    new-instance v15, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2700
    .local v15, "i":Landroid/content/Intent;
    const/high16 v3, 0x10200000

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2701
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2702
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2703
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2705
    .end local v15    # "i":Landroid/content/Intent;
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->onClickonlineHelp()V

    .line 2723
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2725
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    .line 2726
    .local v19, "workspace":Lcom/android/launcher2/Workspace;
    if-eqz v19, :cond_1

    .line 2727
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 2729
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v8, -0x66

    .line 2732
    .local v8, "container":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2733
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Launcher;->isFolderCreatedFromMenuButton:Z

    .line 2734
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static/range {v4 .. v13}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    .line 2736
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2729
    .end local v8    # "container":J
    :cond_3
    const-wide/16 v8, -0x64

    goto :goto_2

    .line 2738
    .end local v19    # "workspace":Lcom/android/launcher2/Workspace;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FOLDER:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2739
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2773
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 2774
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->shouldToastRepeat()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2775
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->createAndShow(Landroid/app/FragmentManager;)V

    .line 2778
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2777
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100020

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 2780
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->launchOptionWallpaper()V

    .line 2781
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2783
    :pswitch_16
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 2784
    .local v16, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.app.galaxyfinder"

    const-string v4, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2785
    new-instance v14, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.launcher"

    const-string v4, "com.sec.android.app.launcher.Launcher"

    invoke-direct {v14, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    .local v14, "component":Landroid/content/ComponentName;
    const-string v3, "componentname"

    invoke-virtual {v14}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2787
    const-string v3, "callername"

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2788
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 2789
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2792
    .end local v14    # "component":Landroid/content/ComponentName;
    .end local v16    # "intent":Landroid/content/Intent;
    :pswitch_17
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_USM_EXISTS:Z

    if-eqz v3, :cond_5

    .line 2793
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2794
    .local v18, "usmIntent":Landroid/content/Intent;
    const/high16 v3, 0x10200000

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2795
    const-string v3, "android.intent.category.USM_HOME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2796
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2798
    .end local v18    # "usmIntent":Landroid/content/Intent;
    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2802
    :pswitch_18
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v3, :cond_6

    .line 2803
    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.sec.android.intent.action.THEME_CHOOSER"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2805
    .local v17, "intentTheme":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 2807
    .end local v17    # "intentTheme":Landroid/content/Intent;
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2639
    :pswitch_data_0
    .packed-switch 0x7f0f00ed
        :pswitch_1
        :pswitch_2
        :pswitch_14
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_18
        :pswitch_f
        :pswitch_16
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_17
        :pswitch_10
        :pswitch_11
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1677
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1678
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->invalidateOptionsMenu()V

    .line 1679
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 1680
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 813
    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 814
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause, Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->onPause()V

    .line 816
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 817
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 818
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mResumed:Z

    .line 822
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->setSystemUiTransparency(Z)V

    .line 824
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_1

    .line 825
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 827
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 830
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 831
    .local v0, "pauseIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.HOME_PAUSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 833
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->pauseSensor()V

    .line 834
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1598
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1600
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1672
    :cond_0
    :goto_0
    return v3

    .line 1603
    :cond_1
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v5, :cond_0

    .line 1609
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_2

    .line 1610
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1614
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1616
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    .line 1617
    .local v4, "workspace":Lcom/android/launcher2/Workspace;
    if-eqz v4, :cond_3

    .line 1618
    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1619
    .local v0, "folder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_3

    .line 1620
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderAnimator;->isAnimating()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1623
    invoke-virtual {v0, v3, v3}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 1658
    .end local v0    # "folder":Lcom/android/launcher2/Folder;
    .end local v4    # "workspace":Lcom/android/launcher2/Workspace;
    :cond_3
    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eq v5, v7, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    if-eq v5, v7, :cond_0

    .line 1661
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setMarketLabel()V

    .line 1668
    const/4 v3, 0x1

    .line 1669
    .local v3, "res":Z
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mHasMenuKey:Z

    if-eqz v5, :cond_4

    .line 1670
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    .line 1671
    :cond_4
    sput-boolean v3, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    goto :goto_0

    .line 1629
    .end local v3    # "res":Z
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1630
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    .line 1631
    .local v2, "menuWidgets":Lcom/android/launcher2/MenuWidgets;
    if-eqz v2, :cond_3

    .line 1632
    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v5, v6, :cond_3

    goto :goto_0

    .line 1637
    .end local v2    # "menuWidgets":Lcom/android/launcher2/MenuWidgets;
    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_7

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_0

    .line 1642
    :cond_7
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_3

    .line 1643
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    .line 1644
    .local v1, "menuGrid":Lcom/android/launcher2/MenuAppsGrid;
    if-eqz v1, :cond_3

    .line 1645
    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1646
    .restart local v0    # "folder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_3

    .line 1647
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1650
    invoke-virtual {v0, v3, v3}, Lcom/android/launcher2/Folder;->close(ZZ)V

    goto :goto_1
.end method

.method protected onRestart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 798
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    sput-boolean v0, Lcom/android/launcher2/Launcher;->isHelpIntentFired:Z

    .line 799
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestart, Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    .line 801
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "change_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isExitingFromWallpaperActivity:Z

    if-eqz v0, :cond_0

    .line 802
    sput-boolean v3, Lcom/android/launcher2/Launcher;->isExitingFromWallpaperActivity:Z

    .line 803
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    .line 807
    :cond_0
    sput-boolean v3, Lcom/android/launcher2/Launcher;->sIsStopped:Z

    .line 808
    invoke-super {p0}, Landroid/app/ActivityGroup;->onRestart()V

    .line 809
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 839
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    sput-boolean v6, Lcom/android/launcher2/Launcher;->isHelpIntentFired:Z

    .line 840
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResume, Launcher: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 842
    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mResumed:Z

    .line 843
    iput-boolean v9, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 844
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "kids_home_mode"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 846
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->onResume()V

    .line 847
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    .line 851
    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->setSystemUiTransparency(Z)V

    .line 853
    invoke-static {p0}, Lcom/android/launcher2/Utilities;->broadcastStkIntent(Landroid/content/Context;)V

    .line 854
    iget-boolean v6, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v6, :cond_1

    .line 855
    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    invoke-virtual {v6, v7}, Lcom/android/launcher2/LauncherModel;->startLoader(Z)V

    .line 856
    iput-boolean v9, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 857
    iget-boolean v6, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v6, :cond_1

    .line 858
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v6}, Lcom/android/launcher2/SamsungWidgetPackageManager;->loadIfNeeded()V

    .line 859
    iput-boolean v9, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 864
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 865
    .local v2, "homeMode":Landroid/content/Intent;
    const-string v6, "com.android.launcher.action.HOME_MODE_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    const-string v6, "currentMode"

    const-string v7, "twlauncher"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 870
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 872
    const-string v6, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 873
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v6

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v6, :cond_8

    .line 874
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    .line 875
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 880
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 884
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isKnoxLauncher()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 886
    sget-boolean v6, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v6, :cond_4

    const-string v6, "Launcher"

    const-string v7, "Resumed Type : Knox Launcher"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iput-boolean v9, v6, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    .line 896
    sput-boolean v9, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 898
    sget-object v6, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v6}, Lcom/sec/dtl/launcher/Talk;->onResume()V

    .line 900
    sget-boolean v6, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v6, :cond_5

    .line 901
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 902
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 903
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resumed Orientation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resumed small width : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resumed density : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->addAnyPendingWidgetsToWorkspace()V

    .line 908
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->resumeSensor()V

    .line 910
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    .line 911
    .local v5, "ws":Lcom/android/launcher2/Workspace;
    if-eqz v5, :cond_7

    .line 912
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->removeHoverScrollHandler()V

    .line 913
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v6

    cmpl-float v6, v6, v11

    if-lez v6, :cond_6

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getIsDragOccuring()Z

    move-result v6

    if-nez v6, :cond_6

    .line 915
    invoke-virtual {v5, v11}, Lcom/android/launcher2/Workspace;->setBackgroundDarken(F)V

    .line 917
    :cond_6
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 918
    const/4 v1, 0x0

    .line 919
    .local v1, "darkenAmount":F
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0005

    invoke-virtual {v6, v7, v10, v10}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    .line 920
    invoke-virtual {v5, v1}, Lcom/android/launcher2/Workspace;->setBackgroundDarken(F)V

    .line 924
    .end local v1    # "darkenAmount":F
    :cond_7
    return-void

    .line 876
    .end local v5    # "ws":Lcom/android/launcher2/Workspace;
    :cond_8
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 877
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    goto/16 :goto_0

    .line 890
    :cond_9
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 891
    .local v4, "resumeIntent":Landroid/content/Intent;
    const-string v6, "com.sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 3927
    const-string v1, "extra_home_view_hidden"

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3928
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3929
    return-void

    .line 3927
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2088
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2090
    const v0, 0x7f040003

    const v1, 0x7f040004

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    .line 2091
    return v2
.end method

.method public onServiceConnected()V
    .locals 1

    .prologue
    .line 4084
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mGestureServiceConnected:Z

    .line 4085
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    .prologue
    .line 4089
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mGestureServiceConnected:Z

    .line 4090
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 790
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart, Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sIsStopped:Z

    .line 792
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 793
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->onStart()V

    .line 794
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1132
    sget-boolean v1, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 1133
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop, Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_0
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_2

    .line 1136
    sget-boolean v1, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    if-nez v1, :cond_1

    const-string v1, "resize_widgets"

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 1138
    :cond_1
    invoke-static {}, Lcom/android/launcher2/guide/GuideFragment;->removeWrongActionDialog()V

    .line 1139
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->exitHelp(Z)V

    .line 1143
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->onStop()V

    .line 1144
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/Launcher;->sIsStopped:Z

    .line 1145
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mResumed:Z

    .line 1146
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 1148
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 1149
    .local v0, "priority":I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_3

    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    if-eqz v1, :cond_3

    .line 1150
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1152
    :cond_3
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 3949
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory. Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    packed-switch p1, :pswitch_data_0

    .line 3992
    :cond_0
    :goto_0
    return-void

    .line 3953
    :pswitch_0
    const-string v0, "ALTIUS"

    const-string v1, "ALTIUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3954
    sget-boolean v0, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    .line 3955
    const-string v0, "Launcher"

    const-string v1, "Restarting SurfaceWidgets from onTrimMemory: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->restartSurfaceWidgets()V

    goto :goto_0

    .line 3951
    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 4768
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onWindowFocusChanged(Z)V

    .line 4769
    if-eqz p1, :cond_0

    .line 4775
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-nez v0, :cond_0

    .line 4776
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->setSystemUiTransparency(Z)V

    .line 4778
    :cond_0
    return-void
.end method

.method public registerForAirMotionGestureListner()V
    .locals 4

    .prologue
    .line 4133
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_GESTURE_WITH_IRSENSOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mGestureServiceConnected:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    if-eqz v0, :cond_0

    .line 4134
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mGestureListenerRegistered:Z

    if-nez v0, :cond_0

    .line 4135
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_item_move"

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mGestureListenerRegistered:Z

    .line 4139
    :cond_0
    return-void
.end method

.method public removeStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1251
    return-void
.end method

.method public restorePopupMenu()Z
    .locals 4

    .prologue
    .line 1113
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-eqz v2, :cond_2

    .line 1114
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-nez v2, :cond_0

    .line 1115
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_1

    .line 1116
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v3, 0x7f0f00a8

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1117
    .local v0, "downloadPopupButton":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    .line 1124
    .end local v0    # "downloadPopupButton":Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    .line 1125
    const/4 v2, 0x1

    .line 1127
    :goto_1
    return v2

    .line 1119
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    const v3, 0x7f0f00bb

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1121
    .local v1, "popupButton":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    goto :goto_0

    .line 1127
    .end local v1    # "popupButton":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public saveToastPopup(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "mIsRepeat"    # Ljava/lang/Boolean;

    .prologue
    .line 4271
    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4273
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4274
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "add.toast.popup.dismissed.key"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4275
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4276
    return-void
.end method

.method public saveToastPopupForDisableDialog(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "mIsRepeat"    # Ljava/lang/Boolean;

    .prologue
    .line 4217
    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4219
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4220
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "disable.toast.popup.dismissed.key"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4221
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4222
    return-void
.end method

.method public setEnableHeadlines(Z)V
    .locals 1
    .param p1, "isEnableHeadlines"    # Z

    .prologue
    .line 4712
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsMagazineHomeEnable:Z

    if-nez v0, :cond_0

    .line 4713
    sput-boolean p1, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    .line 4714
    :cond_0
    return-void
.end method

.method public setEnableHotWord(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 4718
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotwordServiceClient()Lcom/google/android/hotword/client/HotwordServiceClient;

    move-result-object v0

    .line 4719
    .local v0, "hotwordServiceClient":Lcom/google/android/hotword/client/HotwordServiceClient;
    if-eqz v0, :cond_0

    .line 4720
    sget-boolean v1, Lcom/android/launcher2/Launcher;->mTalkbackEnable:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/launcher2/Launcher;->mAlwaysMicOn:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/launcher2/Launcher;->mIsBabyCryingEnable:I

    if-nez v1, :cond_1

    sget v1, Lcom/android/launcher2/Launcher;->mIsDoorbellEnable:I

    if-nez v1, :cond_1

    .line 4721
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotwordServiceClient()Lcom/google/android/hotword/client/HotwordServiceClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/hotword/client/HotwordServiceClient;->requestHotwordDetection(Z)V

    .line 4725
    :cond_0
    :goto_0
    return-void

    .line 4723
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotwordServiceClient()Lcom/google/android/hotword/client/HotwordServiceClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/hotword/client/HotwordServiceClient;->requestHotwordDetection(Z)V

    goto :goto_0
.end method

.method public setEnableMenuButton(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2850
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2852
    :cond_0
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3516
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 3517
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 3522
    :goto_0
    return v0

    .line 3520
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    if-eqz v0, :cond_1

    .line 3521
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->loadIfNeeded()V

    .line 3522
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowEmptyPageMessagePref(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 3944
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mShowEmptyPageMsg:Z

    .line 3945
    return-void
.end method

.method setSystemUiTransparency(Z)V
    .locals 8
    .param p1, "bTransparent"    # Z

    .prologue
    const v7, 0x7fffffff

    const/high16 v6, 0x40000000    # 2.0f

    const v5, -0x8001

    .line 4782
    const-string v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 4783
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_0

    .line 4817
    :goto_0
    return-void

    .line 4786
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4788
    .local v2, "wmLp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 4789
    const/4 v1, -0x1

    .line 4791
    .local v1, "wallpaper_transparent":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android.wallpaper.settings_systemui_transparency"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4798
    :goto_1
    if-eqz v1, :cond_1

    .line 4799
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4800
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const v4, -0x40000001    # -1.9999999f

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4801
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const v4, 0x8000

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4813
    .end local v1    # "wallpaper_transparent":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4815
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher::setSystemUiTransparency(): getSystemUiVisibility() after setting  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4793
    .restart local v1    # "wallpaper_transparent":I
    :catch_0
    move-exception v0

    .line 4794
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "Launcher"

    const-string v4, "setSystemUiTransparency.SettingNotFoundException : set as TRUE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4795
    const/4 v1, 0x1

    goto :goto_1

    .line 4804
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v7

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4805
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4806
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 4809
    .end local v1    # "wallpaper_transparent":I
    :cond_2
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v7

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4810
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4811
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2
.end method

.method public setTransitionToAllApps(Z)V
    .locals 0
    .param p1, "stat"    # Z

    .prologue
    .line 1272
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    .line 1273
    return-void
.end method

.method public setWhichTransitionEffect(I)V
    .locals 4
    .param p1, "whichTransitionEffect"    # I

    .prologue
    .line 4728
    sput p1, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    .line 4730
    packed-switch p1, :pswitch_data_0

    .line 4741
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    .line 4744
    .local v0, "effect":Lcom/android/launcher2/PagedView$TransitionEffect;
    :goto_0
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting default transition effect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4745
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4747
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4748
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Workspace;->setDefaultTransitionEffect(Lcom/android/launcher2/PagedView$TransitionEffect;)V

    .line 4750
    :cond_0
    return-void

    .line 4732
    .end local v0    # "effect":Lcom/android/launcher2/PagedView$TransitionEffect;
    :pswitch_0
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    .line 4733
    .restart local v0    # "effect":Lcom/android/launcher2/PagedView$TransitionEffect;
    goto :goto_0

    .line 4735
    .end local v0    # "effect":Lcom/android/launcher2/PagedView$TransitionEffect;
    :pswitch_1
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    .line 4736
    .restart local v0    # "effect":Lcom/android/launcher2/PagedView$TransitionEffect;
    goto :goto_0

    .line 4738
    .end local v0    # "effect":Lcom/android/launcher2/PagedView$TransitionEffect;
    :pswitch_2
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->SPIRAL:Lcom/android/launcher2/PagedView$TransitionEffect;

    .line 4739
    .restart local v0    # "effect":Lcom/android/launcher2/PagedView$TransitionEffect;
    goto :goto_0

    .line 4730
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public shouldDisablePopupRepeat()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4225
    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4227
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "disable.toast.popup.dismissed.key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public shouldToastRepeat()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4279
    const-string v2, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4281
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "add.toast.popup.dismissed.key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public showAllApps()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1317
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->updateRunning()V

    .line 1321
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 1322
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->onPreShowAllApps()V

    .line 1323
    sget-boolean v8, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    if-nez v8, :cond_4

    .line 1324
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1325
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    .line 1326
    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    .line 1332
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 1337
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->onShowAllApps()V

    .line 1338
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v8, :cond_3

    .line 1339
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v8}, Landroid/animation/Animator;->cancel()V

    .line 1341
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1342
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    .line 1343
    .local v6, "provider":Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    invoke-interface {v6, v0}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectShowAllAppsAnimators(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 1328
    .end local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "provider":Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1329
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    .line 1330
    :cond_5
    sput-boolean v11, Lcom/android/launcher2/HomeScreenOptionMenu;->isWidgetTab:Z

    goto :goto_1

    .line 1345
    .restart local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v8, v9, :cond_7

    .line 1346
    const v8, 0x7f050006

    invoke-static {p0, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 1347
    .local v1, "darkenAnimator":Landroid/animation/Animator;
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1348
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    .end local v1    # "darkenAnimator":Landroid/animation/Animator;
    :cond_7
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuView:Lcom/android/launcher2/MenuView;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/MenuView;->setVisibility(I)V

    .line 1352
    sget-wide v2, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    .line 1353
    .local v2, "duration":J
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1354
    .local v7, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1355
    invoke-virtual {v7, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1356
    new-instance v8, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v8}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1357
    new-instance v8, Lcom/android/launcher2/Launcher$3;

    invoke-direct {v8, p0}, Lcom/android/launcher2/Launcher$3;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1373
    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    .line 1374
    iput-boolean v10, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 1375
    iput-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    .line 1376
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 1379
    sget-boolean v8, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v8, :cond_0

    .line 1380
    sget-object v8, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v9, "view_all_apps"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1382
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 1383
    .local v5, "mHandler":Landroid/os/Handler;
    new-instance v8, Lcom/android/launcher2/Launcher$4;

    invoke-direct {v8, p0}, Lcom/android/launcher2/Launcher$4;-><init>(Lcom/android/launcher2/Launcher;)V

    const-wide/16 v10, 0x3e8

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "callback"    # Lcom/android/launcher2/Launcher$ActivityResultCallback;

    .prologue
    .line 4358
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mActivityCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4359
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4360
    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3324
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3319
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3250
    const/high16 v13, 0x10000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3252
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 3254
    new-instance v2, Landroid/os/DVFSHelper;

    const/16 v13, 0xc

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    .line 3255
    .local v2, "dvfsHelper":Landroid/os/DVFSHelper;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/os/DVFSHelper;->onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 3258
    .end local v2    # "dvfsHelper":Landroid/os/DVFSHelper;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 3259
    .local v4, "extras":Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 3260
    .local v11, "shortcutIntent":Landroid/content/Intent;
    if-eqz v4, :cond_2

    .line 3261
    sget-boolean v13, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v13, :cond_1

    .line 3262
    const-string v13, "Launcher"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "shortcut extras:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    :cond_1
    const-string v13, "shortcutIntent"

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 3264
    .local v5, "intentUri":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 3266
    const/4 v13, 0x0

    :try_start_1
    invoke-static {v5, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v11

    .line 3273
    .end local v5    # "intentUri":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v11, :cond_5

    .line 3274
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 3291
    :goto_1
    const/4 v13, 0x1

    .line 3315
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v11    # "shortcutIntent":Landroid/content/Intent;
    :goto_2
    return v13

    .line 3267
    .restart local v4    # "extras":Landroid/os/Bundle;
    .restart local v5    # "intentUri":Ljava/lang/String;
    .restart local v11    # "shortcutIntent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 3268
    .local v3, "e":Ljava/net/URISyntaxException;
    const-string v13, "Launcher"

    const-string v14, "failed to parse shortcut intent URI"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 3292
    .end local v3    # "e":Ljava/net/URISyntaxException;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "intentUri":Ljava/lang/String;
    .end local v11    # "shortcutIntent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 3294
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 3296
    .local v9, "restore_cn":Landroid/content/ComponentName;
    if-eqz v9, :cond_3

    .line 3297
    :try_start_3
    new-instance v10, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v10, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3298
    .local v10, "restore_intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3299
    .local v8, "packageName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "market://details?id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3300
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3306
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "restore_intent":Landroid/content/Intent;
    :cond_3
    :goto_3
    const v13, 0x7f100002

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 3307
    sget-boolean v13, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v13, :cond_4

    const-string v13, "Launcher"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to launch. tag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " intent="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3315
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    .end local v9    # "restore_cn":Landroid/content/ComponentName;
    :cond_4
    :goto_4
    const/4 v13, 0x0

    goto :goto_2

    .line 3277
    .restart local v4    # "extras":Landroid/os/Bundle;
    .restart local v11    # "shortcutIntent":Landroid/content/Intent;
    :cond_5
    if-eqz p1, :cond_6

    const/4 v12, 0x1

    .line 3279
    .local v12, "useLaunchAnimation":Z
    :goto_5
    const/4 v7, 0x0

    .line 3281
    .local v7, "optsBundle":Landroid/os/Bundle;
    if-eqz v12, :cond_8

    .line 3282
    :try_start_4
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v13, v14, :cond_7

    const v13, 0x7f04000f

    const v14, 0x7f04000a

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 3285
    .local v6, "opts":Landroid/app/ActivityOptions;
    :goto_6
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 3286
    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 3308
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    .end local v7    # "optsBundle":Landroid/os/Bundle;
    .end local v11    # "shortcutIntent":Landroid/content/Intent;
    .end local v12    # "useLaunchAnimation":Z
    :catch_2
    move-exception v3

    .line 3309
    .local v3, "e":Ljava/lang/SecurityException;
    const v13, 0x7f100002

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 3310
    sget-boolean v13, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v13, :cond_4

    const-string v13, "Launcher"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Launcher does not have the permission to launch "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "or use the exported attribute for this activity. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "tag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " intent="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 3277
    .end local v3    # "e":Ljava/lang/SecurityException;
    .restart local v4    # "extras":Landroid/os/Bundle;
    .restart local v11    # "shortcutIntent":Landroid/content/Intent;
    :cond_6
    const/4 v12, 0x0

    goto :goto_5

    .line 3282
    .restart local v7    # "optsBundle":Landroid/os/Bundle;
    .restart local v12    # "useLaunchAnimation":Z
    :cond_7
    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v13, v14, v15, v1}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_6

    .line 3288
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 3302
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v7    # "optsBundle":Landroid/os/Bundle;
    .end local v11    # "shortcutIntent":Landroid/content/Intent;
    .end local v12    # "useLaunchAnimation":Z
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    .restart local v9    # "restore_cn":Landroid/content/ComponentName;
    :catch_3
    move-exception v13

    goto/16 :goto_3
.end method

.method public startActivityWithTransition(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4368
    const-string v0, "from_right"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4369
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;)Z

    .line 4370
    const/high16 v0, 0x7f040000

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    .line 4371
    return-void
.end method

.method public startActivityWithTransitionForHeadlines(Landroid/content/Intent;Z)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "moveFromFirstPage"    # Z

    .prologue
    const v6, 0x7f100002

    const/4 v5, 0x0

    .line 4374
    const/high16 v3, 0x30200000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4378
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4380
    new-instance v0, Landroid/os/DVFSHelper;

    const/16 v3, 0xc

    invoke-direct {v0, p0, v3}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    .line 4381
    .local v0, "dvfsHelper":Landroid/os/DVFSHelper;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/DVFSHelper;->onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 4384
    .end local v0    # "dvfsHelper":Landroid/os/DVFSHelper;
    :cond_0
    const/4 v2, 0x0

    .line 4385
    .local v2, "opts":Landroid/app/ActivityOptions;
    if-eqz p2, :cond_2

    .line 4386
    const v3, 0x7f040005

    const v4, 0x7f040008

    invoke-static {p0, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 4391
    :goto_0
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4404
    .end local v2    # "opts":Landroid/app/ActivityOptions;
    :cond_1
    :goto_1
    return-void

    .line 4389
    .restart local v2    # "opts":Landroid/app/ActivityOptions;
    :cond_2
    const v3, 0x7f040006

    const v4, 0x7f040007

    invoke-static {p0, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 4392
    .end local v2    # "opts":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v1

    .line 4393
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 4394
    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_1

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch. intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4395
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 4396
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 4397
    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_1

    .line 4398
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher does not have the permission to launch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "or use the exported attribute for this activity. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public startMagazineApp(Z)V
    .locals 4
    .param p1, "is3DAni"    # Z

    .prologue
    .line 4899
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4900
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4901
    const-string v2, "sstream.app"

    const-string v3, "sstream.app.activities.StreamActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4902
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4903
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4925
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 4922
    :catch_0
    move-exception v0

    .line 4923
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "Launcher"

    const-string v3, "S Stream Activity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 2103
    if-nez p1, :cond_0

    .line 2105
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 2107
    :cond_0
    if-nez p3, :cond_1

    .line 2108
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "appSearchData":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 2109
    .restart local p3    # "appSearchData":Landroid/os/Bundle;
    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    :cond_1
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 2114
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 2116
    return-void
.end method

.method public unRegisterAirMotionGestureListner()V
    .locals 2

    .prologue
    .line 4144
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_GESTURE_WITH_IRSENSOR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mGestureServiceConnected:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    if-eqz v0, :cond_0

    .line 4145
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mGestureListenerRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4146
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    .line 4147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mGestureListenerRegistered:Z

    .line 4150
    :cond_0
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4262
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4264
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const/16 v2, 0x6f

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4265
    return-void
.end method

.method public updateMotionGestureListner(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1
    .param p1, "newState"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .param p2, "oldState"    # Lcom/android/launcher2/MenuAppsGrid$State;

    .prologue
    .line 4163
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAirMoveOninSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    if-eqz v0, :cond_0

    .line 4164
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v0, :cond_1

    .line 4165
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->registerForAirMotionGestureListner()V

    .line 4170
    :cond_0
    :goto_0
    return-void

    .line 4166
    :cond_1
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v0, :cond_0

    .line 4167
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->unRegisterAirMotionGestureListner()V

    goto :goto_0
.end method

.method public updateMotionGestureListner(Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;)V
    .locals 1
    .param p1, "newState"    # Lcom/android/launcher2/Workspace$State;
    .param p2, "oldState"    # Lcom/android/launcher2/Workspace$State;

    .prologue
    .line 4153
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isAirMoveOninSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->bSupportAirMove:Z

    if-eqz v0, :cond_1

    .line 4154
    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p2, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p1, v0, :cond_2

    .line 4155
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->registerForAirMotionGestureListner()V

    .line 4160
    :cond_1
    :goto_0
    return-void

    .line 4156
    :cond_2
    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p1, v0, :cond_1

    .line 4157
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->unRegisterAirMotionGestureListner()V

    goto :goto_0
.end method
