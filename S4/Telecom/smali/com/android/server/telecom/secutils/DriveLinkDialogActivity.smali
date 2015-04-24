.class public Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;
.super Landroid/app/Activity;
.source "DriveLinkDialogActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

.field private mContext:Landroid/content/Context;

.field private mDismissButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mIsNumberSaved:Z

.field private mIsPrivate:Z

.field private mMissedIconLand:Landroid/view/ViewGroup;

.field private mMissedIconPort:Landroid/widget/ImageView;

.field private mName:Ljava/lang/String;

.field private mRejectDialog:Landroid/view/ViewGroup;

.field private mRejectDialogBody:Landroid/view/ViewGroup;

.field private mRejectMsg:Ljava/lang/String;

.field private mRejectMsgView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsNumberSaved:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z

    .line 71
    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsg:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mDismissButton:Landroid/widget/Button;

    .line 77
    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialog:Landroid/view/ViewGroup;

    .line 78
    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialogBody:Landroid/view/ViewGroup;

    .line 79
    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconPort:Landroid/widget/ImageView;

    .line 80
    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconLand:Landroid/view/ViewGroup;

    .line 82
    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    .line 261
    new-instance v0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$2;-><init>(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsNumberSaved:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 318
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 319
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 321
    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v2, :cond_3

    .line 322
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 323
    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_1

    :cond_0
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1

    const/16 v4, 0x23

    if-ne v3, v4, :cond_2

    .line 324
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 325
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_2

    .line 326
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 321
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private playNotiSoundAndReadOutRejectMsg()V
    .locals 5

    .prologue
    const/16 v4, 0x65

    const/16 v1, 0x64

    .line 222
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 227
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 232
    const-string v0, "ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const v0, 0x7f080078

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsg:Ljava/lang/String;

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    return-void

    .line 235
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z

    if-eqz v0, :cond_1

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, p0

    .line 238
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080079

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsg:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, p0

    goto :goto_1
.end method

.method private updateDialogLayout()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_5

    move v1, v0

    .line 155
    :goto_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialog:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialog:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 158
    if-eqz v1, :cond_6

    .line 159
    const/4 v3, -0x1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 162
    :goto_1
    iget-object v3, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialog:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialogBody:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialogBody:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    if-eqz v1, :cond_7

    .line 167
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 168
    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 174
    :goto_2
    iget-object v3, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialogBody:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    :cond_1
    if-eqz v1, :cond_8

    .line 178
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconPort:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconPort:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconLand:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconLand:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 182
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 193
    :cond_4
    :goto_3
    return-void

    :cond_5
    move v1, v2

    .line 153
    goto :goto_0

    .line 161
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 171
    :cond_7
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 172
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    .line 185
    :cond_8
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconPort:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconPort:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    :cond_9
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconLand:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconLand:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 187
    :cond_a
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 306
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 307
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mContext:Landroid/content/Context;

    const/16 v1, 0xa

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/android/server/telecom/secutils/CallTextToSpeech;

    .line 312
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->finish()V

    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 315
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 297
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->updateDialogLayout()V

    .line 298
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget-object v0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->setContentView(I)V

    .line 92
    :goto_0
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f0e0002

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialog:Landroid/view/ViewGroup;

    const v0, 0x7f0e0004

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectDialogBody:Landroid/view/ViewGroup;

    const v0, 0x7f0e0005

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconPort:Landroid/widget/ImageView;

    const v0, 0x7f0e0003

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mMissedIconLand:Landroid/view/ViewGroup;

    const/high16 v0, 0x7f0e0000

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mRejectMsgView:Landroid/widget/TextView;

    const v0, 0x7f0e0001

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mDismissButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mDismissButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mDismissButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity$1;-><init>(Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "private_num"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z

    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "number_saved_extra"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsNumberSaved:Z

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->playNotiSoundAndReadOutRejectMsg()V

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->updateDialogLayout()V

    .line 93
    return-void

    .line 91
    :cond_1
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 92
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name_number_extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 197
    sget-object v0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onNewIntent"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    const-string v0, "private_num"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z

    .line 201
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "number_saved_extra"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsNumberSaved:Z

    .line 208
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->playNotiSoundAndReadOutRejectMsg()V

    .line 209
    return-void

    .line 204
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mIsPrivate:Z

    .line 205
    const-string v0, "name_number_extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;->finish()V

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
