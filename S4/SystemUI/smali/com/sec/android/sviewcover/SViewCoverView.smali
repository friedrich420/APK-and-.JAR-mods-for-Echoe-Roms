.class public Lcom/sec/android/sviewcover/SViewCoverView;
.super Landroid/widget/FrameLayout;
.source "SViewCoverView.java"

# interfaces
.implements Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;
.implements Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sviewcover/SViewCoverView$12;,
        Lcom/sec/android/sviewcover/SViewCoverView$DualClockSettingObserver;,
        Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;,
        Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_REMOTEVIEWS_UPDATE:Ljava/lang/String; = "com.samsung.cover.REMOTEVIEWS_UPDATE"

.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final ACTION_COVER_EVENT_FINISHED:Ljava/lang/String; = "com.sec.android.cover.notification.COVER_EVENT_FINISHED"

.field private static final ACTION_DASASTER_VIEW_UPDATE:Ljava/lang/String; = "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

.field private static final ACTION_REQUEST_REMOTE_VIEW:Ljava/lang/String; = "com.samsung.cover.REQUEST_REMOTEVIEWS"

.field public static final ALPHA_OPACITY:I = 0xff

.field public static final ALPHA_TRANS:I = 0x0

.field private static final CHANGE_COVER_BACKGROUND:Ljava/lang/String; = "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

.field private static final COVER_TYPE_FLIP_WALLET:I = 0x0

.field private static final COVER_TYPE_NONE:I = 0x2

.field private static final COVER_TYPE_SVIEW:I = 0x1

.field private static final COVER_TYPE_SVIEW_CHARGER:I = 0x3

.field private static final DEBUG:Z = true

.field private static final DUAL_SETTING_CHANGED:Ljava/lang/String; = "dualclock.dualclock_setting_changed"

.field public static final EMERGENCY_TIMER_ICON:[I

.field private static final FLOATING_MSG_HIDED:Ljava/lang/String; = "com.bst.floatingmsg.quicktalkhide"

.field private static final FLOATING_MSG_SHOWED:Ljava/lang/String; = "com.bst.floatingmsg.quicktalkshow"

.field private static final KEY_COUNTRY_NAME:Ljava/lang/String; = "aw_daemon_service_key_city_state"

.field private static final MGS_HIDE_SET_VISIBILITY_VIEW:I = 0x9

.field private static final MGS_SHOW_SET_VISIBILITY_VIEW:I = 0x8

.field private static final MSG_ADD_VIEW_TO_WINDOWMANAGER:I = 0x7

.field private static final MSG_BACKGROUND_COLOR_UPDATED:I = 0x6

.field private static final MSG_SCREEN_OFF:I = 0x14

.field private static final MSG_SET_CURRENT_CLIENT_ID:I = 0xb

.field private static final MSG_SET_PLAYBACK_STATE:I = 0xa

.field private static final MSG_SHOW_DEFAULT_WIDGET:I = 0x12e

.field private static final MSG_SHOW_MUSIC_WIDGET:I = 0x12d

.field private static final MSG_UPDATE_REMOTEVIEWS:I = 0x3

.field private static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field private static final PLAY_SEC_MUSIC:Ljava/lang/String; = "com.sec.android.music.musicservicecommnad.mediainfo"

.field private static final RECENT_CALLS:Ljava/lang/String; = "com.android.phone.action.RECENT_CALLS"

.field private static final REMOTE_DEFAULT_ID:I = 0x0

.field private static final REMOTE_MUSIC_PLAYER_ID:I = 0x1

.field private static final REMOTE_VIDEO_PLAYER_ID:I = 0x2

.field private static final SAMSUNG_MUSIC_PLAYER:Ljava/lang/String; = "com.sec.android.app.music"

.field private static final SAMSUNG_VIDEO_PLAYER:Ljava/lang/String; = "com.sec.android.app.videoplayer"

.field private static final SPEN_STATE:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field private static final SVIEWCOVER_FEATURE_LEVEL:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final SVIEW_BACKGROUND_CUSTOM:I = 0x0

.field private static final SVIEW_BACKGROUND_RANDOM:I = 0x1

.field private static final SVIEW_COVER_DIM_TIMEOUT_DEFAULT:I = 0x0

.field private static final SVIEW_COVER_DISPLAY_TIMEOUT_DEFAULT:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "SViewCoverView"

.field private static final VOICE_RECORD_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.voicenote"

.field public static final VZW_MSG_APP:Ljava/lang/String; = "com.verizon.messaging.vzmsgs"

.field private static final WALLPAPER_FILE_NAME:Ljava/lang/String; = "/cover_wallpaper.jpg"

.field private static cfmsService:Landroid/os/ICustomFrequencyManager;

.field private static mCoverOpen:Z

.field public static mIsAlphaModel:Z

.field private static mIsLgtModel:Z

.field private static mIsLgtModelChecked:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundBlackDim:Landroid/widget/ImageView;

.field private mBackgroundOption:I

.field private mBaseService:Lcom/sec/android/sviewcover/SViewCoverBase;

.field private mBatteryCharingText:Landroid/widget/TextView;

.field private mBatteryContainer:Landroid/widget/FrameLayout;

.field private mBatteryRemoteView:Landroid/view/View;

.field private mCalendarRemoteView:Landroid/view/View;

.field private mCameraPage:Landroid/view/View;

.field private mCameraShortcutObserver:Landroid/database/ContentObserver;

.field private mClockWidget:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

.field mCoverEventFinishRunnable:Ljava/lang/Runnable;

.field mCoverOpenedIntent:Landroid/content/Intent;

.field private mCurrentCoverBackgroundColor:I

.field private mCurrentCoverType:I

.field private mCurrentPageIndex:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

.field private mCurrntColor:I

.field private mDefaultWidget:Landroid/view/View;

.field private mDisasterAlertText:Landroid/widget/TextView;

.field private mDualClockSettingObserver:Lcom/sec/android/sviewcover/SViewCoverView$DualClockSettingObserver;

.field private mDualClockWidget:Landroid/view/View;

.field private mEmergencyBatteryText:Landroid/widget/TextView;

.field private mEmergencyContatiner:Landroid/widget/LinearLayout;

.field private mEmergencyDevider:Landroid/view/View;

.field private mEmergencyTimerImage:Landroid/widget/ImageView;

.field private mEmergencyTimerText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHomeMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

.field private mHomeWidget:Landroid/view/View;

.field private mIsAddedBatteryLowWidget:Z

.field private mIsAddedMissedEventWidget:Z

.field private mIsDualClock:Z

.field private mIsEmergencyMode:Z

.field private mIsKidsMode:Z

.field private mIsNotSCover1:Z

.field private mIsSamsungMusicPlayer:Z

.field private mIsSetupWizard:Z

.field private mIsWidgetInfoEnabled:Z

.field private mJCoverClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

.field private mJMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

.field private mJSoundWarningContainer:Landroid/widget/FrameLayout;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBatteryLevel:I

.field mLastBatteryPlugged:I

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field mMissedCallbacks:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

.field private mMissedEventNotificationView:Landroid/widget/TextView;

.field private mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

.field private mMissedEventWidgetLayout:Landroid/view/View;

.field private mMusicContatiner:Landroid/widget/FrameLayout;

.field private mMusicRemoteView:Landroid/view/View;

.field private mMusicWidget:Landroid/view/View;

.field private mMusicWidgetPauseTime:J

.field private mNeedToAddMissedEventWidget:Z

.field private mNeedToReloadBGupdate:Z

.field public mNotiListenerMissecCallCount:I

.field public mNotiListenerUnreadMessageCount:I

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field mNotifications:[Landroid/service/notification/StatusBarNotification;

.field private mPMS:Landroid/os/PowerManager;

.field private mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mRemoteControlClientId:I

.field private mRemoteController:Landroid/media/RemoteController;

.field private mSHealthContainer:Landroid/widget/FrameLayout;

.field private mSViewCoverBackground:Landroid/widget/ImageView;

.field private mSViewCoverClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

.field private mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

.field private mSViewCoverDualClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

.field private mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

.field private mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

.field private mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

.field private mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

.field private mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

.field private mSVoiceRemoteView:Landroid/view/View;

.field private mScreenOffHandler:Landroid/os/Handler;

.field private mSecurePopupTextView:Landroid/widget/TextView;

.field private mSecurePopupView:Landroid/widget/LinearLayout;

.field private mSettingPage:Landroid/view/View;

.field private mShealthRemoteView:Landroid/view/View;

.field private mShortcuts:Landroid/view/View;

.field private mShowTime:J

.field private mShowingCoverUI:Z

.field private mSoundWarningContainer:Landroid/widget/FrameLayout;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mStrEmergencyTimerD:Ljava/lang/String;

.field private mStrEmergencyTimerH:Ljava/lang/String;

.field private mStrEmergencyTimerM:Ljava/lang/String;

.field private mSuppressCoverUI:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mUnlockAreaLevel:I

.field mUpdateMissedEventCount:Ljava/lang/Runnable;

.field private mVolumeRemoteView:Landroid/view/View;

.field private mWeatherHealthContatiner:Landroid/widget/LinearLayout;

.field private mWindowManager:Landroid/view/WindowManager;

.field mWindowManagerHandler:Landroid/os/Handler;

.field private mWindowThemeText:Landroid/widget/TextView;

.field private mWindowThemeTextDevider:Landroid/widget/ImageView;

.field private musicControlHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverView;->cfmsService:Landroid/os/ICustomFrequencyManager;

    .line 167
    sput-boolean v2, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z

    .line 277
    const/16 v0, 0x9

    new-array v0, v0, [I

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->safety_ic_standby_time00:I

    aput v1, v0, v3

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->safety_ic_standby_time01:I

    aput v1, v0, v2

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->safety_ic_standby_time02:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->safety_ic_standby_time03:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->safety_ic_standby_time04:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->safety_ic_standby_time05:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->safety_ic_standby_time06:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->safety_ic_standby_time07:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->safety_ic_standby_time08:I

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/sviewcover/SViewCoverView;->EMERGENCY_TIMER_ICON:[I

    .line 306
    sput-boolean v3, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAlphaModel:Z

    .line 2577
    sput-boolean v3, Lcom/sec/android/sviewcover/SViewCoverView;->mIsLgtModel:Z

    .line 2578
    sput-boolean v3, Lcom/sec/android/sviewcover/SViewCoverView;->mIsLgtModelChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 638
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/sviewcover/SViewCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 639
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/sviewcover/SViewCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 643
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 646
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidgetPauseTime:J

    .line 152
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentCoverType:I

    .line 165
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBackgroundOption:I

    .line 168
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShowingCoverUI:Z

    .line 169
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 170
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 171
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAddedBatteryLowWidget:Z

    .line 173
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsDualClock:Z

    .line 174
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsWidgetInfoEnabled:Z

    .line 233
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mRemoteControlClientId:I

    .line 248
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSuppressCoverUI:Z

    .line 249
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mPhoneState:I

    .line 251
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWindowManagerHandler:Landroid/os/Handler;

    .line 254
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsSamsungMusicPlayer:Z

    .line 256
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    .line 257
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mLastBatteryLevel:I

    .line 258
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mLastBatteryPlugged:I

    .line 260
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNeedToReloadBGupdate:Z

    .line 262
    sget-object v0, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    .line 264
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsEmergencyMode:Z

    .line 265
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsKidsMode:Z

    .line 266
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsSetupWizard:Z

    .line 312
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsNotSCover1:Z

    .line 314
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverView$1;-><init>(Lcom/sec/android/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedCallbacks:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    .line 344
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverView$2;-><init>(Lcom/sec/android/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 552
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/sviewcover/SViewCoverView$3;-><init>(Lcom/sec/android/sviewcover/SViewCoverView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mScreenOffHandler:Landroid/os/Handler;

    .line 564
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/sviewcover/SViewCoverView$4;-><init>(Lcom/sec/android/sviewcover/SViewCoverView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    .line 1013
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$6;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverView$6;-><init>(Lcom/sec/android/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2056
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$7;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverView$7;-><init>(Lcom/sec/android/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverEventFinishRunnable:Ljava/lang/Runnable;

    .line 2342
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$8;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/sviewcover/SViewCoverView$8;-><init>(Lcom/sec/android/sviewcover/SViewCoverView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->musicControlHandler:Landroid/os/Handler;

    .line 2413
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$9;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverView$9;-><init>(Lcom/sec/android/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 2724
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNotiListenerMissecCallCount:I

    .line 2725
    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNotiListenerUnreadMessageCount:I

    .line 2739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNotifications:[Landroid/service/notification/StatusBarNotification;

    .line 2740
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$10;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverView$10;-><init>(Lcom/sec/android/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUpdateMissedEventCount:Ljava/lang/Runnable;

    .line 2787
    new-instance v0, Lcom/sec/android/sviewcover/SViewCoverView$11;

    invoke-direct {v0, p0}, Lcom/sec/android/sviewcover/SViewCoverView$11;-><init>(Lcom/sec/android/sviewcover/SViewCoverView;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 648
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    .line 653
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->init()V

    .line 654
    new-instance v0, Landroid/media/RemoteController;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-direct {v0, p1, v1}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mRemoteController:Landroid/media/RemoteController;

    .line 655
    return-void
.end method

.method private UpdateAlertVisibility(ZLjava/lang/String;)V
    .locals 3
    .param p1, "show"    # Z
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 1047
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateAlertVisibility show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDisasterAlertText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1049
    if-eqz p1, :cond_1

    .line 1050
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDisasterAlertText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDisasterAlertText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDisasterAlertText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverMissedEvents;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/sviewcover/SViewCoverView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->replaceText()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverDualClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mJCoverClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mScreenOffHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/sviewcover/SViewCoverView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->updateMissedEventWidget()V

    return-void
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->checkMusicWidgetTimteout()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/sviewcover/SViewCoverView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mPhoneState:I

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/sviewcover/SViewCoverView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mPhoneState:I

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mPMS:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->setClockVisibility()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/sviewcover/SViewCoverView;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverView;->UpdateAlertVisibility(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->updatesBatteryInfo()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/sviewcover/SViewCoverView;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentCoverType:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSHealthContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/sviewcover/SViewCoverView;Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;
    .param p1, "x1"    # Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverView;->handleRemoteView(Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/sviewcover/SViewCoverView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverView;->updateMissedEventWidget(II)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mLp:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->ensureEffectViewHidden()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverBase;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBaseService:Lcom/sec/android/sviewcover/SViewCoverBase;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/sviewcover/SViewCoverView;IZLandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/app/PendingIntent;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/sviewcover/SViewCoverView;->handleSetGenerationId(IZLandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/android/sviewcover/SViewCoverView;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/sviewcover/SViewCoverView;->handleSetPlaybackState(IJ)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDefaultWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/sviewcover/SViewCoverView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverView;->setEnableMusicWidget(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/media/RemoteController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mRemoteController:Landroid/media/RemoteController;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/android/sviewcover/SViewCoverView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverView;->isNotSupportContent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mJMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->updateBatteryContainer()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/sviewcover/SViewCoverView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsNotSCover1:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->makeSViewMeasureSpec()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShortcuts:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverColorSelector;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/sviewcover/SViewCoverView;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    return-object v0
.end method

.method private checkMusicWidgetTimteout()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/16 v6, 0x12e

    .line 501
    iget-wide v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidgetPauseTime:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 503
    .local v0, "currentTime":J
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last mMusicWidgetPauseTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidgetPauseTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentTime :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-wide v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidgetPauseTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 506
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time duration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidgetPauseTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "remove music widget"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->musicControlHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 510
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->musicControlHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->musicControlHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 513
    :cond_0
    iput-wide v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidgetPauseTime:J

    .line 516
    .end local v0    # "currentTime":J
    :cond_1
    return-void
.end method

.method private checkRoamingState()Z
    .locals 5

    .prologue
    .line 1021
    const-string v2, "ril.currentplmn"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, "currentplmn":Ljava/lang/String;
    const-string v2, "gsm.operator.isroaming"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, "isroaming":Ljava/lang/String;
    const-string v2, "oversea"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1024
    :cond_0
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Roaming network is connected("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v2, 0x1

    .line 1027
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkSetupWizard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1350
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsSetupWizard:Z

    .line 1356
    :goto_0
    return-void

    .line 1354
    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsSetupWizard:Z

    goto :goto_0
.end method

.method private createIndexWallpaperFile()V
    .locals 10

    .prologue
    .line 957
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getCustomWallpaperFolderPath()Ljava/lang/String;

    move-result-object v4

    .line 959
    .local v4, "imageDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 960
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 961
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 964
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cover_index_wallpaper.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 965
    .local v3, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 966
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 984
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "imageDir":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 970
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "imageDir":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->ALPHA_WALLPAPER:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 972
    .local v6, "walllpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 973
    .local v5, "out":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_1

    .line 974
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 977
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 979
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "imageDir":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 980
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "SViewCoverView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveImageFile : File saving failed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private createWallpaperfolder()V
    .locals 10

    .prologue
    .line 1124
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getCustomWallpaperFolderPath()Ljava/lang/String;

    move-result-object v4

    .line 1126
    .local v4, "imageDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1128
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1131
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/sec/android/sviewcover/R$drawable;->sviewcover_wallpaper:I

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1133
    .local v6, "walllpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cover_wallpaper.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1135
    .local v3, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1136
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1150
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "imageDir":Ljava/lang/String;
    .end local v6    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 1140
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "imageDir":Ljava/lang/String;
    .restart local v6    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1141
    .local v5, "out":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_1

    .line 1142
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1143
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 1144
    const-string v7, "SViewCoverView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createWallpaperfolder to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1146
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "imageDir":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .end local v6    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 1147
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "SViewCoverView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveImageFile : File saving failed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private disableStatusBarGradation(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 1472
    const-string v0, "SViewCoverView"

    const-string v1, "disableStatusBarGradation : disable gradation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_0
    return-void
.end method

.method private ensureEffectViewHidden()V
    .locals 2

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    if-eqz v0, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-virtual {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverView;->removeView(Landroid/view/View;)V

    .line 1410
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->addView(Landroid/view/View;I)V

    .line 1411
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->requestLayout()V

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->setVisibility(I)V

    .line 1415
    :cond_1
    return-void
.end method

.method private getBackgroundOption()I
    .locals 3

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_random"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getBackgroundWallPaperOption()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1664
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_color_wallpaper"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getCustomWallpaperDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1164
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1165
    .local v0, "newFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 1166
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 1168
    :cond_0
    return-object v0
.end method

.method private getCustomWallpaperFolderPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1153
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_bg_wallpaper_path"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, "imageDir":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1155
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->getCustomWallpaperDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1156
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_bg_wallpaper_path"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1160
    :cond_0
    return-object v0
.end method

.method public static getFestivalIcon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "festivalday"    # Ljava/lang/String;

    .prologue
    .line 2592
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_festival_effect_package"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2594
    .local v1, "mThemePackageName":Ljava/lang/String;
    const-string v2, "festivalrespreload2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 2596
    .local v0, "mIsTheme":I
    :goto_0
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFestivalIcon() : festivalday="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    const-string v2, "birthday"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2600
    if-nez v0, :cond_1

    .line 2601
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_birthday:I

    .line 2646
    :goto_1
    return v2

    .line 2594
    .end local v0    # "mIsTheme":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2603
    .restart local v0    # "mIsTheme":I
    :cond_1
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_birthday:I

    goto :goto_1

    .line 2604
    :cond_2
    const-string v2, "new_year"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2605
    if-nez v0, :cond_3

    .line 2606
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_new_year:I

    goto :goto_1

    .line 2608
    :cond_3
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_new_year:I

    goto :goto_1

    .line 2609
    :cond_4
    const-string v2, "chinese_new_year"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2610
    if-nez v0, :cond_5

    .line 2611
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_cnew_year:I

    goto :goto_1

    .line 2613
    :cond_5
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_cnew_year:I

    goto :goto_1

    .line 2614
    :cond_6
    const-string v2, "lantern"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2615
    if-nez v0, :cond_7

    .line 2616
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_lantern:I

    goto :goto_1

    .line 2618
    :cond_7
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_lantern:I

    goto :goto_1

    .line 2619
    :cond_8
    const-string v2, "valentine"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2620
    if-nez v0, :cond_9

    .line 2621
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_valentine:I

    goto :goto_1

    .line 2623
    :cond_9
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_valentine:I

    goto :goto_1

    .line 2624
    :cond_a
    const-string v2, "dragon_boat"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2625
    if-nez v0, :cond_b

    .line 2626
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_dragonboat:I

    goto :goto_1

    .line 2628
    :cond_b
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_dragonboat:I

    goto :goto_1

    .line 2629
    :cond_c
    const-string v2, "chinese_valentine"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2630
    if-nez v0, :cond_d

    .line 2631
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_cvalentine:I

    goto :goto_1

    .line 2633
    :cond_d
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_cvalentine:I

    goto :goto_1

    .line 2634
    :cond_e
    const-string v2, "mid_autumn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2635
    if-nez v0, :cond_f

    .line 2636
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_mid_autumn:I

    goto :goto_1

    .line 2638
    :cond_f
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_mid_autumn:I

    goto :goto_1

    .line 2639
    :cond_10
    const-string v2, "christmas"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2640
    if-nez v0, :cond_11

    .line 2641
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_christmas:I

    goto/16 :goto_1

    .line 2643
    :cond_11
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest2_christmas:I

    goto/16 :goto_1

    .line 2646
    :cond_12
    sget v2, Lcom/sec/android/sviewcover/R$drawable;->fest_new_year:I

    goto/16 :goto_1
.end method

.method private getRandomBackgroundColor()I
    .locals 7

    .prologue
    .line 1673
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1674
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    const/high16 v6, -0x1000000

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1680
    .local v0, "currentColor":I
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1681
    .local v1, "date":Ljava/util/Date;
    const-string v4, "dd"

    invoke-static {v4, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1682
    .local v2, "day":I
    const/4 v3, -0x1

    .line 1684
    .local v3, "newColor":I
    rem-int/lit8 v4, v2, 0xa

    if-nez v4, :cond_1

    .line 1685
    sget-object v4, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    const/16 v5, 0x9

    aget v3, v4, v5

    .line 1689
    :goto_1
    const-string v4, "SViewCoverView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRandomBackgroundColor( day = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) , newColor : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentColor :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    if-eq v3, v0, :cond_2

    .line 1693
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1697
    .end local v3    # "newColor":I
    :goto_2
    return v3

    .line 1677
    .end local v0    # "currentColor":I
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "day":I
    :cond_0
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    const v6, -0xd1e5f3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "currentColor":I
    goto :goto_0

    .line 1687
    .restart local v1    # "date":Ljava/util/Date;
    .restart local v2    # "day":I
    .restart local v3    # "newColor":I
    :cond_1
    sget-object v4, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    rem-int/lit8 v5, v2, 0xa

    add-int/lit8 v5, v5, -0x1

    aget v3, v4, v5

    goto :goto_1

    :cond_2
    move v3, v0

    .line 1697
    goto :goto_2
.end method

.method private getSViewCoverSystemFeatureLevel()V
    .locals 4

    .prologue
    .line 740
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 741
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 742
    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    .line 743
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this Cover app level is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    return-void
.end method

.method private gotoOpenPage()V
    .locals 11

    .prologue
    const v10, 0x10008000

    const/high16 v9, 0x10000000

    const/4 v8, 0x1

    .line 2065
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 2161
    :cond_0
    :goto_0
    return-void

    .line 2069
    :cond_1
    const-string v5, "SViewCoverView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gotoMissedPage current page index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mHomeMissedEventWidget.getMissedCallCount() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v7}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getMissedCallCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v5}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 2077
    iget-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsSetupWizard:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2078
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v5}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getOpenCoverPopupState()I

    move-result v5

    if-nez v5, :cond_2

    .line 2079
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getCustomWallpaperFolderPath()Ljava/lang/String;

    move-result-object v2

    .line 2080
    .local v2, "imageDir":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cover_wallpaper.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2081
    .local v1, "filePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 2082
    .local v4, "wallpaperUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2083
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "image/*"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2084
    const-string v5, "com.sec.android.gallery3d"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2085
    const-string v5, "crop"

    const-string v6, "true"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2086
    const-string v5, "output"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2087
    const-string v5, "aspectX"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2088
    const-string v5, "aspectY"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2089
    const-string v5, "scale"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2090
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2092
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2093
    :catch_0
    move-exception v0

    .line 2094
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    const-string v5, "SViewCoverView"

    const-string v6, "ActivityNotFoundException !!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2097
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "imageDir":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "wallpaperUri":Landroid/net/Uri;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2098
    .restart local v3    # "intent":Landroid/content/Intent;
    sget-boolean v5, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAlphaModel:Z

    if-eqz v5, :cond_3

    .line 2099
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.SViewColor2014"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2106
    :goto_1
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2108
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2112
    :goto_2
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    if-eqz v5, :cond_0

    .line 2113
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setVisibility(I)V

    goto/16 :goto_0

    .line 2102
    :cond_3
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.SViewColor"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 2109
    :catch_1
    move-exception v0

    .line 2110
    .restart local v0    # "exception":Landroid/content/ActivityNotFoundException;
    const-string v5, "SViewCoverView"

    const-string v6, "ActivityNotFoundException !!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2116
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    sget-object v6, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->NotiPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    if-ne v5, v6, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2118
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v5}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getMissedCallCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 2120
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2121
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2123
    :try_start_2
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2124
    :catch_2
    move-exception v0

    .line 2125
    .restart local v0    # "exception":Landroid/content/ActivityNotFoundException;
    const-string v5, "SViewCoverView"

    const-string v6, "ActivityNotFoundException !!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2129
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->isVzwMsgAppDefault()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2130
    const-string v5, "SViewCoverView"

    const-string v6, "Default message app is VZW"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2134
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2135
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2136
    const-string v5, "com.android.mms"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2137
    const-string v5, "vnd.android-dir/mms-sms"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2138
    const-string v5, "fromScover"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2140
    :try_start_3
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 2141
    :catch_3
    move-exception v0

    .line 2142
    .restart local v0    # "exception":Landroid/content/ActivityNotFoundException;
    const-string v5, "SViewCoverView"

    const-string v6, "ActivityNotFoundException !!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2145
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    sget-object v6, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->SettingPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    if-ne v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2146
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v5}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 2150
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2151
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.Settings$DockSettingsActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2153
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2155
    :try_start_4
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 2156
    :catch_4
    move-exception v0

    .line 2157
    .restart local v0    # "exception":Landroid/content/ActivityNotFoundException;
    const-string v5, "SViewCoverView"

    const-string v6, "ActivityNotFoundException !!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleRemoteView(Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;)V
    .locals 9
    .param p1, "coverRemoteViews"    # Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1521
    const-string v6, "SViewCoverView"

    const-string v7, "handleUpdateRemoteView"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    iget-object v2, p1, Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;->type:Ljava/lang/String;

    .line 1523
    .local v2, "type":Ljava/lang/String;
    iget-boolean v3, p1, Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;->visibility:Z

    .line 1524
    .local v3, "visibility":Z
    iget-object v1, p1, Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;->remoteViews:Landroid/widget/RemoteViews;

    .line 1526
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    const-string v6, "shealth"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1528
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.shealth"

    const/4 v7, 0x5

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1530
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSHealthContainer:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_1

    .line 1531
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSHealthContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_0
    iput-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShealthRemoteView:Landroid/view/View;

    .line 1533
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->updateSHealthContainer()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1601
    :cond_2
    :goto_0
    return-void

    .line 1534
    :catch_0
    move-exception v0

    .line 1535
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "SViewCoverView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateRemoteView PackageManager.NameNotFoundException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSHealthContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_2

    .line 1539
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSHealthContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto :goto_0

    .line 1543
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const-string v6, "music"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1544
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicContatiner:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_5

    .line 1545
    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicContatiner:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_4
    iput-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicRemoteView:Landroid/view/View;

    .line 1547
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->updateMusicContainer()V

    goto :goto_0

    .line 1549
    :cond_6
    const-string v6, "battery"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1550
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_8

    .line 1551
    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_7
    iput-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryRemoteView:Landroid/view/View;

    .line 1554
    :cond_8
    iput-boolean v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAddedBatteryLowWidget:Z

    .line 1556
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWeatherHealthContatiner:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_9

    .line 1557
    iget-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAddedBatteryLowWidget:Z

    if-ne v4, v8, :cond_a

    .line 1558
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWeatherHealthContatiner:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1564
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->updateBatteryContainer()V

    goto :goto_0

    .line 1560
    :cond_a
    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWeatherHealthContatiner:Landroid/widget/LinearLayout;

    iget-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsWidgetInfoEnabled:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_b
    move v4, v5

    goto :goto_2

    .line 1566
    :cond_c
    const-string v5, "svoice"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1567
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_e

    .line 1568
    if-eqz v3, :cond_d

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_d
    iput-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSVoiceRemoteView:Landroid/view/View;

    .line 1570
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->updateBatteryContainer()V

    .line 1571
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToHomePage()V

    .line 1572
    invoke-direct {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    goto/16 :goto_0

    .line 1574
    :cond_f
    const-string v5, "calendar"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1575
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_11

    .line 1576
    if-eqz v3, :cond_10

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_10
    iput-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCalendarRemoteView:Landroid/view/View;

    .line 1578
    :cond_11
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->updateBatteryContainer()V

    goto/16 :goto_0

    .line 1580
    :cond_12
    const-string v5, "volume"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1581
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    if-ne v5, v8, :cond_15

    .line 1582
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mJSoundWarningContainer:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_14

    .line 1583
    if-eqz v3, :cond_13

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mJSoundWarningContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_13
    iput-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mVolumeRemoteView:Landroid/view/View;

    .line 1585
    :cond_14
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->updateSoundWarningContainer()V

    goto/16 :goto_0

    .line 1586
    :cond_15
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_16

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_19

    .line 1587
    :cond_16
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSoundWarningContainer:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_18

    .line 1588
    if-eqz v3, :cond_17

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSoundWarningContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_17
    iput-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mVolumeRemoteView:Landroid/view/View;

    .line 1590
    :cond_18
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->updateSoundWarningContainer()V

    goto/16 :goto_0

    .line 1592
    :cond_19
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2

    .line 1593
    if-eqz v3, :cond_1a

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_1a
    iput-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mVolumeRemoteView:Landroid/view/View;

    .line 1595
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->updateBatteryContainer()V

    .line 1596
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToHomePage()V

    .line 1597
    invoke-direct {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    goto/16 :goto_0
.end method

.method private handleSetGenerationId(IZLandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "clinetGeneration"    # I
    .param p2, "clearing"    # Z
    .param p3, "p"    # Landroid/app/PendingIntent;

    .prologue
    .line 2493
    if-eqz p2, :cond_0

    .line 2494
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverView;->setEnableMusicWidget(Z)V

    .line 2496
    :cond_0
    return-void
.end method

.method private handleSetPlaybackState(IJ)V
    .locals 4
    .param p1, "playbackState"    # I
    .param p2, "eventTime"    # J

    .prologue
    const/16 v3, 0x12e

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 2499
    invoke-direct {p0, p1}, Lcom/sec/android/sviewcover/SViewCoverView;->isMusicPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getRemoteControlClientId()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 2500
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/sviewcover/SViewCoverView;->setEnableMusicWidget(Z)V

    .line 2501
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidgetPauseTime:J

    .line 2502
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->musicControlHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2503
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->musicControlHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2519
    :cond_0
    :goto_0
    return-void

    .line 2505
    :cond_1
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidget:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z

    if-nez v0, :cond_3

    .line 2507
    if-ne v2, p1, :cond_2

    .line 2508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidgetPauseTime:J

    .line 2509
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetPlaybackState playBackState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mMusicWidgetPauseTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidgetPauseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2513
    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->setEnableMusicWidget(Z)V

    goto :goto_0

    .line 2516
    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->setEnableMusicWidget(Z)V

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 659
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.cover.OPEN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpenedIntent:Landroid/content/Intent;

    .line 661
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 662
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 664
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 665
    const-string v2, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 670
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 671
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 672
    const-string v2, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 673
    const-string v2, "dualclock.dualclock_setting_changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    const-string v2, "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    const-string v2, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    const-string v2, "com.bst.floatingmsg.quicktalkshow"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    const-string v2, "com.bst.floatingmsg.quicktalkhide"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 684
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 685
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 687
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 689
    new-instance v2, Lcom/sec/android/sviewcover/SViewCoverView$DualClockSettingObserver;

    invoke-direct {v2, p0}, Lcom/sec/android/sviewcover/SViewCoverView$DualClockSettingObserver;-><init>(Lcom/sec/android/sviewcover/SViewCoverView;)V

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDualClockSettingObserver:Lcom/sec/android/sviewcover/SViewCoverView$DualClockSettingObserver;

    .line 690
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dualclock_menu_settings"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDualClockSettingObserver:Lcom/sec/android/sviewcover/SViewCoverView$DualClockSettingObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 694
    new-instance v2, Lcom/sec/android/sviewcover/SViewCoverView$5;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/sec/android/sviewcover/SViewCoverView$5;-><init>(Lcom/sec/android/sviewcover/SViewCoverView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraShortcutObserver:Landroid/database/ContentObserver;

    .line 723
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "set_shortcuts_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraShortcutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 727
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getBackgroundOption()I

    move-result v2

    iput v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBackgroundOption:I

    .line 729
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 732
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getSViewCoverSystemFeatureLevel()V

    .line 735
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->requestRemoteViews()V

    .line 736
    return-void
.end method

.method public static isAlpahModel()Z
    .locals 1

    .prologue
    .line 309
    sget-boolean v0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAlphaModel:Z

    return v0
.end method

.method public static isChinaFeature()Z
    .locals 2

    .prologue
    .line 2650
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2652
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "CTC"

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

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2657
    :cond_0
    const/4 v1, 0x1

    .line 2660
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCoverOpen()Z
    .locals 1

    .prologue
    .line 2332
    sget-boolean v0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z

    return v0
.end method

.method private isGuestMode()Z
    .locals 3

    .prologue
    .line 2554
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2555
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityManager.getCurrentUser() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKoreaFeature()Z
    .locals 2

    .prologue
    .line 2664
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2666
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2669
    :cond_0
    const/4 v1, 0x1

    .line 2672
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLGTModel()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2581
    sget-boolean v1, Lcom/sec/android/sviewcover/SViewCoverView;->mIsLgtModelChecked:Z

    if-nez v1, :cond_2

    .line 2582
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2583
    .local v0, "SalesCode":Ljava/lang/String;
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

    if-eqz v1, :cond_1

    .line 2584
    :cond_0
    sput-boolean v2, Lcom/sec/android/sviewcover/SViewCoverView;->mIsLgtModel:Z

    .line 2586
    :cond_1
    sput-boolean v2, Lcom/sec/android/sviewcover/SViewCoverView;->mIsLgtModelChecked:Z

    .line 2588
    :cond_2
    sget-boolean v1, Lcom/sec/android/sviewcover/SViewCoverView;->mIsLgtModel:Z

    return v1
.end method

.method private isMusicPlaying(I)Z
    .locals 1
    .param p1, "playbackState"    # I

    .prologue
    .line 2522
    packed-switch p1, :pswitch_data_0

    .line 2533
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2529
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2522
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isNotSupportContent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "contentName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 2485
    const-string v1, "com.sec.android.app.voicenote"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2489
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeSViewMeasureSpec()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 2164
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v4, :cond_0

    .line 2168
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverPager;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2170
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2172
    .local v2, "res":Landroid/content/res/Resources;
    sget v4, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v3, v4, v5

    .line 2174
    .local v3, "width":I
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2176
    .local v0, "height":I
    const-string v4, "SViewCoverView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeSViewMeasureSpec width :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/sviewcover/SViewCoverPager;->measure(II)V

    .line 2181
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "width":I
    :cond_0
    return-void
.end method

.method private onSViewCoverHide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1418
    const-string v1, "SViewCoverView"

    const-string v2, "handleHide()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const-string v1, "CoverUI"

    const-string v2, "onSViewCoverHide()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsNotSCover1:Z

    if-eqz v1, :cond_0

    .line 1428
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SViewPager Count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v3}, Lcom/sec/android/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_0
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1434
    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverView;->setUseWindowStatusBarGradation(Z)V

    .line 1435
    const-string v1, ""

    invoke-direct {p0, v4, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->UpdateAlertVisibility(ZLjava/lang/String;)V

    .line 1437
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->checkMusicWidgetTimteout()V

    .line 1439
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidget:Landroid/view/View;

    instance-of v1, v1, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    if-eqz v1, :cond_1

    .line 1440
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidget:Landroid/view/View;

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .line 1441
    .local v0, "musicwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->unRegisterRemoteController()V

    .line 1445
    .end local v0    # "musicwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1446
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1448
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShowingCoverUI:Z

    if-eqz v1, :cond_2

    .line 1449
    invoke-direct {p0, v4}, Lcom/sec/android/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 1450
    iput-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShowingCoverUI:Z

    .line 1451
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsNotSCover1:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z

    if-eqz v1, :cond_2

    .line 1452
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToHomePage()V

    .line 1455
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsNotSCover1:Z

    if-eqz v1, :cond_3

    .line 1456
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShortcuts:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1457
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShortcuts:Landroid/view/View;

    check-cast v1, Lcom/sec/android/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v1, v4}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->setMarquee(Z)V

    .line 1460
    :cond_3
    return-void

    .line 1423
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onSViewCoverShow()V
    .locals 14

    .prologue
    const/4 v13, -0x2

    const/4 v12, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 1172
    const-string v4, "SViewCoverView"

    const-string v8, "SViewCoverView : onSViewCoverShow"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const-string v4, "CoverUI"

    const-string v8, "onSViewCoverShow()"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, -0x1

    invoke-virtual {v4, v8, v9, v10}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    :goto_0
    sget-boolean v4, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z

    if-eqz v4, :cond_0

    .line 1185
    const-string v4, "SViewCoverView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleShow( not show SViewCover) mCoverOpen ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :goto_1
    return-void

    .line 1180
    :catch_0
    move-exception v2

    .line 1181
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "SViewCoverView"

    const-string v8, "Unable to register notification listener"

    invoke-static {v4, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1193
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v4, "SViewCoverView"

    const-string v8, "onSViewCoverShow()"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    const/4 v8, 0x3

    if-ne v4, v8, :cond_2

    .line 1196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShowTime:J

    .line 1197
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    if-eqz v4, :cond_1

    .line 1198
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-virtual {v4, v6}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->stopAnimation(Z)V

    .line 1199
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->ensureEffectViewHidden()V

    .line 1202
    :cond_1
    invoke-direct {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->setUseWindowStatusBarGradation(Z)V

    .line 1203
    invoke-direct {p0, v6, v6}, Lcom/sec/android/sviewcover/SViewCoverView;->setStatusBarGradationColor(ZI)V

    .line 1204
    invoke-direct {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->disableStatusBarGradation(Z)V

    .line 1206
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidget:Landroid/view/View;

    instance-of v4, v4, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    if-eqz v4, :cond_2

    .line 1207
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidget:Landroid/view/View;

    check-cast v3, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .line 1208
    .local v3, "musicwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    invoke-virtual {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->registerRemoteController()V

    .line 1211
    .end local v3    # "musicwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x9

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1212
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1214
    iget-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsNotSCover1:Z

    if-eqz v4, :cond_3

    .line 1215
    const-string v4, "SViewCoverView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SViewPager Count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v9}, Lcom/sec/android/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->makeSViewMeasureSpec()V

    .line 1217
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShortcuts:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1218
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShortcuts:Landroid/view/View;

    check-cast v4, Lcom/sec/android/sviewcover/SViewCoverShortcuts;

    invoke-virtual {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->setMarquee(Z)V

    .line 1222
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToHomePage()V

    .line 1224
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    if-eqz v4, :cond_a

    .line 1225
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    iget v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrntColor:I

    invoke-virtual {v4, v8}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->updateCurrentCoverColor(I)V

    .line 1230
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->updatesBatteryInfo()V

    .line 1232
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "kids_home_mode"

    invoke-static {v4, v8, v6, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_b

    move v1, v5

    .line 1234
    .local v1, "currentKidsMode":Z
    :goto_3
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "set_shortcuts_mode"

    invoke-static {v4, v8, v5, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_c

    move v0, v5

    .line 1236
    .local v0, "cameraShortcut":Z
    :goto_4
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "lock_additional_info"

    invoke-static {v4, v8, v5, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_d

    move v4, v5

    :goto_5
    iput-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsWidgetInfoEnabled:Z

    .line 1239
    iget-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsKidsMode:Z

    if-eq v4, v1, :cond_4

    .line 1240
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsKidsMode:Z

    .line 1241
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1243
    :cond_4
    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsKidsMode:Z

    .line 1245
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->checkSetupWizard()V

    .line 1247
    iget-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsKidsMode:Z

    if-eqz v4, :cond_e

    .line 1248
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    if-eqz v4, :cond_5

    .line 1249
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1250
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setSettingContainerVisibility(I)V

    .line 1251
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setCameraContainerVisibility(I)V

    .line 1252
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setNotiContainerVisibility(I)V

    .line 1253
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setPageNavigationVisibility(I)V

    .line 1254
    invoke-direct {p0, v6}, Lcom/sec/android/sviewcover/SViewCoverView;->setEnableMusicWidget(Z)V

    .line 1257
    :cond_5
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    .line 1258
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1259
    :cond_6
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWeatherHealthContatiner:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_7

    .line 1260
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWeatherHealthContatiner:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1328
    :cond_7
    :goto_6
    invoke-direct {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    .line 1330
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWindowThemeText:Landroid/widget/TextView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWindowThemeTextDevider:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    .line 1331
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->isGuestMode()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1332
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWindowThemeText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1333
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWindowThemeTextDevider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1341
    :cond_8
    :goto_7
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    if-eqz v4, :cond_9

    .line 1342
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->updateMissedEvents()V

    .line 1344
    :cond_9
    iput-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShowingCoverUI:Z

    goto/16 :goto_1

    .line 1227
    .end local v0    # "cameraShortcut":Z
    .end local v1    # "currentKidsMode":Z
    :cond_a
    const-string v4, "SViewCoverView"

    const-string v8, "mSViewCoverColorSelector is null, not yet ready "

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    move v1, v6

    .line 1232
    goto/16 :goto_3

    .restart local v1    # "currentKidsMode":Z
    :cond_c
    move v0, v6

    .line 1234
    goto/16 :goto_4

    .restart local v0    # "cameraShortcut":Z
    :cond_d
    move v4, v6

    .line 1236
    goto :goto_5

    .line 1262
    :cond_e
    iget-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsSetupWizard:Z

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    if-eqz v4, :cond_f

    .line 1263
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setSettingContainerVisibility(I)V

    .line 1264
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setCameraContainerVisibility(I)V

    .line 1265
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setNotiContainerVisibility(I)V

    .line 1266
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setPageNavigationVisibility(I)V

    goto :goto_6

    .line 1267
    :cond_f
    iget-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsEmergencyMode:Z

    if-eqz v4, :cond_13

    .line 1268
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    if-eqz v4, :cond_10

    .line 1269
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    invoke-virtual {v4, v8}, Lcom/sec/android/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    .line 1272
    :cond_10
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    if-eqz v4, :cond_11

    .line 1273
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setSettingContainerVisibility(I)V

    .line 1274
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setCameraContainerVisibility(I)V

    .line 1275
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v4, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setPageNavigationVisibility(I)V

    .line 1278
    :cond_11
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWeatherHealthContatiner:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_12

    .line 1279
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWeatherHealthContatiner:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1282
    :cond_12
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1283
    iput-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNeedToReloadBGupdate:Z

    .line 1285
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    .line 1286
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 1290
    :cond_13
    if-ne v0, v5, :cond_1a

    .line 1291
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_14

    .line 1292
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v9}, Lcom/sec/android/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/sviewcover/SViewCoverPager;->addView(Landroid/view/View;I)V

    .line 1300
    :cond_14
    :goto_8
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    if-eqz v4, :cond_15

    .line 1301
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v4, v6}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setSettingContainerVisibility(I)V

    .line 1302
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    if-eqz v0, :cond_1b

    move v4, v6

    :goto_9
    invoke-virtual {v8, v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setCameraContainerVisibility(I)V

    .line 1304
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v4, v6}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setNotiContainerVisibility(I)V

    .line 1305
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v4, v6}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setPageNavigationVisibility(I)V

    .line 1308
    :cond_15
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyContatiner:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_16

    .line 1309
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyContatiner:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1312
    :cond_16
    iget-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNeedToReloadBGupdate:Z

    if-eqz v4, :cond_17

    .line 1313
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1314
    iput-boolean v6, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNeedToReloadBGupdate:Z

    .line 1317
    :cond_17
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    if-eqz v4, :cond_18

    .line 1318
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1321
    :cond_18
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryRemoteView:Landroid/view/View;

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryRemoteView:Landroid/view/View;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryRemoteView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_7

    .line 1323
    :cond_19
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWeatherHealthContatiner:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_7

    .line 1324
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWeatherHealthContatiner:Landroid/widget/LinearLayout;

    iget-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsWidgetInfoEnabled:Z

    if-eqz v4, :cond_1c

    move v4, v6

    :goto_a
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 1295
    :cond_1a
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    if-eqz v4, :cond_14

    .line 1296
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    invoke-virtual {v4, v8}, Lcom/sec/android/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    goto :goto_8

    :cond_1b
    move v4, v7

    .line 1302
    goto :goto_9

    .line 1324
    :cond_1c
    const/4 v4, 0x4

    goto :goto_a

    .line 1335
    :cond_1d
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWindowThemeText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1336
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWindowThemeTextDevider:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method private playAnimationAndHide()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShowTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0xc8

    cmp-long v7, v8, v10

    if-gez v7, :cond_0

    move v4, v5

    .line 1365
    .local v4, "quickShowHide":Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v5, :cond_1

    move v3, v5

    .line 1367
    .local v3, "portrait":Z
    :goto_1
    const/4 v3, 0x0

    .line 1368
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mPMS:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->hasWindowFocus()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v3, :cond_4

    .line 1370
    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->setDrawingCacheEnabled(Z)V

    .line 1371
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1373
    .local v2, "cache":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 1380
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v5, v7, :cond_2

    .line 1381
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1383
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1384
    .local v1, "c":Landroid/graphics/Canvas;
    const/16 v5, 0xff

    invoke-virtual {v1, v5, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1385
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v12, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1389
    .end local v1    # "c":Landroid/graphics/Canvas;
    :goto_2
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-virtual {v5, v0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1390
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-virtual {v5, v6}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->setVisibility(I)V

    .line 1391
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-virtual {v5}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->startHideAnimation()V

    .line 1393
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, -0x801

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1394
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, p0, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1399
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_3
    invoke-virtual {p0, v6}, Lcom/sec/android/sviewcover/SViewCoverView;->setDrawingCacheEnabled(Z)V

    .line 1400
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->destroyDrawingCache()V

    .line 1404
    .end local v2    # "cache":Landroid/graphics/Bitmap;
    :goto_4
    return-void

    .end local v3    # "portrait":Z
    .end local v4    # "quickShowHide":Z
    :cond_0
    move v4, v6

    .line 1364
    goto :goto_0

    .restart local v4    # "quickShowHide":Z
    :cond_1
    move v3, v6

    .line 1365
    goto :goto_1

    .line 1387
    .restart local v2    # "cache":Landroid/graphics/Bitmap;
    .restart local v3    # "portrait":Z
    :cond_2
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 1396
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->onSViewCoverHide()V

    goto :goto_3

    .line 1402
    .end local v2    # "cache":Landroid/graphics/Bitmap;
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->onSViewCoverHide()V

    goto :goto_4
.end method

.method private removeCoverStateBroadCastAsUser()V
    .locals 3

    .prologue
    .line 1493
    const-string v0, "SViewCoverView"

    const-string v1, "removeCoverStateBroadCastAsUser "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpenedIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1495
    return-void
.end method

.method private replaceText()V
    .locals 2

    .prologue
    .line 537
    const-string v0, "SViewCoverView"

    const-string v1, "replaceText()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventNotificationView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventNotificationView:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->volumepanel_notification:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSecurePopupTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSecurePopupTextView:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_missed_event_secured_popup:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 547
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_emergency_timer_d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mStrEmergencyTimerD:Ljava/lang/String;

    .line 548
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_emergency_timer_h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mStrEmergencyTimerH:Ljava/lang/String;

    .line 549
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$string;->s_view_cover_emergency_timer_m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mStrEmergencyTimerM:Ljava/lang/String;

    .line 550
    return-void
.end method

.method private requestRemoteViews()V
    .locals 3

    .prologue
    .line 2827
    const-string v1, "SViewCoverView"

    const-string v2, "requestRemoteViews : Requesting latest remote views to apps.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2829
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2830
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2831
    return-void
.end method

.method private sendCoverEventProcessingFinishedNotification()V
    .locals 5

    .prologue
    .line 2048
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    .line 2049
    .local v0, "coverOpened":Z
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.cover.notification.COVER_EVENT_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2050
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "coverOpen"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2051
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2053
    const-string v2, "SViewCoverView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cover event processing notification sent : coverOpened = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    return-void
.end method

.method private sendCoverStateBroadCastAsUser()V
    .locals 3

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpenedIntent:Landroid/content/Intent;

    const-string v1, "coverOpen"

    sget-boolean v2, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1505
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cover open = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , broadcasted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    return-void
.end method

.method private setClockVisibility()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1031
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dualclock_menu_settings"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsDualClock:Z

    .line 1033
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsDualClock:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->checkRoamingState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1034
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mClockWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDualClockWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mClockWidget:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1044
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1031
    goto :goto_0

    .line 1039
    :cond_2
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mClockWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDualClockWidget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mClockWidget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setEnableMusicWidget(Z)V
    .locals 2
    .param p1, "needMusicWidget"    # Z

    .prologue
    .line 2336
    if-eqz p1, :cond_0

    .line 2337
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->musicControlHandler:Landroid/os/Handler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2340
    :goto_0
    return-void

    .line 2339
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->musicControlHandler:Landroid/os/Handler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setKidsModeWallpaper()V
    .locals 5

    .prologue
    .line 1102
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$drawable;->sview_cover_kids_wallpaper:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 1104
    .local v1, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 1106
    .local v2, "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_0

    .line 1107
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 1110
    .restart local v2    # "newWallpaperDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 1116
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1117
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 1119
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverView;->setBackgroundBlackDim(I)V

    .line 1120
    return-void

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setStatusBarDisable(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1464
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBar Disable state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1468
    :cond_0
    return-void
.end method

.method private setStatusBarGradationColor(ZI)V
    .locals 2
    .param p1, "visibility"    # Z
    .param p2, "color"    # I

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 1479
    const-string v0, "SViewCoverView"

    const-string v1, "setStatusBarGradationColor : set color"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_0
    return-void
.end method

.method private setUseWindowStatusBarGradation(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 1487
    const-string v0, "SViewCoverView"

    const-string v1, "setUseWindowStatusBarGradation : use window gradation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_0
    return-void
.end method

.method private setWallpaper()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1074
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getCustomWallpaperFolderPath()Ljava/lang/String;

    move-result-object v3

    .line 1075
    .local v3, "imageDir":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/cover_wallpaper.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1076
    .local v2, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1078
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1080
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_pager_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    .line 1081
    .local v6, "screenWidth":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$dimen;->sview_cover_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    .line 1083
    .local v5, "screenHeight":I
    invoke-static {v2, v6, v5}, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->getAppropriateSampleSize(Ljava/lang/String;II)I

    move-result v8

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1085
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1086
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1087
    .local v7, "wallpaper":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 1088
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 1089
    invoke-virtual {p0, v10}, Lcom/sec/android/sviewcover/SViewCoverView;->setBackgroundBlackDim(I)V

    .line 1090
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1093
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "screenHeight":I
    .end local v6    # "screenWidth":I
    .end local v7    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private declared-synchronized updateBatteryContainer()V
    .locals 5

    .prologue
    .line 1725
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 1726
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1728
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mVolumeRemoteView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1729
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mVolumeRemoteView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1730
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1731
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mVolumeRemoteView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1733
    :cond_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mVolumeRemoteView:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1777
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1737
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryRemoteView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1738
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryRemoteView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1739
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 1740
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryRemoteView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1742
    :cond_3
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryRemoteView:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1725
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1746
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSVoiceRemoteView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 1747
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSVoiceRemoteView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1748
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_5

    .line 1749
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSVoiceRemoteView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1751
    :cond_5
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSVoiceRemoteView:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 1755
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_6
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    .line 1756
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getMissedEventCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1757
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1758
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_7

    .line 1759
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1761
    :cond_7
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1763
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V

    goto :goto_0

    .line 1767
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_8
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCalendarRemoteView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1768
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCalendarRemoteView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1769
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_9

    .line 1770
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCalendarRemoteView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1772
    :cond_9
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCalendarRemoteView:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private updateEmergencyContainer(II)V
    .locals 16
    .param p1, "batteryLevel"    # I
    .param p2, "batteryStatus"    # I

    .prologue
    .line 1780
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyContatiner:Landroid/widget/LinearLayout;

    if-nez v13, :cond_0

    .line 1875
    :goto_0
    return-void

    .line 1784
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyContatiner:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_1

    .line 1785
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyContatiner:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1788
    :cond_1
    const/4 v5, 0x0

    .local v5, "iStandbyTime_min":I
    const/4 v7, 0x0

    .local v7, "iUsagetime_min":I
    const/4 v6, 0x0

    .line 1789
    .local v6, "iUsagetime_hour":I
    const/4 v4, 0x0

    .local v4, "iStandbyTime_hour":I
    const/4 v3, 0x0

    .line 1791
    .local v3, "iStandbyTime_day":I
    const-string v13, "SViewCoverView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive() : batteryLevel="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    if-nez p1, :cond_2

    .line 1793
    const/16 p1, 0x1

    .line 1795
    :cond_2
    const/4 v13, 0x5

    move/from16 v0, p1

    if-le v0, v13, :cond_a

    .line 1796
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyTimerImage:Landroid/widget/ImageView;

    if-eqz v13, :cond_3

    .line 1797
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyTimerImage:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1802
    :cond_3
    :try_start_0
    sget-object v13, Lcom/sec/android/sviewcover/SViewCoverView;->cfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v13, :cond_4

    .line 1803
    const-string v13, "CustomFrequencyManagerService"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1804
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_4

    .line 1805
    invoke-static {v1}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v13

    sput-object v13, Lcom/sec/android/sviewcover/SViewCoverView;->cfmsService:Landroid/os/ICustomFrequencyManager;

    .line 1809
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_4
    sget-object v13, Lcom/sec/android/sviewcover/SViewCoverView;->cfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v13, :cond_5

    .line 1811
    sget-object v13, Lcom/sec/android/sviewcover/SViewCoverView;->cfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v13}, Landroid/os/ICustomFrequencyManager;->getStandbyTimeInUltraPowerSavingMode()I

    move-result v5

    .line 1814
    div-int/lit8 v4, v5, 0x3c

    .line 1817
    sget-object v13, Lcom/sec/android/sviewcover/SViewCoverView;->cfmsService:Landroid/os/ICustomFrequencyManager;

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Landroid/os/ICustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v7

    .line 1820
    div-int/lit8 v6, v7, 0x3c

    .line 1821
    const-string v13, "SViewCoverView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive() : returned value = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1837
    :cond_5
    :goto_1
    sget v9, Lcom/sec/android/sviewcover/R$drawable;->safety_ic_standby_time00:I

    .line 1841
    .local v9, "timerResourceId":I
    sget-object v13, Lcom/sec/android/sviewcover/SViewCoverView;->EMERGENCY_TIMER_ICON:[I

    array-length v13, v13

    add-int/lit8 v14, p1, -0x1

    div-int/lit8 v14, v14, 0xb

    sub-int/2addr v13, v14

    add-int/lit8 v8, v13, -0x1

    .line 1843
    .local v8, "timerIndex":I
    if-gez v8, :cond_6

    .line 1844
    const/4 v8, 0x0

    .line 1846
    :cond_6
    sget-object v13, Lcom/sec/android/sviewcover/SViewCoverView;->EMERGENCY_TIMER_ICON:[I

    aget v9, v13, v8

    .line 1848
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyTimerImage:Landroid/widget/ImageView;

    if-eqz v13, :cond_7

    .line 1849
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyTimerImage:Landroid/widget/ImageView;

    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1853
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyBatteryText:Landroid/widget/TextView;

    if-eqz v13, :cond_8

    .line 1854
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyBatteryText:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1858
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyTimerText:Landroid/widget/TextView;

    if-eqz v13, :cond_9

    .line 1859
    int-to-float v13, v7

    const/high16 v14, 0x43100000    # 144.0f

    div-float/2addr v13, v14

    float-to-int v13, v13

    int-to-float v13, v13

    const/high16 v14, 0x41200000    # 10.0f

    div-float v10, v13, v14

    .line 1860
    .local v10, "usageTimeDay":F
    div-int/lit8 v11, v7, 0x3c

    .line 1861
    .local v11, "usageTimeHrs":I
    rem-int/lit8 v12, v7, 0x3c

    .line 1863
    .local v12, "usageTimeMin":I
    if-nez v7, :cond_b

    .line 1864
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyTimerText:Landroid/widget/TextView;

    sget v14, Lcom/sec/android/sviewcover/R$string;->s_view_cover_emergency_battery_not_measured:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 1873
    .end local v10    # "usageTimeDay":F
    .end local v11    # "usageTimeHrs":I
    .end local v12    # "usageTimeMin":I
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyDevider:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1823
    .end local v8    # "timerIndex":I
    .end local v9    # "timerResourceId":I
    :catch_0
    move-exception v2

    .line 1824
    .local v2, "e":Landroid/os/RemoteException;
    const-string v13, "SViewCoverView"

    const-string v14, "onReceive() : getStandbyTime() failed by RemoteException"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1826
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1827
    .local v2, "e":Ljava/lang/Exception;
    const-string v13, "SViewCoverView"

    const-string v14, "onReceive() : getStandbyTime() failed"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1831
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyTimerImage:Landroid/widget/ImageView;

    if-eqz v13, :cond_5

    .line 1832
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyTimerImage:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1865
    .restart local v8    # "timerIndex":I
    .restart local v9    # "timerResourceId":I
    .restart local v10    # "usageTimeDay":F
    .restart local v11    # "usageTimeHrs":I
    .restart local v12    # "usageTimeMin":I
    :cond_b
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v10, v13

    if-ltz v13, :cond_c

    .line 1866
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyTimerText:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mStrEmergencyTimerD:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1868
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyTimerText:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mStrEmergencyTimerH:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mStrEmergencyTimerM:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateMissedEventWidget()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1896
    invoke-direct {p0, v0, v0}, Lcom/sec/android/sviewcover/SViewCoverView;->updateMissedEventWidget(II)V

    .line 1897
    return-void
.end method

.method private updateMissedEventWidget(II)V
    .locals 7
    .param p1, "missedMessageCount"    # I
    .param p2, "missedCallCount"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1900
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->isHideAllHandlerMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1976
    :cond_0
    :goto_0
    return-void

    .line 1903
    :cond_1
    const/4 v1, 0x0

    .line 1904
    .local v1, "isSecureLockUpgradeModel":Z
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSecurePopupView:Landroid/widget/LinearLayout;

    if-nez v2, :cond_2

    .line 1905
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    .line 1908
    :cond_2
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v2, :cond_0

    .line 1909
    if-nez v1, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-nez v2, :cond_9

    .line 1910
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    if-eqz v2, :cond_0

    .line 1911
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v0

    .line 1913
    .local v0, "currentPageIndex":I
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidgetLayout:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 1914
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidgetLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/sec/android/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    .line 1917
    :cond_4
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 1918
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/sviewcover/SViewCoverPager;->addView(Landroid/view/View;I)V

    .line 1919
    iget-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-nez v2, :cond_6

    .line 1920
    sget-object v2, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;Z)V

    .line 1926
    :cond_5
    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 1928
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    if-ne v2, v5, :cond_7

    .line 1929
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->hideNotiPageButton()V

    goto :goto_0

    .line 1922
    :cond_6
    invoke-virtual {p0, v0, v4}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToPage(IZ)V

    goto :goto_1

    .line 1930
    :cond_7
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    if-ne v2, v6, :cond_0

    .line 1931
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getMissedEventCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1932
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 1933
    iget-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsEmergencyMode:Z

    if-eqz v2, :cond_8

    .line 1936
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideSettingPageButton()V

    .line 1937
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setPageNavigationVisibility(I)V

    .line 1938
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v2, v4}, Lcom/sec/android/sviewcover/SViewCoverPager;->setEnableTouchEvent(Z)V

    goto :goto_0

    .line 1940
    :cond_8
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto :goto_0

    .line 1946
    .end local v0    # "currentPageIndex":I
    :cond_9
    iget-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    if-eqz v2, :cond_0

    .line 1947
    iget-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsKidsMode:Z

    if-nez v2, :cond_c

    .line 1948
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v0

    .line 1950
    .restart local v0    # "currentPageIndex":I
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 1951
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/sec/android/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    .line 1954
    :cond_a
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidgetLayout:Landroid/view/View;

    if-eqz v2, :cond_b

    .line 1955
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidgetLayout:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/sviewcover/SViewCoverPager;->addView(Landroid/view/View;I)V

    .line 1956
    invoke-virtual {p0, v0, v4}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToPage(IZ)V

    .line 1959
    :cond_b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 1961
    .end local v0    # "currentPageIndex":I
    :cond_c
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    if-ne v2, v5, :cond_d

    .line 1962
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->showNotiPageButton()V

    goto/16 :goto_0

    .line 1963
    :cond_d
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    if-eqz v2, :cond_0

    .line 1964
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getMissedEventCount()I

    move-result v2

    if-nez v2, :cond_e

    .line 1965
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideNotiPageButton()V

    .line 1966
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->showSettingPageButton()V

    goto/16 :goto_0

    .line 1968
    :cond_e
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v2, p2, p1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->updateNotiPageButton(II)V

    .line 1970
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->hideSettingPageButton()V

    goto/16 :goto_0
.end method

.method private updateMusicContainer()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1878
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicContatiner:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicContatiner:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1880
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicRemoteView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicContatiner:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicRemoteView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1884
    :cond_0
    return-void
.end method

.method private updateSHealthContainer()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1887
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSHealthContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSHealthContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1889
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShealthRemoteView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSHealthContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShealthRemoteView:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1893
    :cond_0
    return-void
.end method

.method private updateSViewCoverUnlockArea(Z)V
    .locals 11
    .param p1, "visibility"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2270
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-nez v7, :cond_1

    .line 2313
    :cond_0
    :goto_0
    return-void

    .line 2274
    :cond_1
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeWidget:Landroid/view/View;

    invoke-virtual {v7, v8}, Lcom/sec/android/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2275
    .local v0, "homeIndex":I
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v7}, Lcom/sec/android/sviewcover/SViewCoverPager;->getCurrentPage()I

    move-result v7

    if-ne v7, v0, :cond_2

    .line 2276
    iget v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    if-ne v7, v10, :cond_5

    .line 2277
    if-eqz p1, :cond_4

    .line 2278
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v7}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->handleShow()V

    .line 2302
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSVoiceRemoteView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-ne v7, v9, :cond_8

    move v1, v5

    .line 2304
    .local v1, "isSVoiceRemoteViewExist":Z
    :goto_2
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mVolumeRemoteView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-ne v7, v9, :cond_9

    move v2, v5

    .line 2306
    .local v2, "isVolumeRemoteViewExist":Z
    :goto_3
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    if-ne v5, v10, :cond_0

    .line 2307
    if-nez v1, :cond_3

    if-eqz v2, :cond_a

    .line 2308
    :cond_3
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v5}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->handleHideIconsOnly()V

    goto :goto_0

    .line 2280
    .end local v1    # "isSVoiceRemoteViewExist":Z
    .end local v2    # "isVolumeRemoteViewExist":Z
    :cond_4
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v7}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->handleHide()V

    goto :goto_1

    .line 2282
    :cond_5
    iget v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 2283
    if-eqz p1, :cond_7

    .line 2284
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->handleShow()V

    .line 2285
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v7}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getMissedCallCount()I

    move-result v3

    .line 2286
    .local v3, "missedCallCount":I
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v7}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->getMissedMessageCount()I

    move-result v4

    .line 2288
    .local v4, "unreadMessage":I
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    .line 2289
    iput-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    .line 2294
    :goto_4
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->updateMissedEventWidget()V

    .line 2295
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v7, v3, v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->updateNotiArea(II)V

    goto :goto_1

    .line 2291
    :cond_6
    iput-boolean v6, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNeedToAddMissedEventWidget:Z

    goto :goto_4

    .line 2298
    .end local v3    # "missedCallCount":I
    .end local v4    # "unreadMessage":I
    :cond_7
    iget-object v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->handleHide()V

    goto :goto_1

    :cond_8
    move v1, v6

    .line 2302
    goto :goto_2

    .restart local v1    # "isSVoiceRemoteViewExist":Z
    :cond_9
    move v2, v6

    .line 2304
    goto :goto_3

    .line 2310
    .restart local v2    # "isVolumeRemoteViewExist":Z
    :cond_a
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v5}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->handleShowIconsOnly()V

    goto :goto_0
.end method

.method private declared-synchronized updateSoundWarningContainer()V
    .locals 5

    .prologue
    .line 1702
    monitor-enter p0

    const/4 v1, 0x0

    .line 1703
    .local v1, "selectedSoundWarningContainer":Landroid/widget/FrameLayout;
    :try_start_0
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1704
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mJSoundWarningContainer:Landroid/widget/FrameLayout;

    .line 1709
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 1710
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1712
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mVolumeRemoteView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1713
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mVolumeRemoteView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1714
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 1715
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mVolumeRemoteView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1717
    :cond_1
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mVolumeRemoteView:Landroid/view/View;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1722
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_2
    monitor-exit p0

    return-void

    .line 1705
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1706
    :cond_4
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSoundWarningContainer:Landroid/widget/FrameLayout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1702
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updatesBatteryInfo()V
    .locals 3

    .prologue
    .line 987
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 988
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v0, :cond_0

    .line 989
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsEmergencyMode:Z

    .line 991
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsEmergencyMode:Z

    if-eqz v1, :cond_2

    .line 992
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 993
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 998
    :cond_1
    :goto_0
    return-void

    .line 996
    :cond_2
    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mLastBatteryPlugged:I

    iget v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mLastBatteryLevel:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/sviewcover/SViewCoverView;->setBatteryInfoTextView(II)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 2368
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2372
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getCurrentPageIndex()Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    move-result-object v3

    sget-object v4, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->CameraPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {v3, v4}, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2402
    :cond_0
    :goto_0
    return v2

    .line 2375
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 2402
    :cond_2
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 2378
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mPMS:Landroid/os/PowerManager;

    if-eqz v3, :cond_5

    .line 2379
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v3}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    invoke-virtual {v3}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 2383
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->resetScreenOffTime()V

    .line 2387
    :cond_5
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSecurePopupView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSecurePopupView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 2388
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2389
    .local v1, "dialogBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSecurePopupView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 2390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2392
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverView;->setMissedEventSecurePopup(I)V

    .line 2393
    sget-object v3, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mSecurePopupHandler:Landroid/os/Handler;

    sget-object v4, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mSecurePopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2316
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2317
    const-string v0, "mSViewCoverDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2318
    const-string v0, "mSViewPager="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2319
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2320
    const-string v0, "mCurrentContextualWidget="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2321
    const-string v0, " mSuppressCoverUI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2322
    const-string v0, " mShowingCoverUI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2324
    const-string v0, " mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2325
    return-void
.end method

.method public getCoverSkinColor()I
    .locals 1

    .prologue
    .line 2538
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrntColor:I

    return v0
.end method

.method public getCurrentPageIndex()Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;
    .locals 1

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    return-object v0
.end method

.method public getNotiListenerMissedCallCount()I
    .locals 1

    .prologue
    .line 2728
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNotiListenerMissecCallCount:I

    return v0
.end method

.method public getNotiListenerMissedEventCount()I
    .locals 2

    .prologue
    .line 2736
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNotiListenerMissecCallCount:I

    iget v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNotiListenerUnreadMessageCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getNotiListenerUnreadMsgCount()I
    .locals 1

    .prologue
    .line 2732
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mNotiListenerUnreadMessageCount:I

    return v0
.end method

.method public getRemoteControlClientId()I
    .locals 1

    .prologue
    .line 2691
    iget v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mRemoteControlClientId:I

    return v0
.end method

.method protected handleBackgroundColorUpdated()V
    .locals 11

    .prologue
    const/16 v10, 0xff

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1604
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->isGuestMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1605
    :cond_0
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorPickerView;->COLORS:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1606
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 1607
    invoke-virtual {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverView;->setBackgroundBlackDim(I)V

    .line 1661
    :cond_1
    :goto_0
    return-void

    .line 1610
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getBackgroundOption()I

    move-result v4

    iput v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBackgroundOption:I

    .line 1611
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getBackgroundWallPaperOption()Z

    move-result v1

    .line 1612
    .local v1, "isWallpaper":Z
    const-string v4, "SViewCoverView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SVIEW_BACKGROUND_RANDOM complete : color "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mBackgroundOption : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBackgroundOption:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isWallpaper :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-boolean v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsKidsMode:Z

    if-eqz v4, :cond_3

    .line 1616
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->setKidsModeWallpaper()V

    goto :goto_0

    .line 1618
    :cond_3
    sget-boolean v4, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAlphaModel:Z

    if-eqz v4, :cond_5

    .line 1620
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_wallpaper"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1622
    .local v0, "index":I
    if-ne v0, v9, :cond_4

    .line 1623
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->setWallpaper()V

    goto :goto_0

    .line 1625
    :cond_4
    const/16 v4, 0xa

    if-lt v0, v4, :cond_1

    .line 1626
    add-int/lit8 v0, v0, -0xa

    .line 1627
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->ALPHA_WALLPAPER:[I

    aget v5, v5, v0

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1629
    .local v2, "walllpaperBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1630
    .local v3, "wallpaper":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 1631
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1632
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 1633
    invoke-virtual {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverView;->setBackgroundBlackDim(I)V

    goto/16 :goto_0

    .line 1638
    .end local v0    # "index":I
    .end local v2    # "walllpaperBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "wallpaper":Landroid/graphics/drawable/Drawable;
    :cond_5
    if-eqz v1, :cond_6

    .line 1639
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->setWallpaper()V

    goto/16 :goto_0

    .line 1641
    :cond_6
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBackgroundOption:I

    if-ne v4, v9, :cond_8

    .line 1642
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getRandomBackgroundColor()I

    move-result v4

    iput v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentCoverBackgroundColor:I

    .line 1655
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 1656
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1657
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 1658
    invoke-virtual {p0, v8}, Lcom/sec/android/sviewcover/SViewCoverView;->setBackgroundBlackDim(I)V

    goto/16 :goto_0

    .line 1643
    :cond_8
    iget v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBackgroundOption:I

    if-nez v4, :cond_7

    .line 1644
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1645
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "s_vew_cover_background_color"

    const/high16 v6, -0x1000000

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentCoverBackgroundColor:I

    goto :goto_1

    .line 1649
    :cond_9
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "s_vew_cover_background_color"

    const v6, -0xd1e5f3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentCoverBackgroundColor:I

    goto :goto_1
.end method

.method public isEmergencyMode()Z
    .locals 1

    .prologue
    .line 2550
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsEmergencyMode:Z

    return v0
.end method

.method public isHideAllHandlerMode()Z
    .locals 1

    .prologue
    .line 2569
    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsKidsMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsSetupWizard:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVzwMsgAppDefault()Z
    .locals 1

    .prologue
    .line 2676
    const/4 v0, 0x0

    .line 2683
    .local v0, "isVzwMsgApp":Z
    return v0
.end method

.method public moveToHomePage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2184
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2185
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_vew_cover_background_color"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2187
    .local v0, "currentBgColor":I
    if-eqz v0, :cond_0

    .line 2188
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->hideColorSelectorView()V

    .line 2190
    .end local v0    # "currentBgColor":I
    :cond_0
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;Z)V

    .line 2191
    return-void
.end method

.method public moveToPage(IZ)V
    .locals 3
    .param p1, "pageIndex"    # I
    .param p2, "isSnapToPage"    # Z

    .prologue
    .line 2194
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    .line 2196
    .local v1, "enumIndex":Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v2, p1}, Lcom/sec/android/sviewcover/SViewCoverPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2198
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeWidget:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeWidget:Landroid/view/View;

    if-ne v2, v0, :cond_1

    .line 2199
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    .line 2210
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToPage(Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;Z)V

    .line 2211
    return-void

    .line 2200
    :cond_1
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;

    if-ne v2, v0, :cond_2

    .line 2201
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->SettingPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    goto :goto_0

    .line 2202
    :cond_2
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidgetLayout:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidgetLayout:Landroid/view/View;

    if-ne v2, v0, :cond_3

    .line 2203
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->NotiPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    goto :goto_0

    .line 2204
    :cond_3
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    if-ne v2, v0, :cond_4

    .line 2205
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->CameraPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    goto :goto_0

    .line 2206
    :cond_4
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShortcuts:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShortcuts:Landroid/view/View;

    if-ne v2, v0, :cond_0

    .line 2207
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->ShortCutPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    goto :goto_0
.end method

.method public moveToPage(Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;Z)V
    .locals 4
    .param p1, "pageIndex"    # Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;
    .param p2, "isSnapToPage"    # Z

    .prologue
    .line 2214
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-nez v1, :cond_0

    .line 2259
    :goto_0
    return-void

    .line 2217
    :cond_0
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Move to page : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentPageIndex:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    .line 2221
    const/4 v0, 0x0

    .line 2223
    .local v0, "movePageIndex":I
    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverView$12;->$SwitchMap$com$sec$android$sviewcover$SViewCoverView$PageIndex:[I

    invoke-virtual {p1}, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2245
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeWidget:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2246
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeWidget:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2250
    :cond_1
    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2251
    const-string v1, "SViewCoverView"

    const-string v2, "Index page not found!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    const/4 v0, 0x0

    .line 2255
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 2256
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v0}, Lcom/sec/android/sviewcover/SViewCoverPager;->snapToPage(I)V

    goto :goto_0

    .line 2225
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeWidget:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2226
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeWidget:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 2229
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2230
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 2233
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidgetLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2234
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidgetLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 2237
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2238
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 2241
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShortcuts:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2242
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShortcuts:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_1

    .line 2258
    :cond_3
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v1, v0}, Lcom/sec/android/sviewcover/SViewCoverPager;->setCurrentPage(I)V

    goto/16 :goto_0

    .line 2223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1513
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1516
    return-void
.end method

.method protected onFinishInflate()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, -0x2

    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 750
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 751
    const-string v5, "SViewCoverView"

    const-string v8, "onFinishInflate()"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mPMS:Landroid/os/PowerManager;

    .line 753
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 755
    const-string v5, "SViewCoverView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new File(PATH_FILE_COVER_COLOR).exists() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    const-string v10, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v5, Ljava/io/File;

    const-string v8, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 759
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "s_vew_cover_background_color"

    const/high16 v9, -0x1000000

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentCoverBackgroundColor:I

    .line 766
    :goto_0
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_background:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    .line 768
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v5, :cond_0

    .line 769
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v5}, Lcom/sec/android/sviewcover/SViewCoverPager;->removeAllViews()V

    .line 772
    :cond_0
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_pager:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/sviewcover/SViewCoverPager;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    .line 773
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v5, :cond_1

    .line 774
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v5, p0}, Lcom/sec/android/sviewcover/SViewCoverPager;->setSViewCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V

    .line 777
    :cond_1
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v8, "slte"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v8, "a5"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 779
    :cond_2
    const-string v5, "SViewCoverView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Build.PRODUCT =="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " alpha concept enable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    sput-boolean v6, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAlphaModel:Z

    .line 783
    :cond_3
    const-string v5, "SViewCoverView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSViewPager"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v5, :cond_c

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsNotSCover1:Z

    .line 786
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_hide_effect:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    .line 787
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    if-eqz v5, :cond_4

    .line 788
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    invoke-virtual {v5, p0}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->setListener(Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface$SViewCoverHideAnimationListener;)V

    .line 790
    :cond_4
    sget v5, Lcom/sec/android/sviewcover/R$id;->missed_event_call_msg_cnt:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mJMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    .line 791
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mJMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    if-eqz v5, :cond_5

    .line 792
    sget v5, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mJCoverClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    .line 793
    sget v5, Lcom/sec/android/sviewcover/R$id;->clear_sound_warning_container:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mJSoundWarningContainer:Landroid/widget/FrameLayout;

    .line 794
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mJMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    .line 795
    .local v3, "missedEventwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;
    invoke-virtual {v3, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->setSviewCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V

    .line 797
    .end local v3    # "missedEventwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;
    :cond_5
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v5, :cond_a

    .line 798
    iput-boolean v7, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAddedMissedEventWidget:Z

    .line 799
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    if-eqz v5, :cond_6

    .line 800
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    iget v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 801
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverBackground:Landroid/widget/ImageView;

    const/16 v8, 0xff

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 804
    :cond_6
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget v8, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_home_widget:I

    invoke-static {v5, v8, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeWidget:Landroid/view/View;

    .line 805
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeWidget:Landroid/view/View;

    sget v8, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    .line 807
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeWidget:Landroid/view/View;

    sget v8, Lcom/sec/android/sviewcover/R$id;->dual_clock_time_and_date:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverDualClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    .line 810
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeWidget:Landroid/view/View;

    sget v8, Lcom/sec/android/sviewcover/R$id;->missed_event_view:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    .line 812
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeWidget:Landroid/view/View;

    sget v8, Lcom/sec/android/sviewcover/R$id;->clear_shealth_contatiner:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSHealthContainer:Landroid/widget/FrameLayout;

    .line 814
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeWidget:Landroid/view/View;

    sget v8, Lcom/sec/android/sviewcover/R$id;->clear_battery_contatiner:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryContainer:Landroid/widget/FrameLayout;

    .line 816
    sget v5, Lcom/sec/android/sviewcover/R$id;->clear_sound_warning_contatiner:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSoundWarningContainer:Landroid/widget/FrameLayout;

    .line 817
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget v8, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_missed_event_layout:I

    invoke-static {v5, v8, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidgetLayout:Landroid/view/View;

    .line 819
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidgetLayout:Landroid/view/View;

    sget v8, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_event:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    .line 821
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    if-eqz v5, :cond_7

    .line 822
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedCallbacks:Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;

    invoke-virtual {v5, v8}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->setCallbacks(Lcom/sec/android/sviewcover/SViewCoverMissedEvents$MissedEventsCallbacks;)V

    .line 823
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v5}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->registerObserverAndReceiver()V

    .line 824
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v5}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->updateMissedEvents()V

    .line 826
    :cond_7
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    instance-of v5, v5, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    if-eqz v5, :cond_8

    .line 827
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    .line 828
    .restart local v3    # "missedEventwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;
    invoke-virtual {v3, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->setSviewCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V

    .line 830
    .end local v3    # "missedEventwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;
    :cond_8
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidgetLayout:Landroid/view/View;

    sget v8, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_notification:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventNotificationView:Landroid/widget/TextView;

    .line 832
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget v8, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_shortcuts:I

    invoke-static {v5, v8, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShortcuts:Landroid/view/View;

    .line 833
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShortcuts:Landroid/view/View;

    sget v8, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcuts_music_container:I

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicContatiner:Landroid/widget/FrameLayout;

    .line 835
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_page_navigation:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    .line 836
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v5, v8}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->setPager(Lcom/sec/android/sviewcover/SViewCoverPager;)V

    .line 838
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_color_selector:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    .line 839
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    invoke-virtual {v5, p0}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setControlView(Landroid/view/View;)V

    .line 841
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHomeWidget:Landroid/view/View;

    invoke-virtual {v5, v8}, Lcom/sec/android/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 843
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_d

    .line 844
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_unlock_area:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    .line 845
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v5, v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->setPagerNavigation(Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;)V

    .line 846
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverUnlockArea:Lcom/sec/android/sviewcover/SViewCoverUnlockArea;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v5, v6}, Lcom/sec/android/sviewcover/SViewCoverUnlockArea;->setSViewPager(Lcom/sec/android/sviewcover/SViewCoverPager;)V

    .line 847
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mShortcuts:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/sec/android/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 950
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToHomePage()V

    .line 953
    :cond_a
    return-void

    .line 762
    :cond_b
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "s_vew_cover_background_color"

    const v9, -0xd1e5f3

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentCoverBackgroundColor:I

    goto/16 :goto_0

    :cond_c
    move v5, v7

    .line 784
    goto/16 :goto_1

    .line 849
    :cond_d
    iget v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_9

    .line 850
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_unlock_area:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    .line 851
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v5, v8}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setPagerNavigation(Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;)V

    .line 852
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v5, v8}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setSViewPager(Lcom/sec/android/sviewcover/SViewCoverPager;)V

    .line 853
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-virtual {v5, p0}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V

    .line 855
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget v8, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_setting:I

    invoke-static {v5, v8, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;

    .line 856
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;

    if-eqz v5, :cond_e

    .line 857
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;

    invoke-virtual {v5, v8, v7}, Lcom/sec/android/sviewcover/SViewCoverPager;->addView(Landroid/view/View;I)V

    .line 858
    :cond_e
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;

    instance-of v5, v5, Lcom/sec/android/sviewcover/SViewCoverSetting;

    if-eqz v5, :cond_f

    .line 859
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;

    check-cast v5, Lcom/sec/android/sviewcover/SViewCoverSetting;

    invoke-virtual {v5, p0}, Lcom/sec/android/sviewcover/SViewCoverSetting;->setCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V

    .line 861
    :cond_f
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_theme:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWindowThemeText:Landroid/widget/TextView;

    .line 862
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_setting_theme_devider:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWindowThemeTextDevider:Landroid/widget/ImageView;

    .line 863
    sget v5, Lcom/sec/android/sviewcover/R$id;->default_home_widget:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDefaultWidget:Landroid/view/View;

    .line 864
    sget v5, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mClockWidget:Landroid/view/View;

    .line 865
    sget v5, Lcom/sec/android/sviewcover/R$id;->dual_clock_time_and_date:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDualClockWidget:Landroid/view/View;

    .line 866
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "dualclock_menu_settings"

    invoke-static {v5, v8, v7, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_16

    move v2, v6

    .line 868
    .local v2, "mIsDualClock":Z
    :goto_3
    const-string v5, "SViewCoverView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIsDualClock is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "homecity_timezone"

    invoke-static {v5, v8, v12}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_17

    move v0, v7

    .line 872
    .local v0, "isHometimeExist":Z
    :goto_4
    const-string v5, "SViewCoverView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isHometimeExist is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 875
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, v8, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 877
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->checkRoamingState()Z

    move-result v1

    .line 878
    .local v1, "isNetworkRoaming":Z
    const-string v5, "SViewCoverView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNetworkRoaming is :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    if-eqz v2, :cond_18

    if-eqz v0, :cond_18

    if-eqz v1, :cond_18

    .line 880
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mClockWidget:Landroid/view/View;

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 881
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 887
    :goto_5
    sget v5, Lcom/sec/android/sviewcover/R$id;->music_home_widget:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidget:Landroid/view/View;

    .line 888
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidget:Landroid/view/View;

    instance-of v5, v5, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    if-eqz v5, :cond_10

    .line 889
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidget:Landroid/view/View;

    check-cast v4, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .line 890
    .local v4, "musicwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    invoke-virtual {v4, p0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->setSviewCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V

    .line 893
    .end local v4    # "musicwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    :cond_10
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_camera_layout:I

    invoke-static {v5, v6, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    .line 894
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    if-eqz v5, :cond_11

    .line 895
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/sec/android/sviewcover/SViewCoverPager;->addView(Landroid/view/View;)V

    .line 897
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    instance-of v5, v5, Lcom/sec/android/sviewcover/SViewCoverCameraArea;

    if-eqz v5, :cond_11

    .line 898
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;

    check-cast v5, Lcom/sec/android/sviewcover/SViewCoverCameraArea;

    invoke-virtual {v5, p0}, Lcom/sec/android/sviewcover/SViewCoverCameraArea;->setCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V

    .line 900
    :cond_11
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_background_dim:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBackgroundBlackDim:Landroid/widget/ImageView;

    .line 902
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_weather_health_container:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mWeatherHealthContatiner:Landroid/widget/LinearLayout;

    .line 903
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_emergency_container:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyContatiner:Landroid/widget/LinearLayout;

    .line 904
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_text_emergency_battery:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyBatteryText:Landroid/widget/TextView;

    .line 905
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_text_emergency_timer:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyTimerText:Landroid/widget/TextView;

    .line 906
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_icon_emergency_timer:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyTimerImage:Landroid/widget/ImageView;

    .line 907
    sget v5, Lcom/sec/android/sviewcover/R$id;->s_view_cover_emergency_devider:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mEmergencyDevider:Landroid/view/View;

    .line 909
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->s_view_cover_emergency_timer_d:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mStrEmergencyTimerD:Ljava/lang/String;

    .line 911
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->s_view_cover_emergency_timer_h:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mStrEmergencyTimerH:Ljava/lang/String;

    .line 913
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sec/android/sviewcover/R$string;->s_view_cover_emergency_timer_m:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mStrEmergencyTimerM:Ljava/lang/String;

    .line 916
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->updatesBatteryInfo()V

    .line 918
    sget v5, Lcom/sec/android/sviewcover/R$id;->disaster_alert:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDisasterAlertText:Landroid/widget/TextView;

    .line 919
    sget v5, Lcom/sec/android/sviewcover/R$id;->battery_charging:I

    invoke-virtual {p0, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    .line 921
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidgetLayout:Landroid/view/View;

    sget v6, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_event_alert_popup:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSecurePopupView:Landroid/widget/LinearLayout;

    .line 923
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSecurePopupView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_12

    .line 924
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSecurePopupView:Landroid/widget/LinearLayout;

    sget v6, Lcom/sec/android/sviewcover/R$id;->s_view_cover_missed_event_alert_popup_text:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSecurePopupTextView:Landroid/widget/TextView;

    .line 928
    :cond_12
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    if-eqz v5, :cond_13

    .line 929
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    invoke-virtual {v5, p0}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->setSViewCoverView(Lcom/sec/android/sviewcover/SViewCoverView;)V

    .line 932
    :cond_13
    invoke-direct {p0, v7}, Lcom/sec/android/sviewcover/SViewCoverView;->setEnableMusicWidget(Z)V

    .line 934
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->createWallpaperfolder()V

    .line 936
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getBackgroundWallPaperOption()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 937
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->setWallpaper()V

    .line 939
    :cond_14
    sget-boolean v5, Lcom/sec/android/sviewcover/SViewCoverView;->mIsAlphaModel:Z

    if-eqz v5, :cond_15

    .line 940
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->createIndexWallpaperFile()V

    .line 941
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->handleBackgroundColorUpdated()V

    .line 944
    :cond_15
    new-instance v5, Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mAudioManager:Landroid/media/AudioManager;

    .line 945
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    .line 947
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v5, p0}, Lcom/sec/android/sviewcover/SViewCoverPager;->setPageSwitchListener(Lcom/sec/android/sviewcover/PagedView$PageSwitchListener;)V

    goto/16 :goto_2

    .end local v0    # "isHometimeExist":Z
    .end local v1    # "isNetworkRoaming":Z
    .end local v2    # "mIsDualClock":Z
    :cond_16
    move v2, v7

    .line 866
    goto/16 :goto_3

    .restart local v2    # "mIsDualClock":Z
    :cond_17
    move v0, v6

    .line 869
    goto/16 :goto_4

    .line 883
    .restart local v0    # "isHometimeExist":Z
    .restart local v1    # "isNetworkRoaming":Z
    :cond_18
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mClockWidget:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 884
    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mDualClockWidget:Landroid/view/View;

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public onHideAnimationFinished()V
    .locals 0

    .prologue
    .line 1360
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->onSViewCoverHide()V

    .line 1361
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 1
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverPager;->onPageSwitched(Landroid/view/View;I)V

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverPagerNavigation:Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverPagerNavigation;->updateLayout()V

    .line 1065
    :cond_1
    return-void
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 1
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/sviewcover/SViewCoverPager;->onPageSwitching(Landroid/view/View;I)V

    .line 1071
    :cond_0
    return-void
.end method

.method public onSystemReady()V
    .locals 0

    .prologue
    .line 2329
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2696
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2698
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2699
    sget-boolean v0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z

    if-nez v0, :cond_0

    .line 2700
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->resetScreenOffTime()V

    .line 2703
    :cond_0
    return-void
.end method

.method public resetScreenOffTime()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    .line 2406
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 2407
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mScreenOffHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2408
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mScreenOffHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2409
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mScreenOffHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2411
    return-void
.end method

.method public setBackgroundBlackDim(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBackgroundBlackDim:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBackgroundBlackDim:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1098
    :cond_0
    return-void
.end method

.method protected setBatteryInfoTextView(II)V
    .locals 6
    .param p1, "plugged"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v5, 0x0

    .line 519
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 520
    if-eqz p1, :cond_2

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "batteryCharging":Ljava/lang/String;
    const/16 v1, 0x64

    if-lt p2, v1, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->battery_charged:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 527
    :goto_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    .end local v0    # "batteryCharging":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 525
    .restart local v0    # "batteryCharging":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->battery_charging_percent:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 530
    .end local v0    # "batteryCharging":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mBatteryCharingText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setCurrentClientId(Ljava/lang/String;)V
    .locals 4
    .param p1, "contentName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2707
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidget:Landroid/view/View;

    instance-of v1, v1, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    if-eqz v1, :cond_0

    .line 2708
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidget:Landroid/view/View;

    check-cast v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .line 2710
    .local v0, "musicwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    const-string v1, "com.sec.android.app.music"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2711
    invoke-virtual {p0, v3}, Lcom/sec/android/sviewcover/SViewCoverView;->setRemoteControlClientId(I)V

    .line 2712
    invoke-virtual {v0, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->setVisiblityPlayListButton(Z)V

    .line 2721
    .end local v0    # "musicwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    :cond_0
    :goto_0
    return-void

    .line 2713
    .restart local v0    # "musicwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    :cond_1
    const-string v1, "com.sec.android.app.videoplayer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2714
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->setRemoteControlClientId(I)V

    .line 2715
    invoke-direct {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverView;->setEnableMusicWidget(Z)V

    goto :goto_0

    .line 2717
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/android/sviewcover/SViewCoverView;->setRemoteControlClientId(I)V

    .line 2718
    invoke-virtual {v0, v2}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->setVisiblityPlayListButton(Z)V

    goto :goto_0
.end method

.method public setMissedEventSecurePopup(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSecurePopupView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2561
    const-string v0, "SViewCoverView"

    const-string v1, "setMissedEventSecurePopup - mSecurePopupView is exist"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSecurePopupView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2566
    :goto_0
    return-void

    .line 2564
    :cond_0
    const-string v0, "SViewCoverView"

    const-string v1, "setMissedEventSecurePopup - mSecurePopupView is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRemoteControlClientId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 2687
    iput p1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mRemoteControlClientId:I

    .line 2688
    return-void
.end method

.method public sethandleUnlock()V
    .locals 2

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    sget-object v1, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->HomePage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->handleUnlock(Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;)V

    .line 2547
    return-void
.end method

.method public showCoverSelector()V
    .locals 2

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->setVisibility(I)V

    .line 2543
    return-void
.end method

.method public updateCoverState(ZII)V
    .locals 4
    .param p1, "isCoverOpen"    # Z
    .param p2, "coverType"    # I
    .param p3, "coverColor"    # I

    .prologue
    const/16 v3, 0x14

    .line 1979
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->isLGTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1980
    const-string v0, "lock"

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "missing_phone_lock"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1982
    const-string v0, "SViewCoverView"

    const-string v1, "SViewCoverView : updateCoverState missing_phone_lock"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    :goto_0
    return-void

    .line 1987
    :cond_0
    const-string v0, "SViewCoverView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SViewCoverView : updateCoverState  isCoverOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " coverType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " coverColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    sput-boolean p1, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z

    .line 1993
    iput p3, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrntColor:I

    .line 1994
    iput p2, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentCoverType:I

    .line 1999
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mScreenOffHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2000
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mScreenOffHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2003
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 2027
    :pswitch_0
    if-eqz p1, :cond_6

    .line 2029
    const-string v0, "SViewCoverView"

    const-string v1, "this is not SView Cover stopState, need to lcd on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->playAnimationAndHide()V

    .line 2038
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->removeCoverStateBroadCastAsUser()V

    .line 2043
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->sendCoverEventProcessingFinishedNotification()V

    goto :goto_0

    .line 2006
    :pswitch_1
    if-eqz p1, :cond_4

    .line 2008
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverEventFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2009
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverEventFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2011
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->gotoOpenPage()V

    .line 2012
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->playAnimationAndHide()V

    .line 2021
    :goto_3
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 2022
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->sendCoverStateBroadCastAsUser()V

    goto :goto_2

    .line 2015
    :cond_4
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverEventFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2016
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverEventFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2018
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/sviewcover/SViewCoverView;->onSViewCoverShow()V

    .line 2019
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mCoverEventFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 2033
    :cond_6
    const-string v0, "SViewCoverView"

    const-string v1, "this is not SView Cover Closed, need to lcd off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2003
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateSupressCover(Z)V
    .locals 0
    .param p1, "isSupress"    # Z

    .prologue
    .line 2266
    iput-boolean p1, p0, Lcom/sec/android/sviewcover/SViewCoverView;->mSuppressCoverUI:Z

    .line 2267
    return-void
.end method
