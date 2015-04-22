.class public Lcom/android/keyguard/KeyguardTransportControlView;
.super Landroid/widget/FrameLayout;
.source "KeyguardTransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardTransportControlView$SavedState;,
        Lcom/android/keyguard/KeyguardTransportControlView$Metadata;,
        Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;,
        Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATE_TRANSITIONS:Z = true

.field protected static final DEBUG:Z = true

.field protected static final QUIESCENT_PLAYBACK_FACTOR:J = 0x3e8L

.field private static final RESET_TO_METADATA_DELAY:I = 0x1388

.field protected static final TAG:Ljava/lang/String; = "TransportControlView"

.field private static final TRANSITION_DURATION:I = 0xc8


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBadge:Landroid/widget/ImageView;

.field private mBtnNext:Landroid/widget/ImageView;

.field private mBtnPlay:Landroid/widget/ImageView;

.field private mBtnPrev:Landroid/widget/ImageView;

.field private mCurrentPlayState:I

.field private mFormat:Ljava/text/DateFormat;

.field private final mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

.field private mInfoContainer:Landroid/view/ViewGroup;

.field private mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

.field private final mMetadataChangeTransition:Landroid/transition/TransitionSet;

.field private mMetadataContainer:Landroid/view/ViewGroup;

.field private final mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

.field private mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mRemoteController:Landroid/media/RemoteController;

.field private final mResetToMetadata:Ljava/lang/Runnable;

.field private mSeekEnabled:Z

.field private mTempDate:Ljava/util/Date;

.field private mTrackArtistAlbum:Landroid/widget/TextView;

.field private mTrackTitle:Landroid/widget/TextView;

.field private mTransientSeek:Landroid/view/View;

.field private mTransientSeekBar:Landroid/widget/SeekBar;

.field private mTransientSeekTimeElapsed:Landroid/widget/TextView;

.field private mTransientSeekTimeTotal:Landroid/widget/TextView;

.field private final mTransportCommandListener:Landroid/view/View$OnClickListener;

.field mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

.field private mTransportControlFlags:I

.field private final mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 288
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    .line 93
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    .line 98
    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    .line 100
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$1;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 173
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-direct {v5, p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;Lcom/android/keyguard/KeyguardTransportControlView$1;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    .line 175
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$2;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    .line 181
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$3;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportCommandListener:Landroid/view/View$OnClickListener;

    .line 198
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$4;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$4;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

    .line 245
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    .line 247
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$5;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$5;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 277
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$6;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$6;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 289
    const-string v5, "TransportControlView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create TCV "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v5, Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    .line 291
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    .line 292
    new-instance v5, Landroid/media/RemoteController;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-direct {v5, p1, v6}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 295
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 296
    .local v0, "dim":I
    iget-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v5, v8, v0, v0}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    .line 298
    new-instance v3, Landroid/transition/ChangeText;

    invoke-direct {v3}, Landroid/transition/ChangeText;-><init>()V

    .line 299
    .local v3, "tc":Landroid/transition/ChangeText;
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/transition/ChangeText;->setChangeBehavior(I)Landroid/transition/ChangeText;

    .line 300
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 301
    .local v2, "inner":Landroid/transition/TransitionSet;
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    new-instance v6, Landroid/transition/ChangeBounds;

    invoke-direct {v6}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 302
    new-instance v4, Landroid/transition/TransitionSet;

    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    .line 303
    .local v4, "tg":Landroid/transition/TransitionSet;
    new-instance v5, Landroid/transition/Fade;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    new-instance v6, Landroid/transition/Fade;

    invoke-direct {v6, v8}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 305
    invoke-virtual {v4, v8}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 306
    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 307
    iput-object v4, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataChangeTransition:Landroid/transition/TransitionSet;

    .line 308
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardTransportControlView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->updatePlayPauseState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardTransportControlView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->sendMediaButtonClick(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardTransportControlView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardTransportControlView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->setEnableMarquee(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardTransportControlView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    return v0
.end method

.method static synthetic access$400(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->playbackPositionShouldMove(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardTransportControlView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->updateTransportControls(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static final playbackPositionShouldMove(I)Z
    .locals 1
    .param p0, "playstate"    # I

    .prologue
    .line 229
    packed-switch p0, :pswitch_data_0

    .line 241
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 236
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private populateMetadata()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 483
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->isLaidOut()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 484
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataChangeTransition:Landroid/transition/TransitionSet;

    invoke-static {v7, v9}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 487
    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v7}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "remoteClientPackage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 490
    .local v0, "badgeIcon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 494
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->setBadgeIcon(Landroid/graphics/drawable/Drawable;)V

    .line 495
    iget-object v9, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 500
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 501
    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 506
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 507
    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_3
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 513
    .local v6, "trackArtistAlbum":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackArtistAlbum:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .end local v6    # "trackArtistAlbum":Ljava/lang/String;
    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_9

    .line 517
    invoke-virtual {p0, v12}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    .line 518
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarDuration(J)V

    .line 522
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    cmp-long v7, v8, v10

    if-ltz v7, :cond_7

    .line 523
    const-string v5, "DDD kk mm ss"

    .line 529
    .local v5, "skeleton":Ljava/lang/String;
    :goto_3
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v8, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    .line 532
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    const-string v8, "GMT+0"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 537
    .end local v5    # "skeleton":Ljava/lang/String;
    :goto_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2100(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchSetBackground(Landroid/graphics/Bitmap;)V

    .line 538
    iget v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlFlags:I

    .line 539
    .local v2, "flags":I
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    invoke-static {v7, v2, v12}, Lcom/android/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 540
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    const/16 v8, 0x80

    invoke-static {v7, v2, v8}, Lcom/android/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 541
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    const/16 v8, 0x3c

    invoke-static {v7, v2, v8}, Lcom/android/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 547
    iget v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    invoke-direct {p0, v7}, Lcom/android/keyguard/KeyguardTransportControlView;->updatePlayPauseState(I)V

    .line 548
    return-void

    .line 491
    .end local v2    # "flags":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 492
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "TransportControlView"

    const-string v9, "Couldn\'t get remote control client package icon"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    move-object v7, v8

    .line 495
    goto/16 :goto_1

    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "trackArtistAlbum":Ljava/lang/String;
    :cond_6
    move-object v6, v8

    .line 513
    goto/16 :goto_2

    .line 524
    .end local v6    # "trackArtistAlbum":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v8

    const-wide/32 v10, 0x36ee80

    cmp-long v7, v8, v10

    if-ltz v7, :cond_8

    .line 525
    const-string v5, "kk mm ss"

    .restart local v5    # "skeleton":Ljava/lang/String;
    goto :goto_3

    .line 527
    .end local v5    # "skeleton":Ljava/lang/String;
    :cond_8
    const-string v5, "mm ss"

    .restart local v5    # "skeleton":Ljava/lang/String;
    goto :goto_3

    .line 534
    .end local v5    # "skeleton":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    goto :goto_4
.end method

.method private sendMediaButtonClick(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    .line 725
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    .line 727
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;->userActivity()V

    .line 728
    return-void
.end method

.method private setEnableMarquee(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 333
    const-string v1, "TransportControlView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string v0, "Enable"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " transport text marquee"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackArtistAlbum:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 336
    :cond_1
    return-void

    .line 333
    :cond_2
    const-string v0, "Disable"

    goto :goto_0
.end method

.method private static setVisibilityBasedOnFlag(Landroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "flags"    # I
    .param p2, "flag"    # I

    .prologue
    .line 615
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    .line 616
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 620
    :goto_0
    return-void

    .line 618
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePlayPauseState(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    .line 623
    const-string v3, "TransportControlView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePlayPauseState(), old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    if-ne p1, v3, :cond_0

    .line 661
    :goto_0
    return-void

    .line 630
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 650
    sget v2, Lcom/android/keyguard/R$drawable;->ic_media_play:I

    .line 651
    .local v2, "imageResId":I
    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_play_description:I

    .line 655
    .local v1, "imageDescId":I
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v3}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 656
    .local v0, "clientSupportsSeek":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    .line 658
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 659
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 660
    iput p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    goto :goto_0

    .line 632
    .end local v0    # "clientSupportsSeek":Z
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_0
    sget v2, Lcom/android/keyguard/R$drawable;->stat_sys_warning:I

    .line 635
    .restart local v2    # "imageResId":I
    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_play_description:I

    .line 636
    .restart local v1    # "imageDescId":I
    goto :goto_1

    .line 639
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_1
    sget v2, Lcom/android/keyguard/R$drawable;->ic_media_pause:I

    .line 640
    .restart local v2    # "imageResId":I
    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_pause_description:I

    .line 641
    .restart local v1    # "imageDescId":I
    goto :goto_1

    .line 644
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_2
    sget v2, Lcom/android/keyguard/R$drawable;->ic_media_stop:I

    .line 645
    .restart local v2    # "imageResId":I
    sget v1, Lcom/android/keyguard/R$string;->keyguard_transport_stop_description:I

    .line 646
    .restart local v1    # "imageDescId":I
    goto :goto_1

    .line 655
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 630
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateTransportControls(I)V
    .locals 1
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 311
    iput p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlFlags:I

    .line 312
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    .line 314
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method cancelResetToMetadata()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 603
    return-void
.end method

.method clearMetadata()V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    .line 458
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->clear()V

    .line 459
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->populateMetadata()V

    .line 460
    return-void
.end method

.method delayResetToMetadata()V
    .locals 4

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 598
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardTransportControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 599
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 367
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 368
    const-string v0, "TransportControlView"

    const-string v1, "onAttachToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    .line 373
    :cond_0
    const-string v0, "TransportControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering TCV "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->clear()V

    .line 375
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 377
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 383
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 384
    .local v0, "dim":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v0}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    .line 385
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 389
    const-string v0, "TransportControlView"

    const-string v1, "onDetachFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 391
    const-string v0, "TransportControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering TCV "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    .line 393
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 394
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->clear()V

    .line 395
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 396
    return-void
.end method

.method public onFinishInflate()V
    .locals 8

    .prologue
    .line 340
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 341
    sget v6, Lcom/android/keyguard/R$id;->info_container:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mInfoContainer:Landroid/view/ViewGroup;

    .line 342
    sget v6, Lcom/android/keyguard/R$id;->metadata_container:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    .line 343
    sget v6, Lcom/android/keyguard/R$id;->badge:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    .line 344
    sget v6, Lcom/android/keyguard/R$id;->title:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    .line 345
    sget v6, Lcom/android/keyguard/R$id;->artist_album:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackArtistAlbum:Landroid/widget/TextView;

    .line 346
    sget v6, Lcom/android/keyguard/R$id;->transient_seek:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    .line 347
    sget v6, Lcom/android/keyguard/R$id;->transient_seek_bar:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    .line 348
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 349
    sget v6, Lcom/android/keyguard/R$id;->transient_seek_time_elapsed:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    .line 350
    sget v6, Lcom/android/keyguard/R$id;->transient_seek_time_remaining:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeTotal:Landroid/widget/TextView;

    .line 351
    sget v6, Lcom/android/keyguard/R$id;->btn_prev:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    .line 352
    sget v6, Lcom/android/keyguard/R$id;->btn_play:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    .line 353
    sget v6, Lcom/android/keyguard/R$id;->btn_next:I

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    .line 354
    const/4 v6, 0x3

    new-array v1, v6, [Landroid/view/View;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    aput-object v7, v1, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    aput-object v7, v1, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    aput-object v7, v1, v6

    .line 355
    .local v1, "buttons":[Landroid/view/View;
    move-object v0, v1

    .local v0, "arr$":[Landroid/view/View;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 356
    .local v5, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportCommandListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v4

    .line 360
    .local v4, "screenOn":Z
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardTransportControlView;->setEnableMarquee(Z)V

    .line 362
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 363
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 411
    instance-of v1, p1, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;

    if-nez v1, :cond_0

    .line 412
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 423
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 415
    check-cast v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;

    .line 416
    .local v0, "ss":Lcom/android/keyguard/KeyguardTransportControlView$SavedState;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 417
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->artist:Ljava/lang/String;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1702(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->trackTitle:Ljava/lang/String;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1802(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->albumTitle:Ljava/lang/String;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1902(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-wide v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->duration:J

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v1, v2, v3}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2002(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;J)J

    .line 421
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->bitmap:Landroid/graphics/Bitmap;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2102(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 422
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->populateMetadata()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 400
    new-instance v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 401
    .local v0, "ss":Lcom/android/keyguard/KeyguardTransportControlView$SavedState;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->artist:Ljava/lang/String;

    .line 402
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->trackTitle:Ljava/lang/String;

    .line 403
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->albumTitle:Ljava/lang/String;

    .line 404
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->duration:J

    .line 405
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2100(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->bitmap:Landroid/graphics/Bitmap;

    .line 406
    return-object v0
.end method

.method public providesClock()Z
    .locals 1

    .prologue
    .line 731
    const/4 v0, 0x0

    return v0
.end method

.method resetToMetadata()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mInfoContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 589
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 594
    :cond_0
    return-void
.end method

.method scrubTo(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/media/RemoteController;->seekTo(J)Z

    .line 611
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;->userActivity()V

    .line 612
    return-void
.end method

.method setBadgeIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "bmp"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 429
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 430
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 431
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 432
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    const/16 v2, 0xef

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 433
    return-void
.end method

.method setSeekBarDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 607
    return-void
.end method

.method setSeekBarsEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z

    if-ne p1, v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z

    .line 320
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 323
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->cancelResetToMetadata()V

    goto :goto_0
.end method

.method public setTransportControlCallback(Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;)V
    .locals 0
    .param p1, "transportControlCallback"    # Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    .line 330
    return-void
.end method

.method tryToggleSeekBar()Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 564
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mInfoContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 566
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 569
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->cancelResetToMetadata()V

    .line 570
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 581
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;->userActivity()V

    .line 582
    const/4 v0, 0x1

    return v0

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 574
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->delayResetToMetadata()V

    .line 575
    iget v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->playbackPositionShouldMove(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->run()V

    goto :goto_0

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->updateOnce()Z

    goto :goto_0
.end method

.method updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 4
    .param p1, "data"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1702(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1802(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1902(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/16 v1, 0x9

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/media/RemoteController$MetadataEditor;->getLong(IJ)J

    move-result-wide v2

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v0, v2, v3}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2002(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;J)J

    .line 471
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2100(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteController$MetadataEditor;->getBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2102(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 473
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->populateMetadata()V

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    goto :goto_0
.end method

.method updateSeekBars()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v2}, Landroid/media/RemoteController;->getEstimatedMediaPosition()J

    move-result-wide v2

    long-to-int v0, v2

    .line 665
    .local v0, "position":I
    const-string v2, "TransportControlView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Estimated time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    if-ltz v0, :cond_0

    .line 667
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 668
    const/4 v1, 0x1

    .line 673
    :goto_0
    return v1

    .line 670
    :cond_0
    const-string v2, "TransportControlView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating seek bars; received invalid estimated media position ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). Disabling seek."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    goto :goto_0
.end method

.method updateSeekDisplay()V
    .locals 4

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v1}, Landroid/media/RemoteController;->getEstimatedMediaPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 553
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 555
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeTotal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    const-string v0, "TransportControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSeekDisplay timeElapsed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    return-void
.end method
