.class final Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;
.super Ljava/lang/Object;
.source "NewOutgoingCallIntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;
    }
.end annotation


# instance fields
.field private final mCall:Lcom/android/server/telecom/Call;

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private final mIsDefaultOrSystemPhoneApp:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/Call;Landroid/content/Intent;Z)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    .line 101
    iput-object p3, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    .line 102
    iput-object p4, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    .line 103
    iput-boolean p5, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIsDefaultOrSystemPhoneApp:Z

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Lcom/android/server/telecom/Call;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;)Lcom/android/server/telecom/CallsManager;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    return-object v0
.end method

.method public static getGateWayInfoFromIntent(Landroid/content/Intent;Landroid/net/Uri;)Landroid/telecom/GatewayInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 466
    if-nez p0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-object v1

    .line 471
    :cond_1
    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 472
    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 473
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 474
    new-instance v1, Landroid/telecom/GatewayInfo;

    invoke-direct {v1, v2, v0, p1}, Landroid/telecom/GatewayInfo;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0

    .line 472
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method final processIntent()I
    .locals 12

    .prologue
    .line 183
    const-string v0, "Processing call intent in OutgoingCallIntentBroadcaster."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v8, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    .line 186
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 189
    if-nez v2, :cond_0

    .line 190
    const-string v0, "Empty handle obtained from the call intent."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    const/4 v0, 0x7

    .line 376
    :goto_0
    return v0

    .line 194
    :cond_0
    const-string v1, "setFromEndButtonDriveLink"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    const-string v1, "setFromEndButtonDriveLink"

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->secondEndCall:Z

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isSecondEndCall : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/telecom/secutils/TelecomUtils;->secondEndCall:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :cond_1
    const-string v1, "setFromMWEndButtonDriveLink"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    const-string v1, "setFromMWEndButtonDriveLink"

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->secondMWEndCall:Z

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isSecondMWEndCall : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/telecom/secutils/TelecomUtils;->secondMWEndCall:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_2
    const-string v1, "voicemail"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 205
    if-eqz v1, :cond_4

    .line 206
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    const-string v0, "Placing call immediately instead of waiting for  OutgoingCallBroadcastReceiver: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    const-string v1, "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 213
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/telecom/CallsManager;->placeOutgoingCall(Lcom/android/server/telecom/Call;Landroid/net/Uri;Landroid/telecom/GatewayInfo;ZI)V

    .line 216
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 218
    :cond_3
    const-string v0, "Unhandled intent %s. Ignoring and not placing call."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    const/16 v0, 0x2c

    goto/16 :goto_0

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 224
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    const-string v0, "Empty number obtained from the call intent."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    const/16 v0, 0x26

    goto/16 :goto_0

    .line 229
    :cond_5
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    .line 230
    if-nez v5, :cond_6

    .line 231
    const-string v0, "IS_CONF_CALL"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 232
    invoke-static {v7}, Lcom/android/server/telecom/secutils/TelecomUtils;->formatNumberForVideoConference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 239
    :cond_6
    :goto_1
    const-string v0, "Checking restrictions for number : %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v7}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_9

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    move v1, v0

    .line 240
    :goto_2
    const-string v0, "isPotentialEmergencyNumber = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_a

    const-string v0, "ACTION_CALL_PRIVILEGED is used while the number is a potential emergency number. Using ACTION_CALL_EMERGENCY as an action instead."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "android.intent.action.CALL_EMERGENCY"

    :goto_3
    const-string v3, " - updating action from CALL_PRIVILEGED to %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    :cond_7
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 246
    const/4 v3, 0x0

    .line 249
    const/4 v4, 0x0

    .line 250
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string v9, "enterprise_policy"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 255
    if-eqz v0, :cond_21

    .line 256
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    .line 258
    :goto_4
    if-eqz v0, :cond_b

    if-nez v1, :cond_b

    .line 259
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v0

    .line 261
    if-eqz v0, :cond_b

    .line 262
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400b7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 263
    const/16 v0, 0x2c

    goto/16 :goto_0

    .line 234
    :cond_8
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 239
    :cond_9
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    .line 242
    :cond_a
    const-string v0, "android.intent.action.CALL"

    goto :goto_3

    .line 268
    :cond_b
    const-string v0, "voip_interworking"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 269
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoIPRingOrOffhook()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->canUseHoldInVoIP()Z

    move-result v0

    if-nez v0, :cond_c

    .line 270
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08007e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 272
    const/16 v0, 0x2c

    goto/16 :goto_0

    .line 276
    :cond_c
    const-string v0, "android.intent.action.CALL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 277
    if-eqz v1, :cond_20

    .line 278
    iget-boolean v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIsDefaultOrSystemPhoneApp:Z

    if-nez v0, :cond_d

    .line 279
    const-string v0, "Cannot call potential emergency number %s with CALL Intent %s unless caller is system or default dialer."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080005

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "calling startActivity for default dialer: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 282
    const/16 v0, 0x2c

    goto/16 :goto_0

    .line 284
    :cond_d
    const/4 v0, 0x1

    move v6, v0

    .line 299
    :goto_5
    invoke-static {v8}, Lcom/android/server/telecom/operator/OperatorUtils;->doWakeUpScreen(Landroid/content/Intent;)V

    .line 301
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_13

    if-nez v6, :cond_13

    .line 304
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCdmaCallOutgoingBarringOn(Lcom/android/server/telecom/Call;)Z

    move-result v4

    .line 305
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 306
    iget-object v3, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    const-string v9, "outbarringpwright"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 307
    const/4 v3, 0x0

    .line 308
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Cdma call barring nOutgoing = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Cdma call barring nPasswordRight = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    if-eqz v0, :cond_1f

    .line 312
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    if-nez v0, :cond_1f

    .line 313
    const/4 v0, 0x1

    .line 316
    :goto_6
    const-string v3, "emergency_contact_item"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 317
    const-string v3, "emergency_contact_item"

    const/4 v10, 0x0

    invoke-virtual {v8, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 318
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "emergencyContactItem : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p0, v3, v10}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "serviceInState : "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p0, v3, v10}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    if-eqz v4, :cond_13

    if-nez v9, :cond_13

    if-eqz v0, :cond_13

    .line 324
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 325
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    .line 326
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v1, "outbarring"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 331
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_f

    .line 333
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setDisconnectForCallBarring(Z)V

    .line 335
    :cond_f
    const/16 v0, 0x2c

    goto/16 :goto_0

    .line 287
    :cond_10
    const-string v0, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 288
    if-nez v1, :cond_11

    .line 289
    const-string v0, "Cannot call non-potential-emergency number %s with EMERGENCY_CALL Intent %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    const/16 v0, 0x2c

    goto/16 :goto_0

    .line 293
    :cond_11
    const/4 v0, 0x1

    move v6, v0

    goto/16 :goto_5

    .line 295
    :cond_12
    const-string v0, "Unhandled Intent %s. Ignoring and not placing call."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 339
    :cond_13
    if-eqz v1, :cond_14

    .line 340
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setIMSPreRegState(Z)V

    .line 343
    :cond_14
    if-eqz v6, :cond_17

    .line 344
    const-string v0, "Placing call immediately instead of waiting for  OutgoingCallBroadcastReceiver: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    if-eqz v5, :cond_1a

    const-string v0, "sip"

    move-object v3, v0

    .line 347
    :goto_7
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    const-string v1, "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 349
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mIntent:Landroid/content/Intent;

    const-string v1, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 354
    const/4 v0, 0x0

    .line 355
    const-string v1, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 356
    const-string v0, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 358
    :cond_15
    if-nez v0, :cond_16

    .line 359
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    :cond_16
    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v8, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->makeOutgoingSecCallExtra(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    .line 366
    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v1, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mCall:Lcom/android/server/telecom/Call;

    const/4 v2, 0x0

    invoke-static {v3, v7, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/telecom/CallsManager;->placeOutgoingCall(Lcom/android/server/telecom/Call;Landroid/net/Uri;Landroid/telecom/GatewayInfo;ZI)V

    .line 375
    :cond_17
    if-nez v6, :cond_1b

    const/4 v0, 0x1

    move v4, v0

    :goto_8
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_18

    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_18
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "Broadcasting intent: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v8, :cond_19

    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_1d

    const-string v0, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    const-string v2, "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.phone.extra.GATEWAY_URI"

    const-string v2, "com.android.phone.extra.GATEWAY_URI"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Found and copied gateway provider extras to broadcast intent."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_19
    :goto_a
    invoke-static {v8, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkAndCopyExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "android.permission.PROCESS_OUTGOING_CALLS"

    if-eqz v4, :cond_1e

    new-instance v4, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster$NewOutgoingCallBroadcastIntentReceiver;-><init>(Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;B)V

    :goto_b
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 376
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 346
    :cond_1a
    const-string v0, "tel"

    move-object v3, v0

    goto/16 :goto_7

    .line 375
    :cond_1b
    const/4 v0, 0x0

    move v4, v0

    goto :goto_8

    :cond_1c
    const/4 v0, 0x0

    goto :goto_9

    :cond_1d
    const-string v0, "No provider extras found in call intent."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_1e
    const/4 v4, 0x0

    goto :goto_b

    :cond_1f
    move v0, v3

    goto/16 :goto_6

    :cond_20
    move v6, v3

    goto/16 :goto_5

    :cond_21
    move-object v0, v4

    goto/16 :goto_4
.end method
