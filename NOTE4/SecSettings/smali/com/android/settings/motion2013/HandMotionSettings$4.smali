.class Lcom/android/settings/motion2013/HandMotionSettings$4;
.super Landroid/database/ContentObserver;
.source "HandMotionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2013/HandMotionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/HandMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/HandMotionSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/motion2013/HandMotionSettings$4;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$4;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    # invokes: Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$400(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$4;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    # getter for: Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$100(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$4;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    # getter for: Lcom/android/settings/motion2013/HandMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$100(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
