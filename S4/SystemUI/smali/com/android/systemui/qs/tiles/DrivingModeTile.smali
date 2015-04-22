.class public Lcom/android/systemui/qs/tiles/DrivingModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "DrivingModeTile.java"


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
.field private static final DB_DRIVING_MODE_ON:Ljava/lang/String; = "driving_mode_on"

.field private static final DRIVINGMODE_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_drivingmode_checked"

.field private static final INTENT_DRIVING_MODE:Ljava/lang/String; = "android.settings.DRIVING_MODE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "DrivingModeTile"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field protected mPreviousState:Lcom/android/systemui/qs/QSTile$MultiState;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mZenMode:I

.field private final mZenObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 160
    new-instance v0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenObserver:Landroid/database/ContentObserver;

    .line 268
    new-instance v0, Lcom/android/systemui/qs/tiles/DrivingModeTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Lcom/android/systemui/qs/tiles/DrivingModeTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "driving_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/DrivingModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->init()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DrivingModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DrivingModeTile;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DrivingModeTile;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DrivingModeTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DrivingModeTile;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/tiles/DrivingModeTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DrivingModeTile;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DrivingModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DrivingModeTile;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DrivingModeTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DrivingModeTile;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DrivingModeTile;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DrivingModeTile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private areAllDrivingModeOptionsDisabled()Z
    .locals 13

    .prologue
    const/4 v12, -0x2

    const/4 v9, 0x0

    .line 386
    const-string v10, "DrivingModeTile"

    const-string v11, "  areAllDrivingModeOptionsDisabled"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_incoming_call_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 388
    .local v4, "incomingCall":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_chaton_call_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 389
    .local v2, "chatOn":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_message_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 390
    .local v5, "message":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_email_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 391
    .local v3, "email":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_voice_mail_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 392
    .local v8, "voiceMail":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_alarm_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 393
    .local v1, "alarm":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_schedule_notification"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 394
    .local v6, "scheduleNotification":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_unlock_screen_contents"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 395
    .local v7, "unlockScreen":I
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "driving_mode_air_call_accept"

    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 397
    .local v0, "aircallaccept":I
    if-nez v4, :cond_0

    if-nez v2, :cond_0

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    if-nez v8, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v6, :cond_0

    if-nez v7, :cond_0

    .line 399
    const/4 v9, 0x1

    .line 401
    :cond_0
    return v9
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 280
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 281
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 285
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "zen_mode"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenMode:I

    .line 287
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 288
    iget v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenMode:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenMode:I

    if-ne v1, v2, :cond_1

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    const/4 v2, 0x4

    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v4}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private isVoiceControlEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const/4 v1, 0x1

    .line 180
    .local v1, "isSVoiceInstalled":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return v1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onDisplayDrivingModeAlert()V
    .locals 10

    .prologue
    .line 303
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 305
    .local v2, "mDrivingModeAlertLayout":Landroid/view/LayoutInflater;
    const v7, 0x7f0400a6

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 307
    .local v3, "mDrivingModeAlertView":Landroid/view/View;
    const v7, 0x7f0e0337

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 309
    .local v4, "mDrivingModeCheckBox":Landroid/widget/CheckBox;
    const v7, 0x7f0e0336

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 311
    .local v5, "mDrivingModeTextView":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    const v9, 0x7f0d03c7

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    const v9, 0x7f0d03c8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, "messageString":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    new-instance v7, Lcom/android/systemui/qs/tiles/DrivingModeTile$4;

    invoke-direct {v7, p0, v4}, Lcom/android/systemui/qs/tiles/DrivingModeTile$4;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 322
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 323
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0d03c6

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 324
    const v7, 0x104000a

    new-instance v8, Lcom/android/systemui/qs/tiles/DrivingModeTile$5;

    invoke-direct {v8, p0, v4}, Lcom/android/systemui/qs/tiles/DrivingModeTile$5;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 335
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v7}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 336
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 339
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/android/systemui/qs/tiles/DrivingModeTile$6;

    invoke-direct {v8, p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile$6;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 345
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    const-string v8, "keyguard"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 346
    .local v1, "kgm":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 347
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d9

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 351
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 352
    return-void

    .line 349
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 212
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 214
    .local v0, "mode":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 215
    return-void

    .line 212
    .end local v0    # "mode":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showConfirmPopup()V
    .locals 4

    .prologue
    .line 355
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0495

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/qs/tiles/DrivingModeTile$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile$8;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/systemui/qs/tiles/DrivingModeTile$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile$7;-><init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 374
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 376
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 377
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 382
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 383
    return-void

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public handleClick()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 122
    const-string v3, "DrivingModeTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClick : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-eq v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 124
    :cond_0
    const-string v2, "DrivingModeTile"

    const-string v3, "mState.value == MultiState.DIM: return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 131
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 132
    const-string v2, "DrivingModeTile"

    const-string v3, "onClick(): Car mode state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->areAllDrivingModeOptionsDisabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->showConfirmPopup()V

    goto :goto_0

    .line 141
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->refreshState(Ljava/lang/Object;)V

    .line 143
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quickpanel_drivingmode_checked"

    const/4 v4, -0x2

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 146
    .local v1, "mChecked":I
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 147
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->setEnabled(Z)V

    .line 148
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->isVoiceControlEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->onDisplayDrivingModeAlert()V

    goto :goto_0

    .line 152
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->setEnabled(Z)V

    .line 153
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 223
    return-void
.end method

.method public handleLongClick()V
    .locals 7

    .prologue
    .line 195
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 196
    :cond_0
    const-string v3, "DrivingModeTile"

    const-string v4, "mState.value == MultiState.DIM || EXTRA1: return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return-void

    .line 201
    :cond_1
    const-string v3, "DrivingModeTile"

    const-string v4, "  handleLongClick"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v2, "com.android.settings"

    .line 203
    .local v2, "pkg":Ljava/lang/String;
    const-string v0, "com.android.settings.Settings$DrivingModeSettingsActivity"

    .line 204
    .local v0, "activity":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v1, "mIntent":Landroid/content/Intent;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 208
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->handleLongClick()V

    .line 190
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 7
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v6, 0x7f0d0339

    const v5, 0x7f020570

    const v4, 0x7f0d03c9

    .line 227
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 228
    .local v0, "value":I
    :goto_0
    const-string v1, "DrivingModeTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateState state :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v1, "DrivingModeTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateState value :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 232
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 233
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d036d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 234
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->alpha:F

    .line 236
    packed-switch v0, :pswitch_data_0

    .line 262
    :goto_1
    return-void

    .line 227
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 238
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f020571

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 239
    const v1, 0x7f0d0338

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 244
    :pswitch_1
    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 245
    invoke-virtual {p0, v4, v6}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 250
    :pswitch_2
    const v1, 0x7f02056f

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 251
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 254
    :pswitch_3
    iput v5, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 255
    invoke-virtual {p0, v4, v6}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 258
    const v1, 0x3ecccccd    # 0.4f

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->alpha:F

    goto :goto_1

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 266
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 300
    return-void
.end method
