.class public final Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "SecRespondViaSmsManager.java"


# static fields
.field private static final sInstance:Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    invoke-direct {v0}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;-><init>()V

    sput-object v0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->sInstance:Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    .line 61
    new-instance v0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$1;-><init>(Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->mHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 52
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static composeNewMessage(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 241
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    .line 243
    const-string v1, "smsto"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 244
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 245
    const/high16 v1, 0x18000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    const-string v1, "exit_on_sent"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    const-string v1, "force_new_composer"

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 249
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/TelecomApp;->startActivity(Landroid/content/Intent;)V

    .line 251
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->sInstance:Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    return-object v0
.end method


# virtual methods
.method public final isRespondViaSmsCapable(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 268
    :goto_0
    return v0

    .line 257
    :cond_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    :cond_1
    move v0, v1

    .line 260
    goto :goto_0

    .line 262
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/TelecomApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 263
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 264
    const-string v0, "Security policy restricts SMS "

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 265
    goto :goto_0

    .line 268
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final loadCannedTextMessages$499a44e3(Landroid/telecom/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Response",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$2;-><init>(Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;Landroid/telecom/Response;)V

    invoke-virtual {v0}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$2;->start()V

    .line 153
    return-void
.end method

.method public final onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 157
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getNameOrNumberFromCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    .line 158
    if-eqz p2, :cond_0

    .line 159
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "smsto"

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "rejectCallWithMessage slot id : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "simSlot"

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/TelecomApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-static {v0}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->composeNewMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string v2, "roaming_auto_dial"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    invoke-static {v0}, Lcom/android/server/telecom/operator/OperatorUtils;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_3
    if-eqz p3, :cond_4

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "smsto"

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/TelecomApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->composeNewMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
