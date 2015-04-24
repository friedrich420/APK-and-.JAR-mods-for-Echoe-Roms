.class public Lcom/android/server/telecom/secutils/SViewCoverNotifier;
.super Ljava/lang/Object;
.source "SViewCoverNotifier.java"


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mMissedCallCount:I

.field private mMissedCallDate:J

.field private mMissedCallName:Ljava/lang/String;

.field private mMissedCallNumber:Ljava/lang/String;

.field private mPhoto:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const-class v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "presentation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 57
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallDate:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/telecom/secutils/SViewCoverNotifier;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/telecom/secutils/SViewCoverNotifier;Ljava/lang/String;Ljava/lang/Long;ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 30
    sget-object v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;

    const-string v1, "sendMissedCallInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_2

    iget v0, v2, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040003

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_1
    const v2, 0x7f0e0009

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "EXTRA_CALL_LOG_IDS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sec.android.app.dialertab.calllog.MISSED_CALL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    const-string v4, "missed_call"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "visibility"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "remote"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "count"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "contentIntent"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;

    const v1, 0x7f08000c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f040004

    invoke-direct {v0, v2, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x1

    if-le p3, v2, :cond_3

    const v2, 0x7f0e0008

    const v5, 0x7f020007

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_2
    if-eqz v4, :cond_5

    const v2, 0x7f0e000a

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_3
    const v2, 0x7f0e000b

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    if-eqz p4, :cond_4

    if-nez v4, :cond_4

    const/16 v2, 0x78

    const/16 v5, 0x78

    invoke-static {p4, v2, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    const v5, 0x7f0e0008

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_4
    const v2, 0x7f0e0008

    const v5, 0x7f020008

    invoke-virtual {v0, v2, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    :cond_5
    const v2, 0x7f0e000a

    invoke-virtual {v0, v2, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final cancelCoverMissedNotification()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    const-string v1, "type"

    const-string v2, "missed_call"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v1, "visibility"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    return-void
.end method

.method public final notifyMissedCall(Lcom/android/server/telecom/Call;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 61
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->notifyMissedCall$6409b06e(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 62
    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public final notifyMissedCall$6409b06e(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 65
    sget-object v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "notifyMissedCall : creationTimeMillis="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " missedCallCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput p5, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallCount:I

    .line 68
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallNumber:Ljava/lang/String;

    .line 70
    iput-wide p3, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallDate:J

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, " AND new=1"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    new-instance v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;-><init>(Lcom/android/server/telecom/secutils/SViewCoverNotifier;Landroid/content/ContentResolver;)V

    .line 114
    const/4 v1, 0x0

    const-string v3, "content://logs/call"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC LIMIT 1"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public final setPhoto(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mPhoto:Landroid/graphics/Bitmap;

    .line 199
    return-void
.end method
