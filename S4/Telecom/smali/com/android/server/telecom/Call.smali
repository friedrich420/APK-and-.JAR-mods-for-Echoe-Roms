.class public final Lcom/android/server/telecom/Call;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Lcom/android/server/telecom/CreateConnectionResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;,
        Lcom/android/server/telecom/Call$Listener;
    }
.end annotation


# static fields
.field private static final sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private static final sPhotoLoadListener:Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;


# instance fields
.field private BeforeNumberChange:Ljava/lang/String;

.field private mCallCapabilities:I

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mCallerDualPhoneNumber:Ljava/lang/String;

.field private mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field private mCannedSmsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCannedSmsResponsesLoadingStarted:Z

.field private mChildCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mConferenceLevelActiveCall:Lcom/android/server/telecom/Call;

.field private final mConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTimeMillis:J

.field private mConnectionManagerPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

.field private final mContext:Landroid/content/Context;

.field private mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

.field private mCreationTimeMillis:J

.field private mDirectToVoiceMailProcessed:Z

.field private mDirectToVoicemailQueryCompleted:Z

.field private final mDirectToVoicemailRunnable:Ljava/lang/Runnable;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private mHandle:Landroid/net/Uri;

.field private mHandlePresentation:I

.field private final mHandler:Landroid/os/Handler;

.field private mIncomingVerifyedByConnectionService:Z

.field private mIsConference:Z

.field private mIsEmergencyCall:Z

.field private final mIsIncoming:Z

.field private mIsLocallyDisconnecting:Z

.field private mIsUnknown:Z

.field private mIsUserExplictSelectPhoneAccount:Z

.field private mIsVoipAudioMode:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/Call$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mParentCall:Lcom/android/server/telecom/Call;

.field private mQueryToken:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

.field private mRingbackRequested:Z

.field private mSpeakerphoneOn:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private mTargetPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private mVideoState:I

.field private mVideoStateHistory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcom/android/server/telecom/Call$1;

    invoke-direct {v0}, Lcom/android/server/telecom/Call$1;-><init>()V

    sput-object v0, Lcom/android/server/telecom/Call;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 176
    new-instance v0, Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;

    invoke-direct {v0}, Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;-><init>()V

    sput-object v0, Lcom/android/server/telecom/Call;->sPhotoLoadListener:Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/ServiceBinder$Listener;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v2, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;

    invoke-direct {v2, p0, v0}, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;-><init>(Lcom/android/server/telecom/Call;B)V

    iput-object v2, p0, Lcom/android/server/telecom/Call;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    new-instance v2, Lcom/android/server/telecom/Call$3;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/Call$3;-><init>(Lcom/android/server/telecom/Call;)V

    iput-object v2, p0, Lcom/android/server/telecom/Call;->mDirectToVoicemailRunnable:Ljava/lang/Runnable;

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/telecom/Call;->mCreationTimeMillis:J

    .line 221
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/telecom/Call;->mHandler:Landroid/os/Handler;

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 225
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/telecom/Call;->mConnectTimeMillis:J

    .line 267
    new-instance v2, Landroid/telecom/DisconnectCause;

    invoke-direct {v2, v0}, Landroid/telecom/DisconnectCause;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/telecom/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 270
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/android/server/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 278
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x8

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    .line 287
    iput v0, p0, Lcom/android/server/telecom/Call;->mQueryToken:I

    .line 290
    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mRingbackRequested:Z

    .line 296
    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mDirectToVoiceMailProcessed:Z

    .line 298
    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mIncomingVerifyedByConnectionService:Z

    .line 300
    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mDirectToVoicemailQueryCompleted:Z

    .line 304
    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsConference:Z

    .line 306
    iput-object v1, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    .line 308
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    .line 311
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/telecom/Call;->mCannedSmsResponses:Ljava/util/List;

    .line 314
    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mCannedSmsResponsesLoadingStarted:Z

    .line 323
    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsLocallyDisconnecting:Z

    .line 325
    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsUserExplictSelectPhoneAccount:Z

    .line 329
    iput-object v1, p0, Lcom/android/server/telecom/Call;->mConferenceLevelActiveCall:Lcom/android/server/telecom/Call;

    .line 361
    if-eqz p8, :cond_0

    const/4 v0, 0x5

    :cond_0
    iput v0, p0, Lcom/android/server/telecom/Call;->mState:I

    .line 362
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    .line 363
    iput-object p2, p0, Lcom/android/server/telecom/Call;->mRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

    .line 364
    invoke-virtual {p0, p3}, Lcom/android/server/telecom/Call;->setHandle(Landroid/net/Uri;)V

    .line 365
    invoke-virtual {p0, p3, v5}, Lcom/android/server/telecom/Call;->setHandle(Landroid/net/Uri;I)V

    .line 366
    iput-object p4, p0, Lcom/android/server/telecom/Call;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 367
    invoke-virtual {p0, p5}, Lcom/android/server/telecom/Call;->setConnectionManagerPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 368
    invoke-virtual {p0, p6}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 369
    iput-boolean p7, p0, Lcom/android/server/telecom/Call;->mIsIncoming:Z

    .line 370
    iput-boolean p8, p0, Lcom/android/server/telecom/Call;->mIsConference:Z

    .line 371
    invoke-direct {p0}, Lcom/android/server/telecom/Call;->maybeLoadCannedSmsResponses()V

    .line 372
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.phone.CHANGED_CALL_NUMBER"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/telecom/Call;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    if-nez p3, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/server/telecom/Call;->BeforeNumberChange:Ljava/lang/String;

    .line 375
    return-void

    .line 374
    :cond_1
    invoke-virtual {p3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/ServiceBinder$Listener;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZJ)V
    .locals 11

    .prologue
    .line 386
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ServiceBinder$Listener;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    .line 387
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/android/server/telecom/Call;->mCreationTimeMillis:J

    .line 388
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.phone.CHANGED_CALL_NUMBER"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 389
    iget-object v3, p0, Lcom/android/server/telecom/Call;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/telecom/Call;->BeforeNumberChange:Ljava/lang/String;

    .line 391
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/Call;Lcom/android/internal/telephony/CallerInfo;I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 77
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/server/telecom/Call;->mQueryToken:I

    if-ne v0, p2, :cond_1

    iput-object p1, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-boolean v3, p0, Lcom/android/server/telecom/Call;->mDirectToVoicemailQueryCompleted:Z

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->startAdditionalQuery(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)V

    const-string v0, "CallerInfo received for %s: %s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    const-string v0, "Searching person uri %s for call %s"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    aput-object v2, v1, v4

    aput-object p0, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->contactDisplayPhotoUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/server/telecom/Call;->sPhotoLoadListener:Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;

    invoke-static {p2, v0, v1, v2, p0}, Lcom/android/server/telecom/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIncomingVerifyedByConnectionService:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/telecom/Call;->processDirectToVoicemail()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onCallerInfoChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/Call;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;I)V
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/android/server/telecom/Call;->mQueryToken:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p1, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onCallerInfoChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$302(Lcom/android/server/telecom/Call;Z)Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mDirectToVoicemailQueryCompleted:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/telecom/Call;->processDirectToVoicemail()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/telecom/Call;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mCannedSmsResponses:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/telecom/Call;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/telecom/Call;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/telecom/Call;->BeforeNumberChange:Ljava/lang/String;

    return-object v0
.end method

.method private addChildCall(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mConferenceLevelActiveCall:Lcom/android/server/telecom/Call;

    .line 1087
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 1090
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onChildrenChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 1093
    :cond_0
    return-void
.end method

.method static getStateFromConnectionState(I)I
    .locals 1

    .prologue
    const/4 v0, 0x7

    .line 1448
    packed-switch p0, :pswitch_data_0

    .line 1464
    :goto_0
    :pswitch_0
    return v0

    .line 1450
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1452
    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 1454
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1458
    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 1460
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_0

    .line 1462
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 1448
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private isRinging(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1181
    iget v2, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1186
    :goto_0
    return v0

    .line 1185
    :cond_0
    const-string v2, "Request to %s a non-ringing call %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p0, v3, v0

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1186
    goto :goto_0
.end method

.method private maybeLoadCannedSmsResponses()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1278
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsIncoming:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->isRespondViaSmsCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mCannedSmsResponsesLoadingStarted:Z

    if-nez v0, :cond_0

    .line 1279
    const-string v0, "maybeLoadCannedSmsResponses: starting task to load messages"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mCannedSmsResponsesLoadingStarted:Z

    .line 1282
    invoke-static {}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->getInstance()Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/Call$4;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/Call$4;-><init>(Lcom/android/server/telecom/Call;)V

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->loadCannedTextMessages$499a44e3(Landroid/telecom/Response;)V

    .line 1306
    :goto_0
    return-void

    .line 1304
    :cond_0
    const-string v0, "maybeLoadCannedSmsResponses: doing nothing"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private processDirectToVoicemail()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 705
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mDirectToVoiceMailProcessed:Z

    if-nez v0, :cond_1

    .line 706
    const-string v0, "processDirectToVoicemail"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v0, :cond_2

    .line 708
    const-string v0, "Directing call to voicemail: %s."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 711
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setState(I)V

    .line 712
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->reject$2598ce09()V

    .line 725
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/telecom/Call;->mDirectToVoiceMailProcessed:Z

    .line 727
    :cond_1
    return-void

    .line 713
    :cond_2
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->rejectCallIfShouldBe(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 714
    const-string v0, "this is rejected : %s."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 720
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 721
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onSuccessfulIncomingCall(Lcom/android/server/telecom/Call;)V

    goto :goto_1
.end method

.method private removeChildCall(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 1098
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onChildrenChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 1101
    :cond_0
    return-void
.end method


# virtual methods
.method final addListener(Lcom/android/server/telecom/Call$Listener;)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    return-void
.end method

.method public final answer(I)V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const-string v0, "answer"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/Call;->isRinging(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->answer(Lcom/android/server/telecom/Call;I)V

    .line 897
    :cond_0
    return-void
.end method

.method final can(I)Z
    .locals 1

    .prologue
    .line 1079
    iget v0, p0, Lcom/android/server/telecom/Call;->mCallCapabilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final clearConnectionService()V
    .locals 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    .line 690
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    .line 691
    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->removeCall(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V

    .line 699
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/ServiceBinder;->decrementAssociatedCallCount()V

    .line 701
    :cond_0
    return-void
.end method

.method final conferenceWith(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_0

    .line 995
    const-string v0, "conference requested on a call without a connection service."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    :goto_0
    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->conference(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public final disconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 848
    iput-boolean v2, p0, Lcom/android/server/telecom/Call;->mIsLocallyDisconnecting:Z

    .line 850
    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    if-ne v0, v2, :cond_5

    .line 852
    :cond_0
    const-string v0, "Aborting call %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    invoke-virtual {v0}, Lcom/android/server/telecom/CreateConnectionProcessor;->abort()V

    .line 867
    :cond_1
    :goto_0
    return-void

    .line 853
    :cond_2
    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    if-ne v0, v2, :cond_4

    :cond_3
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->handleCreateConnectionFailure(Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    :cond_4
    const-string v0, "Cannot abort a call which isn\'t either PRE_DIAL_WAIT or CONNECTING"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 854
    :cond_5
    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 855
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_6

    .line 856
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "disconnect() request on a call without a connection service."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 859
    :cond_6
    const-string v0, "Send disconnect to connection service for call: %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->disconnect(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public final getCallCapabilities()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lcom/android/server/telecom/Call;->mCallCapabilities:I

    return v0
.end method

.method public final getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method final getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/android/server/telecom/Call;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final getCallerDualPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerDualPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallerInfo()Lcom/android/internal/telephony/CallerInfo;
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    return-object v0
.end method

.method final getCannedSmsResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCannedSmsResponses:Ljava/util/List;

    return-object v0
.end method

.method public final getChildCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    return-object v0
.end method

.method final getConferenceableCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 620
    iget-wide v0, p0, Lcom/android/server/telecom/Call;->mConnectTimeMillis:J

    return-wide v0
.end method

.method final getConnectionManagerPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionManagerPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method final getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    return-object v0
.end method

.method final getContactUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_1

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    .line 976
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->lookupKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getCreationTimeMillis()J
    .locals 2

    .prologue
    .line 616
    iget-wide v0, p0, Lcom/android/server/telecom/Call;->mCreationTimeMillis:J

    return-wide v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method final getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object v0
.end method

.method public final getHandle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public final getHandlePresentation()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/android/server/telecom/Call;->mHandlePresentation:I

    return v0
.end method

.method public final getIsVoipAudioMode()Z
    .locals 1

    .prologue
    .line 1377
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsVoipAudioMode:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getOriginalHandle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object v0

    .line 559
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    goto :goto_0
.end method

.method public final getParentCall()Lcom/android/server/telecom/Call;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    return-object v0
.end method

.method public final getPhoneId()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1400
    const-wide/16 v0, 0x0

    .line 1401
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkMultiSimDsda()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1402
    iget-object v3, p0, Lcom/android/server/telecom/Call;->mTargetPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/telecom/Call;->mTargetPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mTargetPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAccoutSubId(Ljava/lang/String;)J

    move-result-wide v0

    .line 1405
    :cond_0
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 1406
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    .line 1407
    if-nez v1, :cond_1

    move v0, v2

    .line 1410
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method final getPhoto()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method final getPhotoIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final getRingtone()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public final getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;
    .locals 2

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_0

    .line 1487
    const-string v0, "mConnectionService is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1488
    const/4 v0, 0x0

    .line 1490
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public final getStartWithSpeakerphoneOn()Z
    .locals 1

    .prologue
    .line 1321
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mSpeakerphoneOn:Z

    return v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mTargetPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public final getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method public final getVideoState()I
    .locals 1

    .prologue
    .line 1346
    iget v0, p0, Lcom/android/server/telecom/Call;->mVideoState:I

    return v0
.end method

.method public final getVideoStateHistory()I
    .locals 1

    .prologue
    .line 1356
    iget v0, p0, Lcom/android/server/telecom/Call;->mVideoStateHistory:I

    return v0
.end method

.method public final handleCreateConnectionFailure(Landroid/telecom/DisconnectCause;)V
    .locals 2

    .prologue
    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    .line 800
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->clearConnectionService()V

    .line 801
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 802
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/telecom/CallsManager;->markCallAsDisconnected(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V

    .line 804
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsUnknown:Z

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 806
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onFailedUnknownCall(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 808
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsIncoming:Z

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 810
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onFailedIncomingCall(Lcom/android/server/telecom/Call;)V

    goto :goto_1

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 814
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onFailedOutgoingCall$47ced4ac(Lcom/android/server/telecom/Call;)V

    goto :goto_2

    .line 817
    :cond_2
    return-void
.end method

.method public final handleCreateConnectionSuccess(Lcom/android/server/telecom/CallIdMapper;Landroid/telecom/ParcelableConnection;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 747
    const-string v0, "handleCreateConnectionSuccessful %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    .line 749
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 750
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/Call;->setHandle(Landroid/net/Uri;I)V

    .line 751
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/Call;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 753
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getCallerDualPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setCallerDualPhoneNumber(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getCapabilities()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/telecom/Call;->setCallCapabilities(IZ)V

    .line 755
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setVideoProvider(Lcom/android/internal/telecom/IVideoProvider;)V

    .line 756
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setVideoState(I)V

    .line 757
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->isRingbackRequested()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setRingbackRequested(Z)V

    .line 758
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setStatusHints(Landroid/telecom/StatusHints;)V

    .line 760
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 761
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getConferenceableConnectionIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 762
    iget-object v2, p0, Lcom/android/server/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/CallIdMapper;->getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 765
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsUnknown:Z

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 767
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/telecom/Call;->getStateFromConnectionState(I)I

    move-result v2

    invoke-virtual {v0, p0, v2}, Lcom/android/server/telecom/Call$Listener;->onSuccessfulUnknownCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_1

    .line 769
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsIncoming:Z

    if-eqz v0, :cond_4

    .line 776
    iput-boolean v3, p0, Lcom/android/server/telecom/Call;->mIncomingVerifyedByConnectionService:Z

    .line 779
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mDirectToVoicemailQueryCompleted:Z

    if-eqz v0, :cond_3

    .line 780
    invoke-direct {p0}, Lcom/android/server/telecom/Call;->processDirectToVoicemail()V

    .line 794
    :cond_2
    :goto_2
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getIsVoipAudioMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setIsVoipAudioMode(Z)V

    .line 795
    return-void

    .line 784
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/telecom/Call;->mDirectToVoicemailRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/BluetoothManager;->getDirectToVoicemailMillis(Landroid/content/ContentResolver;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 788
    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 789
    invoke-virtual {p2}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/telecom/Call;->getStateFromConnectionState(I)I

    move-result v2

    invoke-virtual {v0, p0, v2}, Lcom/android/server/telecom/Call$Listener;->onSuccessfulOutgoingCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_3
.end method

.method public final hold()V
    .locals 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->hold(Lcom/android/server/telecom/Call;)V

    .line 924
    :cond_0
    return-void
.end method

.method final isActive()Z
    .locals 2

    .prologue
    .line 951
    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAlive()Z
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 946
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 944
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 939
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final isConference()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsConference:Z

    return v0
.end method

.method public final isEmergencyCall()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsEmergencyCall:Z

    return v0
.end method

.method public final isIncoming()Z
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsIncoming:Z

    return v0
.end method

.method public final isLocallyDisconnecting()Z
    .locals 1

    .prologue
    .line 1427
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsLocallyDisconnecting:Z

    return v0
.end method

.method final isRespondViaSmsCapable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1124
    iget v2, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 1160
    :cond_0
    :goto_0
    return v0

    .line 1128
    :cond_1
    iget-object v2, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 1134
    iget-object v2, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1144
    iget-object v2, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1150
    invoke-static {}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->getInstance()Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/telecom/Call;->mHandlePresentation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->isRespondViaSmsCapable(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1160
    goto :goto_0
.end method

.method final isRingbackRequested()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mRingbackRequested:Z

    return v0
.end method

.method public final isUnknown()Z
    .locals 1

    .prologue
    .line 1414
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsUnknown:Z

    return v0
.end method

.method public final isUserExplictSelectPhoneAccount()Z
    .locals 1

    .prologue
    .line 1440
    iget-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsUserExplictSelectPhoneAccount:Z

    return v0
.end method

.method final mergeConference()V
    .locals 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_1

    .line 1011
    const-string v0, "merging conference calls without a connection service."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->mergeConference(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method final onPostDialWait(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 985
    invoke-virtual {v0, p0, p1}, Lcom/android/server/telecom/Call$Listener;->onPostDialWait(Lcom/android/server/telecom/Call;Ljava/lang/String;)V

    goto :goto_0

    .line 987
    :cond_0
    return-void
.end method

.method final playDtmfTone(C)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 823
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_0

    .line 824
    const-string v0, "playDtmfTone() request on a call without a connection service."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    :goto_0
    return-void

    .line 826
    :cond_0
    const-string v0, "Send playDtmfTone to connection service for call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->playDtmfTone(Lcom/android/server/telecom/Call;C)V

    goto :goto_0
.end method

.method final postDialContinue(Z)V
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->onPostDialContinue(Lcom/android/server/telecom/Call;Z)V

    .line 991
    return-void
.end method

.method public final reject$2598ce09()V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const-string v0, "reject"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/Call;->isRinging(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->reject(Lcom/android/server/telecom/Call;)V

    .line 913
    :cond_0
    return-void
.end method

.method final removeListener(Lcom/android/server/telecom/Call$Listener;)V
    .locals 1

    .prologue
    .line 398
    if-eqz p1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 401
    :cond_0
    return-void
.end method

.method final setCallCapabilities(I)V
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/Call;->setCallCapabilities(IZ)V

    .line 633
    return-void
.end method

.method final setCallCapabilities(IZ)V
    .locals 4

    .prologue
    .line 636
    const-string v0, "setCallCapabilities: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/telecom/PhoneCapabilities;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/server/telecom/Call;->mCallCapabilities:I

    if-eq v0, p1, :cond_1

    .line 638
    :cond_0
    iput p1, p0, Lcom/android/server/telecom/Call;->mCallCapabilities:I

    .line 639
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 640
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onCallCapabilitiesChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 643
    :cond_1
    return-void
.end method

.method final setCallerDisplayName(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerDisplayName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/telecom/Call;->mCallerDisplayNamePresentation:I

    if-eq p2, v0, :cond_2

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 498
    :goto_0
    invoke-static {v0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getOperatorCallerDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    iput-object v0, p0, Lcom/android/server/telecom/Call;->mCallerDisplayName:Ljava/lang/String;

    .line 501
    iput p2, p0, Lcom/android/server/telecom/Call;->mCallerDisplayNamePresentation:I

    .line 502
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 503
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onCallerDisplayNameChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_1

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 506
    :cond_2
    return-void
.end method

.method final setCallerDualPhoneNumber(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCallerDualPhoneNumber:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mCallerDualPhoneNumber:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 516
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onCallerDualPhoneNumberChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 519
    :cond_0
    return-void
.end method

.method final setConferenceableCalls(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1067
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1069
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 1070
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onConferenceableCallsChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 1072
    :cond_0
    return-void
.end method

.method public final setConnectTimeMillis(J)V
    .locals 1

    .prologue
    .line 624
    iput-wide p1, p0, Lcom/android/server/telecom/Call;->mConnectTimeMillis:J

    .line 625
    return-void
.end method

.method final setConnectionManagerPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionManagerPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mConnectionManagerPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 577
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 582
    :cond_0
    return-void
.end method

.method final setConnectionService(Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 1

    .prologue
    .line 675
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->clearConnectionService()V

    .line 679
    invoke-virtual {p1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->incrementAssociatedCallCount()V

    .line 680
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    .line 681
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->addCall(Lcom/android/server/telecom/Call;)V

    .line 682
    return-void
.end method

.method final setDisconnectCause(Landroid/telecom/DisconnectCause;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 541
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 960
    return-void
.end method

.method final setGatewayInfo(Landroid/telecom/GatewayInfo;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 568
    return-void
.end method

.method final setHandle(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/Call;->setHandle(Landroid/net/Uri;I)V

    .line 471
    return-void
.end method

.method final setHandle(Landroid/net/Uri;I)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 474
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/telecom/Call;->mHandlePresentation:I

    if-eq p2, v0, :cond_4

    .line 475
    :cond_0
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    .line 476
    iput p2, p0, Lcom/android/server/telecom/Call;->mHandlePresentation:I

    .line 477
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsEmergencyCall:Z

    .line 479
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    if-nez v0, :cond_3

    move-object v0, v3

    :goto_1
    iget v4, p0, Lcom/android/server/telecom/Call;->mQueryToken:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/telecom/Call;->mQueryToken:I

    iput-object v3, p0, Lcom/android/server/telecom/Call;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-boolean v2, p0, Lcom/android/server/telecom/Call;->mDirectToVoicemailQueryCompleted:Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Looking up information for: %s."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p0, v3, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/server/telecom/Call;->mQueryToken:I

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/telecom/Call;->sCallerInfoQueryListener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v1, v2, v0, v3, p0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 481
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onHandleChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_2

    :cond_2
    move v0, v2

    .line 477
    goto :goto_0

    .line 479
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 484
    :cond_4
    return-void
.end method

.method public final setIsUnknown(Z)V
    .locals 1

    .prologue
    .line 1418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsUnknown:Z

    .line 1419
    return-void
.end method

.method public final setIsVoipAudioMode(Z)V
    .locals 2

    .prologue
    .line 1381
    iput-boolean p1, p0, Lcom/android/server/telecom/Call;->mIsVoipAudioMode:Z

    .line 1382
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 1383
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 1385
    :cond_0
    return-void
.end method

.method final setParentCall(Lcom/android/server/telecom/Call;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1041
    if-ne p1, p0, :cond_1

    .line 1042
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "setting the parent to self"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v0}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    :cond_0
    return-void

    .line 1045
    :cond_1
    iget-object v1, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    if-eq p1, v1, :cond_0

    .line 1049
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1051
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    .line 1052
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_4

    .line 1053
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/Call;->removeChildCall(Lcom/android/server/telecom/Call;)V

    .line 1055
    :cond_4
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    .line 1056
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_5

    .line 1057
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/Call;->addChildCall(Lcom/android/server/telecom/Call;)V

    .line 1060
    :cond_5
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 1061
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onParentChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method final setRingbackRequested(Z)V
    .locals 3

    .prologue
    .line 446
    iput-boolean p1, p0, Lcom/android/server/telecom/Call;->mRingbackRequested:Z

    .line 447
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 448
    iget-boolean v2, p0, Lcom/android/server/telecom/Call;->mRingbackRequested:Z

    invoke-virtual {v0, p0, v2}, Lcom/android/server/telecom/Call$Listener;->onRingbackRequested(Lcom/android/server/telecom/Call;Z)V

    goto :goto_0

    .line 450
    :cond_0
    return-void
.end method

.method public final setStartWithSpeakerphoneOn(Z)V
    .locals 0

    .prologue
    .line 1312
    iput-boolean p1, p0, Lcom/android/server/telecom/Call;->mSpeakerphoneOn:Z

    .line 1313
    return-void
.end method

.method public final setState(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 433
    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    if-eq v0, p1, :cond_0

    .line 434
    const-string v0, "setState %s -> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/telecom/Call;->mState:I

    invoke-static {v2}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    iput p1, p0, Lcom/android/server/telecom/Call;->mState:I

    .line 436
    invoke-direct {p0}, Lcom/android/server/telecom/Call;->maybeLoadCannedSmsResponses()V

    .line 438
    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 439
    iput-boolean v4, p0, Lcom/android/server/telecom/Call;->mIsLocallyDisconnecting:Z

    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setParentCall(Lcom/android/server/telecom/Call;)V

    .line 443
    :cond_0
    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 2

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mStatusHints:Landroid/telecom/StatusHints;

    .line 1393
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 1394
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onStatusHintsChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 1396
    :cond_0
    return-void
.end method

.method final setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTargetPhoneAccount() accountHandle = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mTargetPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mTargetPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 592
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 593
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onTargetPhoneAccountChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 596
    :cond_0
    return-void
.end method

.method public final setUserExplictSelectPhoneAccount(Z)V
    .locals 1

    .prologue
    .line 1444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/Call;->mIsUserExplictSelectPhoneAccount:Z

    .line 1445
    return-void
.end method

.method public final setVideoProvider(Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 2

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 1329
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 1330
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onVideoCallProviderChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 1332
    :cond_0
    return-void
.end method

.method public final setVideoState(I)V
    .locals 2

    .prologue
    .line 1368
    iget v0, p0, Lcom/android/server/telecom/Call;->mVideoStateHistory:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/telecom/Call;->mVideoStateHistory:I

    .line 1370
    iput p1, p0, Lcom/android/server/telecom/Call;->mVideoState:I

    .line 1371
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 1372
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onVideoStateChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 1374
    :cond_0
    return-void
.end method

.method final splitFromConference()V
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_0

    .line 1003
    const-string v0, "splitting from conference call without a connection service"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1007
    :goto_0
    return-void

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->splitFromConference(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method final startCreateConnection(Lcom/android/server/telecom/PhoneAccountRegistrar;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startCreateConnection() phoneAccountRegistrar = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    iget-object v1, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 738
    new-instance v0, Lcom/android/server/telecom/CreateConnectionProcessor;

    iget-object v2, p0, Lcom/android/server/telecom/Call;->mRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

    iget-object v5, p0, Lcom/android/server/telecom/Call;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/CreateConnectionProcessor;-><init>(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ServiceBinder$Listener;Lcom/android/server/telecom/CreateConnectionResponse;Lcom/android/server/telecom/PhoneAccountRegistrar;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    .line 740
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mCreateConnectionProcessor:Lcom/android/server/telecom/CreateConnectionProcessor;

    invoke-virtual {v0}, Lcom/android/server/telecom/CreateConnectionProcessor;->process()V

    .line 741
    return-void
.end method

.method final stopDtmfTone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 835
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_0

    .line 836
    const-string v0, "stopDtmfTone() request on a call without a connection service."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    :goto_0
    return-void

    .line 838
    :cond_0
    const-string v0, "Send stopDtmfTone to connection service for call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->stopDtmfTone(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public final swapConference()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1019
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-nez v0, :cond_1

    .line 1020
    const-string v0, "swapping conference calls without a connection service."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->swapConference(Lcom/android/server/telecom/Call;)V

    .line 1023
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceLevelActiveCall:Lcom/android/server/telecom/Call;

    goto :goto_0

    .line 1025
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    iput-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceLevelActiveCall:Lcom/android/server/telecom/Call;

    goto :goto_0

    .line 1029
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/Call;->mConferenceLevelActiveCall:Lcom/android/server/telecom/Call;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    :goto_1
    iput-object v0, p0, Lcom/android/server/telecom/Call;->mConferenceLevelActiveCall:Lcom/android/server/telecom/Call;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    goto :goto_1

    .line 1023
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 406
    const/4 v0, 0x0

    .line 407
    iget-object v3, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "[%s, %s, %s, %s, %d, childs(%d), has_parent(%b), [%s]"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v6, p0, Lcom/android/server/telecom/Call;->mState:I

    invoke-static {v6}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const/4 v0, 0x3

    iget-object v6, p0, Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;

    invoke-static {v6}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x4

    iget v6, p0, Lcom/android/server/telecom/Call;->mVideoState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x5

    iget-object v6, p0, Lcom/android/server/telecom/Call;->mChildCalls:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x6

    iget-object v0, p0, Lcom/android/server/telecom/Call;->mParentCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x7

    iget v1, p0, Lcom/android/server/telecom/Call;->mCallCapabilities:I

    invoke-static {v1}, Landroid/telecom/PhoneCapabilities;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method final unhold()V
    .locals 2

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    iget v0, p0, Lcom/android/server/telecom/Call;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 933
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mConnectionService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->unhold(Lcom/android/server/telecom/Call;)V

    .line 935
    :cond_0
    return-void
.end method

.method public final updateExtras(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 963
    iput-object p1, p0, Lcom/android/server/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 964
    iget-object v0, p0, Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    .line 965
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call$Listener;->onExtraChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    .line 967
    :cond_0
    return-void
.end method
