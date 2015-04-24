.class public final Lcom/android/server/telecom/secutils/RingTTS;
.super Ljava/lang/Object;
.source "RingTTS.java"


# static fields
.field private static sInstance:Lcom/android/server/telecom/secutils/RingTTS;


# instance fields
.field private bChecked:Z

.field private bStarredContact:Z

.field private mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/RingTTS;->sInstance:Lcom/android/server/telecom/secutils/RingTTS;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/android/server/telecom/secutils/RingTTS;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    .line 27
    iput-object v1, p0, Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;

    .line 31
    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->bStarredContact:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->bChecked:Z

    .line 35
    new-instance v0, Lcom/android/server/telecom/secutils/RingTTS$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/RingTTS$1;-><init>(Lcom/android/server/telecom/secutils/RingTTS;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/telecom/secutils/RingTTS;Lcom/android/server/telecom/secutils/CallTextToSpeech;)Lcom/android/server/telecom/secutils/CallTextToSpeech;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/server/telecom/secutils/RingTTS;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/RingTTS;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/RingTTS;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/RingTTS;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/server/telecom/secutils/RingTTS;->sInstance:Lcom/android/server/telecom/secutils/RingTTS;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/server/telecom/secutils/RingTTS;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/RingTTS;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/telecom/secutils/RingTTS;->sInstance:Lcom/android/server/telecom/secutils/RingTTS;

    .line 89
    :cond_0
    sget-object v0, Lcom/android/server/telecom/secutils/RingTTS;->sInstance:Lcom/android/server/telecom/secutils/RingTTS;

    return-object v0
.end method


# virtual methods
.method public final checkTTS()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xbb8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 95
    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/RingTTS;->bChecked:Z

    .line 97
    const-string v0, "RingTTS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkTTS bStattedContact : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/telecom/secutils/RingTTS;->bStarredContact:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    const-string v0, "h_and_j_as_phone_os_up"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDrivingModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isReadOutNotificatonOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 111
    :goto_0
    if-eqz v0, :cond_6

    .line 113
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 120
    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/telecom/secutils/RingTTS;->bStarredContact:Z

    .line 122
    return-void

    :cond_1
    move v0, v2

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isReadOutNotificatonOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->bStarredContact:Z

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    .line 115
    :cond_6
    const-string v0, "extended_restrict_international_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isIntIncomingCallVoiceNoti()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public final setStarredContact(Z)V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->bStarredContact:Z

    .line 148
    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->bChecked:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/RingTTS;->checkTTS()V

    .line 154
    :cond_0
    return-void
.end method

.method public final stopTTS()V
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->bChecked:Z

    .line 128
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/RingTTS;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    .line 142
    :cond_1
    return-void
.end method
