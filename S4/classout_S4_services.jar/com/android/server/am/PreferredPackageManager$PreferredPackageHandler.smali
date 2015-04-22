.class final Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;
.super Landroid/os/Handler;
.source "PreferredPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PreferredPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreferredPackageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PreferredPackageManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/PreferredPackageManager;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 236
    iput-object p1, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    .line 237
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 238
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 242
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_88

    .line 266
    :pswitch_5
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string v2, "PreferredPackage"

    const-string/jumbo v3, "receiving unknown message !!"

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_11
    :goto_11
    return-void

    .line 244
    :pswitch_12
    iget-object v2, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "reason"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/am/PreferredPackageManager;->handleActivityResumeFinished(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/am/PreferredPackageManager;->access$100(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 248
    :pswitch_2d
    iget-object v2, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "lastPauseTime"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    # invokes: Lcom/android/server/am/PreferredPackageManager;->handleActivityPaused(Ljava/lang/String;J)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/am/PreferredPackageManager;->access$200(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;J)V

    goto :goto_11

    .line 252
    :pswitch_47
    iget-object v2, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/am/PreferredPackageManager;->handleStartTopPreferredPackages(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/am/PreferredPackageManager;->access$300(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;)V

    goto :goto_11

    .line 255
    :pswitch_57
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 256
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    const-string v3, "name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "pid"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    # invokes: Lcom/android/server/am/PreferredPackageManager;->handleUpdatePreferredPackage(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/android/server/am/PreferredPackageManager;->access$400(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;I)V

    goto :goto_11

    .line 260
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_6e
    iget-object v2, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    invoke-virtual {v2}, Lcom/android/server/am/PreferredPackageManager;->writePackagesInfoToGoogleXml()V

    .line 261
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 262
    .local v1, "pmsg":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 263
    iget-object v2, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    # getter for: Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;
    invoke-static {v2}, Lcom/android/server/am/PreferredPackageManager;->access$500(Lcom/android/server/am/PreferredPackageManager;)Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    move-result-object v2

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v2, v1, v4, v5}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_11

    .line 242
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_47
        :pswitch_57
        :pswitch_5
        :pswitch_12
        :pswitch_2d
        :pswitch_6e
    .end packed-switch
.end method
