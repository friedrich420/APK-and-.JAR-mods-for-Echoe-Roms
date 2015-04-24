.class final Lcom/android/server/telecom/CreateConnectionProcessor;
.super Ljava/lang/Object;
.source "CreateConnectionProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/CreateConnectionProcessor$Response;,
        Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;
    }
.end annotation


# instance fields
.field private mAttemptRecordIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mAttemptRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mCall:Lcom/android/server/telecom/Call;

.field private final mContext:Landroid/content/Context;

.field private mLastErrorDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

.field private final mRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

.field private mResponse:Lcom/android/server/telecom/CreateConnectionResponse;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ServiceBinder$Listener;Lcom/android/server/telecom/CreateConnectionResponse;Lcom/android/server/telecom/PhoneAccountRegistrar;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    .line 105
    iput-object p2, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

    .line 106
    iput-object p3, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mResponse:Lcom/android/server/telecom/CreateConnectionResponse;

    .line 107
    iput-object p4, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    .line 108
    iput-object p5, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/CreateConnectionProcessor;)Lcom/android/server/telecom/CreateConnectionResponse;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mResponse:Lcom/android/server/telecom/CreateConnectionResponse;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/telecom/CreateConnectionProcessor;Lcom/android/server/telecom/CreateConnectionResponse;)Lcom/android/server/telecom/CreateConnectionResponse;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mResponse:Lcom/android/server/telecom/CreateConnectionResponse;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/CreateConnectionProcessor;)Lcom/android/server/telecom/Call;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/telecom/CreateConnectionProcessor;Landroid/telecom/DisconnectCause;)Landroid/telecom/DisconnectCause;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mLastErrorDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/telecom/CreateConnectionProcessor;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/server/telecom/CreateConnectionProcessor;->attemptNextPhoneAccount()V

    return-void
.end method

.method private adjustAttemptsForEmergency()V
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 247
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustAttemptsForEmergency() - mCall.isUserExplictSelectPhoneAccount():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->isUserExplictSelectPhoneAccount()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v1

    .line 251
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isUserExplictSelectPhoneAccount()Z

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->selectSimForEmergency$2563259(I)I

    move-result v2

    .line 252
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4, v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v0

    move v4, v2

    move v2, v1

    .line 257
    :goto_0
    if-eqz v0, :cond_4

    .line 258
    const-string v0, "Emergency number detected"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getAllPhoneAccounts()Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    invoke-static {}, Lcom/android/server/telecom/TelephonyUtil;->getDefaultEmergencyPhoneAccount()Landroid/telecom/PhoneAccount;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 273
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    .line 274
    invoke-virtual {v0, v10}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 276
    const-string v6, "Will try PSTN account %s for emergency"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {p0, v6, v7}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v6, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    new-instance v7, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    move v2, v3

    move v4, v3

    goto :goto_0

    .line 285
    :cond_2
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 287
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    .line 288
    if-nez v4, :cond_5

    .line 289
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    .line 295
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "currentSimId :"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", simIdForEmergency:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    new-instance v5, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    if-eq v2, v4, :cond_3

    .line 302
    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 303
    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    .line 304
    iget-object v4, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 305
    if-eqz v2, :cond_3

    .line 306
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAccoutSubId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/services/telephony/common/SecCallExtra;->setSubId(J)V

    .line 307
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-static {v1, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_4

    .line 316
    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v1

    .line 318
    invoke-virtual {v1, v10}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 319
    new-instance v2, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;

    iget-object v4, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    iget-object v5, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;)V

    .line 324
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 325
    const-string v0, "Will try Connection Manager account %s for emergency"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_4
    return-void

    .line 290
    :cond_5
    if-ne v4, v9, :cond_6

    .line 291
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    goto/16 :goto_3

    .line 293
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "simIdForEmergency is not valid - simIdForEmergency :"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private attemptNextPhoneAccount()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 143
    :goto_0
    const-string v0, "attemptNextPhoneAccount"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecordIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecordIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;

    .line 148
    iget-object v2, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    iget-object v3, v0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/PhoneAccountRegistrar;->phoneAccountHasPermission(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    const-string v2, "Connection mgr does not have BIND_CONNECTION_SERVICE for attempt: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v2, v0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iget-object v3, v0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->targetPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2, v3}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    iget-object v3, v0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->targetPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/PhoneAccountRegistrar;->phoneAccountHasPermission(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 161
    const-string v2, "Target PhoneAccount does not have BIND_CONNECTION_SERVICE for attempt: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 165
    :cond_2
    iget-object v2, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mResponse:Lcom/android/server/telecom/CreateConnectionResponse;

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 170
    const-string v1, "Trying attempt %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

    iget-object v2, v0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/ServiceBinder$Listener;->getService(Landroid/content/ComponentName;)Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v1

    .line 174
    if-nez v1, :cond_4

    .line 175
    const-string v1, "Found no connection service for attempt %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-direct {p0}, Lcom/android/server/telecom/CreateConnectionProcessor;->attemptNextPhoneAccount()V

    .line 193
    :cond_3
    :goto_1
    return-void

    .line 178
    :cond_4
    iget-object v2, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    iget-object v3, v0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->connectionManagerPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/Call;->setConnectionManagerPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 179
    iget-object v2, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    iget-object v0, v0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->targetPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2, v0}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 180
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->setConnectionService(Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    .line 181
    const-string v0, "Attempting to call from %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    new-instance v2, Lcom/android/server/telecom/CreateConnectionProcessor$Response;

    invoke-direct {v2, p0, v1}, Lcom/android/server/telecom/CreateConnectionProcessor$Response;-><init>(Lcom/android/server/telecom/CreateConnectionProcessor;Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->createConnection(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/CreateConnectionResponse;)V

    goto :goto_1

    .line 185
    :cond_5
    const-string v0, "attemptNextPhoneAccount, no more accounts, failing"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mResponse:Lcom/android/server/telecom/CreateConnectionResponse;

    if-eqz v0, :cond_3

    .line 187
    iget-object v2, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mResponse:Lcom/android/server/telecom/CreateConnectionResponse;

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mLastErrorDisconnectCause:Landroid/telecom/DisconnectCause;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mLastErrorDisconnectCause:Landroid/telecom/DisconnectCause;

    :goto_2
    invoke-interface {v2, v0}, Lcom/android/server/telecom/CreateConnectionResponse;->handleCreateConnectionFailure(Landroid/telecom/DisconnectCause;)V

    .line 189
    iput-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mResponse:Lcom/android/server/telecom/CreateConnectionResponse;

    .line 190
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->clearConnectionService()V

    goto :goto_1

    .line 187
    :cond_6
    new-instance v0, Landroid/telecom/DisconnectCause;

    invoke-direct {v0, v5}, Landroid/telecom/DisconnectCause;-><init>(I)V

    goto :goto_2
.end method


# virtual methods
.method final abort()V
    .locals 3

    .prologue
    .line 125
    const-string v0, "abort"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mResponse:Lcom/android/server/telecom/CreateConnectionResponse;

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mResponse:Lcom/android/server/telecom/CreateConnectionResponse;

    .line 132
    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->abort(Lcom/android/server/telecom/Call;)V

    .line 135
    iget-object v1, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->clearConnectionService()V

    .line 137
    :cond_0
    if-eqz v0, :cond_1

    .line 138
    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/android/server/telecom/CreateConnectionResponse;->handleCreateConnectionFailure(Landroid/telecom/DisconnectCause;)V

    .line 140
    :cond_1
    return-void
.end method

.method final process()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    const-string v0, "process"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    .line 114
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    new-instance v3, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;

    iget-object v4, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_7

    new-instance v3, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;

    iget-object v0, v0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->targetPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v3, v4, v0}, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;)V

    const-string v4, "setConnectionManager, changing %s -> %s"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;

    iget-object v0, v0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->targetPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    aput-object v0, v5, v1

    aput-object v3, v5, v2

    invoke-static {p0, v4, v5}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 119
    :goto_1
    invoke-direct {p0}, Lcom/android/server/telecom/CreateConnectionProcessor;->adjustAttemptsForEmergency()V

    .line 120
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecordIterator:Ljava/util/Iterator;

    .line 121
    invoke-direct {p0}, Lcom/android/server/telecom/CreateConnectionProcessor;->attemptNextPhoneAccount()V

    .line 122
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    const-string v0, "shouldSetConnectionManager, error, mAttemptRecords should not have more than 1 record"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    if-nez v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mAttemptRecords:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;

    iget-object v0, v0, Lcom/android/server/telecom/CreateConnectionProcessor$CallAttemptRecord;->targetPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/telecom/CreateConnectionProcessor;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    const-string v0, "setConnectionManager, not changing"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
