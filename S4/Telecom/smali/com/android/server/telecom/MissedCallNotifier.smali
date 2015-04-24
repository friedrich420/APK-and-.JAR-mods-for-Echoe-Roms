.class public final Lcom/android/server/telecom/MissedCallNotifier;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "MissedCallNotifier.java"


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMissedCallCount:I

.field private mMissedCallName:Ljava/lang/String;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
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

    sput-object v0, Lcom/android/server/telecom/MissedCallNotifier;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/android/server/telecom/MissedCallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/MissedCallNotifier$1;-><init>(Lcom/android/server/telecom/MissedCallNotifier;)V

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/MissedCallNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    invoke-direct {p0}, Lcom/android/server/telecom/MissedCallNotifier;->updateOnStartup()V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/MissedCallNotifier;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/telecom/MissedCallNotifier;->cancelMissedCallNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/MissedCallNotifier;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/telecom/MissedCallNotifier;->updateOnStartup()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelMissedCallNotification()V
    .locals 2

    .prologue
    .line 380
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    .line 381
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 382
    new-instance v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;-><init>(Landroid/content/Context;)V

    .line 383
    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->cancelCoverMissedNotification()V

    .line 384
    return-void
.end method

.method private static configureLedOnNotification(Landroid/app/Notification;)V
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 516
    iget v0, p0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/Notification;->defaults:I

    .line 517
    return-void
.end method

.method private createCallLogPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 462
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 465
    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 467
    invoke-virtual {v1, v3, v3}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createSendSmsFromNotificationPendingIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 494
    const-string v0, "com.android.server.telecom.ACTION_SEND_SMS_FROM_NOTIFICATION"

    const-string v1, "smsto"

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/MissedCallNotifier;->createTelecomPendingIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createTelecomPendingIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 507
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/server/telecom/TelecomBroadcastReceiver;

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getNameForCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    .line 390
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 391
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getName()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 418
    :goto_1
    return-object v0

    .line 390
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 400
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 401
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    .line 402
    :goto_2
    if-eqz v1, :cond_3

    .line 403
    iget-object v2, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Lcom/android/server/telecom/EcidContact;->doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/server/telecom/EcidContact;

    move-result-object v1

    .line 404
    if-eqz v1, :cond_3

    .line 405
    invoke-virtual {v1, v4}, Lcom/android/server/telecom/EcidContact;->getContactName(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ecid name added as "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 408
    goto :goto_1

    .line 401
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 414
    :cond_3
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 415
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 418
    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateOnStartup()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 523
    const-string v0, "updateOnStartup()..."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    new-instance v0, Lcom/android/server/telecom/MissedCallNotifier$2;

    iget-object v3, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/server/telecom/MissedCallNotifier$2;-><init>(Lcom/android/server/telecom/MissedCallNotifier;Landroid/content/ContentResolver;)V

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    const/4 v3, 0x3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    const-string v3, " AND new=1"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const-string v3, "content://logs/call"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/server/telecom/MissedCallNotifier;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void
.end method


# virtual methods
.method public final SecShowMissedCallNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10

    .prologue
    .line 291
    const-string v0, "SecShowMissedCallNotification"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    .line 294
    new-instance v1, Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;-><init>(Landroid/content/Context;)V

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    .line 310
    iget v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 311
    const v2, 0x7f08000a

    .line 312
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    .line 320
    :goto_1
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v7, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 321
    const v3, 0x108007f

    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v5, 0x7f08000d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    aput-object v9, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f090000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/telecom/MissedCallNotifier;->createCallLogPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 335
    const-string v0, "tel"

    const/4 v2, 0x0

    invoke-static {v0, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 339
    :cond_0
    iget v2, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 340
    const-string v2, "Add actions with number %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 344
    const/high16 v2, 0x7f020000

    iget-object v3, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v4, 0x7f08000e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.server.telecom.ACTION_CALL_BACK_FROM_NOTIFICATION"

    invoke-direct {p0, v4, v0}, Lcom/android/server/telecom/MissedCallNotifier;->createTelecomPendingIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v7, v2, v3, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 348
    const v2, 0x7f020001

    iget-object v3, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v4, 0x7f08000f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/server/telecom/MissedCallNotifier;->createSendSmsFromNotificationPendingIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v7, v2, v3, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 358
    :cond_1
    :goto_2
    const-string v0, "Notifying %d missed calls to SViewCover"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    iget v6, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->notifyMissedCall$6409b06e(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 361
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 362
    const-string v0, "missed call notification by TPhone."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    :goto_3
    return-void

    .line 304
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v0, p2, v2}, Lcom/android/server/telecom/EcidContact;->doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/server/telecom/EcidContact;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/EcidContact;->getContactName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ecid name added as "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v0, p2, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f080008

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 314
    :cond_5
    const v2, 0x7f08000b

    .line 315
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f08000c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 354
    :cond_6
    const-string v0, "Suppress actions. missedCall number: %d."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 366
    :cond_7
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 367
    iget v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    iput v1, v0, Landroid/app/Notification;->missedCount:I

    .line 368
    invoke-static {v0}, Lcom/android/server/telecom/MissedCallNotifier;->configureLedOnNotification(Landroid/app/Notification;)V

    .line 370
    const-string v1, "Adding missed call notification for %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 374
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CallBadge;->updateBadge(Landroid/content/Context;I)V

    goto/16 :goto_3
.end method

.method final clearMissedCalls()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 121
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 122
    const-string v1, "new"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string v1, "is_read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string v2, "new"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, " = 1 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v2, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lcom/android/server/telecom/MissedCallNotifier;->cancelMissedCallNotification()V

    .line 133
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CallBadge;->updateBadge(Landroid/content/Context;I)V

    .line 134
    return-void
.end method

.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 v0, 0x7

    if-ne p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 114
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    .line 116
    :cond_0
    return-void
.end method

.method public final showMissedCallNotification(Lcom/android/server/telecom/Call;)V
    .locals 14

    .prologue
    const/4 v6, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x1

    .line 142
    const-string v0, "showMissedCallNotification"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    .line 145
    new-instance v7, Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;-><init>(Landroid/content/Context;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->getNameForCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v1

    iget-object v5, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    .line 162
    iget v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    if-ne v0, v4, :cond_2

    .line 163
    const v1, 0x7f08000a

    .line 164
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    .line 179
    :goto_0
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v8, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    const v5, 0x108007f

    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v10, 0x7f08000d

    new-array v11, v4, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallName:Ljava/lang/String;

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f090000

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/telecom/MissedCallNotifier;->createCallLogPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 194
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v5

    .line 195
    if-nez v5, :cond_3

    move-object v0, v6

    .line 198
    :goto_1
    iget v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    if-ne v1, v4, :cond_6

    .line 199
    const-string v1, "Add actions with number %s."

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {p0, v1, v9}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    const-string v1, "usa_cdma_smc_fac_req"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 203
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPresentation(ILcom/android/server/telecom/Call;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isPresentationAllowed(I)Z

    move-result v1

    .line 207
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v9, 0x7f08002a

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    const/high16 v0, 0x7f020000

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v9, 0x7f08000e

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "com.android.server.telecom.ACTION_CALL_BACK_FROM_NOTIFICATION"

    invoke-direct {p0, v9, v5}, Lcom/android/server/telecom/MissedCallNotifier;->createTelecomPendingIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v0, v1, v9}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 213
    const v0, 0x7f020001

    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v9, 0x7f08000f

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5}, Lcom/android/server/telecom/MissedCallNotifier;->createSendSmsFromNotificationPendingIntent(Landroid/net/Uri;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v8, v0, v1, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 218
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhotoIcon()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 219
    if-eqz v9, :cond_5

    .line 221
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v9, v1, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 223
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 224
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 225
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 226
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v1, v2, v2, v0, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 227
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 229
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 230
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 232
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 233
    invoke-virtual {v7, v9}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 261
    :cond_1
    :goto_3
    const-string v0, "Notifying %d missed calls to SViewCover"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    invoke-direct {p0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->getNameForCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-virtual {v7, p1, v0, v1}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->notifyMissedCall(Lcom/android/server/telecom/Call;Ljava/lang/String;I)V

    .line 264
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 265
    const-string v0, "missed call notification by TPhone."

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    :goto_4
    return-void

    .line 166
    :cond_2
    const v1, 0x7f08000b

    .line 173
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    const v5, 0x7f08000c

    new-array v8, v4, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 195
    :cond_3
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 205
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isNumberExists(I)Z

    move-result v1

    goto/16 :goto_2

    .line 235
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 237
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 239
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v9, v1, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 241
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 242
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 243
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 244
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v1, v2, v2, v0, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 245
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 247
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 248
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 251
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 252
    invoke-virtual {v7, v9}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->setPhoto(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 256
    :cond_6
    const-string v1, "Suppress actions. handle: %s, missedCalls: %d."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v13

    iget v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 269
    :cond_7
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 270
    iget v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    iput v1, v0, Landroid/app/Notification;->missedCount:I

    .line 271
    invoke-static {v0}, Lcom/android/server/telecom/MissedCallNotifier;->configureLedOnNotification(Landroid/app/Notification;)V

    .line 273
    const-string v1, "Adding missed call notification for %s."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v13

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v6, v4, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/telecom/MissedCallNotifier;->mMissedCallCount:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CallBadge;->updateBadge(Landroid/content/Context;I)V

    goto/16 :goto_4
.end method
