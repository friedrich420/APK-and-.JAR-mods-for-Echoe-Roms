.class Lcom/android/settings/DataUsageSummary$14;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;

.field final synthetic val$mRestrictBackground:Z


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0

    .prologue
    .line 1849
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$14;->this$0:Lcom/android/settings/DataUsageSummary;

    iput-boolean p2, p0, Lcom/android/settings/DataUsageSummary$14;->val$mRestrictBackground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1851
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$14;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$1400(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/DataUsageSummary$14;->val$mRestrictBackground:Z

    invoke-virtual {v1, v2}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1852
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$14;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->handler_loading:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$1500(Lcom/android/settings/DataUsageSummary;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1854
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1855
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1856
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$14;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$1600(Lcom/android/settings/DataUsageSummary;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1857
    return-void
.end method
