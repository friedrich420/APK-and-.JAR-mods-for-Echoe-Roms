.class final Lcom/android/server/telecom/secutils/TelecomUtils$2;
.super Ljava/lang/Object;
.source "TelecomUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/TelecomUtils;->sendSMSAsBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic val$context:Landroid/content/Context;

.field private synthetic val$msg:Ljava/lang/String;

.field private synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/android/server/telecom/secutils/TelecomUtils$2;->val$msg:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/telecom/secutils/TelecomUtils$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/telecom/secutils/TelecomUtils$2;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TelecomUtils$2;->val$msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TelecomUtils$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 1710
    if-eqz v0, :cond_0

    .line 1711
    const-string v1, "smsto"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/TelecomUtils$2;->val$number:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1712
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1713
    const-string v1, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/android/server/telecom/secutils/TelecomUtils$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1714
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1715
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TelecomUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1718
    :cond_0
    return-void
.end method
