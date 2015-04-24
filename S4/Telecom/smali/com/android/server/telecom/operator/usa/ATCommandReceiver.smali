.class public Lcom/android/server/telecom/operator/usa/ATCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ATCommandReceiver.java"


# static fields
.field private static sIsATCommandExecuting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sIsATCommandExecuting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static commandExecute(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x10000000

    const/4 v3, 0x1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "commandExecute() request = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATCommandReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    packed-switch p0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const-string v0, "REQUEST_MAKE_A_CALL"

    const-string v1, "ATCommandReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    invoke-static {v2, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 88
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/TelecomApp;->startActivity(Landroid/content/Intent;)V

    .line 90
    invoke-static {v3}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->setATcommandExecuting(Z)V

    goto :goto_0

    .line 93
    :pswitch_1
    const-string v0, "REQUEST_MAKE_A_VIDEO_CALL"

    const-string v1, "ATCommandReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    invoke-static {v2, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    const-string v1, "videocall"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/TelecomApp;->startActivity(Landroid/content/Intent;)V

    .line 98
    invoke-static {v3}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->setATcommandExecuting(Z)V

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v0, "REQUEST_HANG_UP_A_CALL"

    const-string v1, "ATCommandReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v3}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->setATcommandExecuting(Z)V

    .line 104
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 106
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 109
    const-string v0, "ath"

    const-string v1, "OK"

    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_0
    const-string v0, "ath"

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 106
    :array_0
    .array-data 4
        0x4
        0x3
        0x5
        0x6
    .end array-data
.end method

.method private static isATcommandExecuting()Z
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isATcommandExecuting() sIsATCommandExecuting = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sIsATCommandExecuting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATCommandReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-boolean v0, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sIsATCommandExecuting:Z

    return v0
.end method

.method public static sendFailureResponse(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 124
    const-string v0, "NO CARRIER"

    invoke-static {p0, v0}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sendResponse(Landroid/content/Intent;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private static sendResponse(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->isATcommandExecuting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const-string v1, "videocall"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 130
    const-string v2, "ATCommandReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / isATcommandExecuting() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->isATcommandExecuting()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / !isVideoCallType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-nez v1, :cond_2

    const-string v0, "atd"

    :goto_0
    invoke-static {v0, p1}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_1
    return-void

    .line 131
    :cond_2
    const-string v0, "atdvideo"

    goto :goto_0
.end method

.method private static sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendResponse() command = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATCommandReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CUSTOMER_TEST_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    const-string v1, "command"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-static {}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->isATcommandExecuting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->setATcommandExecuting(Z)V

    .line 144
    return-void
.end method

.method public static sendSuccessResponse(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 120
    const-string v0, "OK"

    invoke-static {p0, v0}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sendResponse(Landroid/content/Intent;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private static setATcommandExecuting(Z)V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setATcommandExecuting() isExecuting = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATCommandReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sput-boolean p0, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sIsATCommandExecuting:Z

    .line 149
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 57
    const-string v0, "Received CUSTOMER_TEST_REQUSET"

    const-string v1, "ATCommandReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    .line 62
    const-string v0, "There is no extras"

    const-string v1, "ATCommandReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v1, "command"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v2, "parameter"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "command :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", parameter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ATCommandReceiver"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-eqz v1, :cond_0

    .line 71
    const-string v2, "atd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 72
    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->commandExecute(ILjava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    const-string v2, "atdvideo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 74
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->commandExecute(ILjava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_3
    const-string v2, "ath"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->commandExecute(ILjava/lang/String;)V

    goto :goto_0
.end method
