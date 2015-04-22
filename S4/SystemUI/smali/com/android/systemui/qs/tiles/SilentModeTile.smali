.class public Lcom/android/systemui/qs/tiles/SilentModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SilentModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SilentModeQuickSettingButton"

.field private static mDeviceSoundProfile:I

.field private static mDeviceSoundProfilePrevious:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTextID:I

.field private mZenMode:I

.field private final mZenObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    .line 58
    new-instance v0, Lcom/android/systemui/qs/tiles/SilentModeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SilentModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/SilentModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 361
    new-instance v0, Lcom/android/systemui/qs/tiles/SilentModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/SilentModeTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenObserver:Landroid/database/ContentObserver;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    sput v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    .line 80
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    sput v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->updateStatus()V

    .line 85
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setListeningLocal(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 89
    return-void

    .line 83
    :cond_0
    const-string v0, "STATUSBAR-SilentModeQuickSettingButton"

    const-string v1, "mAudioManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 48
    sput p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 48
    sput p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SilentModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SilentModeTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/SilentModeTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SilentModeTile;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/SilentModeTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SilentModeTile;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/SilentModeTile;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SilentModeTile;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;

    .prologue
    const v5, 0x7f020580

    const/4 v1, 0x1

    const v3, 0x7f0205a2

    const v2, 0x7f0205a4

    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, "isPriorityInZenMode":Z
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mInterruptionsSoundMode:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    if-ne v4, v1, :cond_0

    move v0, v1

    .line 261
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_1

    .line 262
    iget v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v1, :pswitch_data_0

    .line 316
    :goto_1
    :pswitch_0
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 264
    :pswitch_1
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 267
    :pswitch_2
    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 270
    :pswitch_3
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 273
    :pswitch_4
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    packed-switch v1, :pswitch_data_1

    .line 281
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 275
    :pswitch_5
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 278
    :pswitch_6
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 287
    :cond_1
    iget v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    packed-switch v1, :pswitch_data_2

    :pswitch_7
    goto :goto_1

    .line 289
    :pswitch_8
    if-eqz v0, :cond_2

    const v1, 0x7f02057b

    :goto_2
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 292
    :pswitch_9
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    if-eqz v1, :cond_3

    .line 293
    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 295
    :cond_3
    const v1, 0x7f0205a6

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 299
    :pswitch_a
    if-eqz v0, :cond_4

    const v1, 0x7f02057c

    :goto_3
    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_3

    .line 302
    :pswitch_b
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    packed-switch v1, :pswitch_data_3

    .line 310
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 304
    :pswitch_c
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 307
    :pswitch_d
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    goto :goto_1

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 273
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 287
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 302
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private showSecondaryMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 380
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04005c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 382
    .local v2, "content":Landroid/view/View;
    const v5, 0x7f0e01d5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 383
    .local v3, "soundRadio":Landroid/widget/RadioButton;
    const v5, 0x7f0e01d6

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 384
    .local v4, "vibrateRadio":Landroid/widget/RadioButton;
    const v5, 0x7f0e01d3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 386
    .local v0, "cancelBtn":Landroid/widget/Button;
    sget v5, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-ne v5, v8, :cond_0

    .line 387
    invoke-virtual {v4, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 393
    :goto_0
    new-instance v1, Lcom/android/systemui/qs/tiles/SilentModeTile$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/SilentModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/SilentModeTile;)V

    .line 413
    .local v1, "clickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    invoke-virtual {p0, v2, v8}, Lcom/android/systemui/qs/tiles/SilentModeTile;->showDetailviewPanel(Landroid/view/View;I)Z

    .line 418
    return-void

    .line 390
    .end local v1    # "clickListener":Landroid/view/View$OnClickListener;
    :cond_0
    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected handleClick()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 119
    const-string v4, "STATUSBAR-SilentModeQuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-array v1, v6, [Ljava/lang/String;

    const-string v3, "false"

    aput-object v3, v1, v7

    .line 122
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v5, "isSettingsChangesAllowed"

    invoke-static {v3, v4, v5, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, "isSettingsChangesAllowed":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 125
    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 134
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 135
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0494

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 140
    :cond_2
    const/4 v2, 0x0

    .line 142
    .local v2, "soundProfile":I
    sget v3, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-ne v3, v6, :cond_4

    .line 143
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mInterruptionsSoundMode:Z

    if-eqz v3, :cond_3

    .line 144
    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    .line 145
    const/4 v2, 0x0

    .line 172
    :goto_1
    const-string v3, "STATUSBAR-SilentModeQuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SilentMode handleClick(), setRingerMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-nez v2, :cond_8

    .line 174
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    .line 148
    const/4 v2, 0x2

    goto :goto_1

    .line 150
    :cond_4
    sget v3, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-nez v3, :cond_6

    .line 151
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mInterruptionsSoundMode:Z

    if-eqz v3, :cond_5

    .line 152
    const/4 v2, 0x2

    goto :goto_1

    .line 158
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 160
    :cond_6
    sget v3, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-ne v3, v8, :cond_7

    .line 162
    const/4 v2, 0x1

    .line 166
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    goto :goto_1

    .line 168
    :cond_7
    const/4 v2, 0x2

    .line 169
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setQsTileViewSoundEffectsEnabled(Z)V

    goto :goto_1

    .line 177
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2, v7}, Landroid/media/AudioManager;->setRingerMode(IZ)V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setListeningLocal(Z)V

    .line 115
    return-void
.end method

.method public handleLongClick()V
    .locals 5

    .prologue
    .line 189
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "true"

    aput-object v3, v1, v2

    .line 190
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, "isSettingsChangesAllowed":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 193
    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->handleLongClick()V

    .line 184
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7f0d0343

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    const v4, 0x7f0d0342

    const v3, 0x7f0d0338

    .line 203
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 204
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 206
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 207
    iput v6, p1, Lcom/android/systemui/qs/QSTile$MultiState;->imageAlpha:F

    .line 208
    iput v6, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textAlpha:F

    .line 209
    const/4 v1, -0x1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    .line 210
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->handleUpdateIconState(Lcom/android/systemui/qs/QSTile$MultiState;)V

    .line 211
    packed-switch v0, :pswitch_data_0

    .line 253
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 203
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 213
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_1
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 218
    :pswitch_2
    const v1, 0x7f0d0344

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 223
    :pswitch_3
    invoke-virtual {p0, v7, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 226
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->tintColor:I

    goto :goto_1

    .line 232
    :pswitch_4
    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->imageAlpha:F

    .line 233
    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textAlpha:F

    .line 234
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    packed-switch v1, :pswitch_data_1

    .line 246
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 236
    :pswitch_5
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 241
    :pswitch_6
    invoke-virtual {p0, v7, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 234
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 99
    return-void
.end method

.method public setListeningLocal(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    const/4 v3, 0x0

    .line 102
    if-eqz p1, :cond_0

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 109
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public updateStatus()V
    .locals 5

    .prologue
    const v2, 0x7f0d0363

    const/4 v4, 0x1

    const v3, 0x7f0d0362

    .line 319
    const/4 v0, -0x1

    .line 320
    .local v0, "status":I
    iput v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    .line 323
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-ne v1, v4, :cond_1

    .line 324
    const/4 v0, 0x4

    .line 325
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mInterruptionsSoundMode:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    if-ne v1, v4, :cond_0

    .line 326
    const v1, 0x7f0d0496

    iput v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    .line 358
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->refreshState(Ljava/lang/Object;)V

    .line 359
    return-void

    .line 328
    :cond_0
    iput v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    .line 330
    :cond_1
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    if-nez v1, :cond_3

    .line 331
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mInterruptionsSoundMode:Z

    if-eqz v1, :cond_2

    .line 332
    const/4 v0, 0x2

    .line 333
    const v1, 0x7f0d0364

    iput v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    .line 335
    :cond_2
    const/4 v0, 0x5

    .line 336
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfilePrevious:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 341
    :pswitch_0
    iput v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    .line 338
    :pswitch_1
    iput v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    .line 345
    :cond_3
    sget v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 346
    const/4 v0, 0x1

    .line 347
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mInterruptionsSoundMode:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I

    if-ne v1, v4, :cond_4

    .line 348
    const v1, 0x7f0d0497

    iput v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    .line 350
    :cond_4
    iput v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    .line 353
    :cond_5
    const/4 v0, 0x1

    .line 354
    iput v3, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mTextID:I

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
