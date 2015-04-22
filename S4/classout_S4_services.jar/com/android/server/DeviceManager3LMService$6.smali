.class Lcom/android/server/DeviceManager3LMService$6;
.super Landroid/content/BroadcastReceiver;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .registers 2

    .prologue
    .line 4282
    iput-object p1, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4285
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4286
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 4287
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 4288
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 4289
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_17

    .line 4295
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_16
    :goto_16
    return-void

    .line 4291
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_17
    const-wide/16 v4, 0x3e8

    :try_start_19
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_16

    .line 4292
    :catch_1d
    move-exception v3

    goto :goto_16
.end method
