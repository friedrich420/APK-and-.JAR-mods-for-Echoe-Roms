.class Lcom/android/server/am/PreferredPackageManager$1;
.super Landroid/content/BroadcastReceiver;
.source "PreferredPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PreferredPackageManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PreferredPackageManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/PreferredPackageManager;)V
    .registers 2

    .prologue
    .line 519
    iput-object p1, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 522
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "pkg":Ljava/lang/String;
    const-string v3, "PreferredPackage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " removed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 526
    iget-object v3, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    iget-object v3, v3, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .line 527
    .local v2, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-eqz v2, :cond_46

    .line 528
    iget-object v3, p0, this$0:Lcom/android/server/am/PreferredPackageManager;

    iget-object v3, v3, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .end local v2    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :cond_46
    return-void
.end method
