.class Lcom/android/settings/motion2013/SMotionGuideHub$5;
.super Landroid/database/ContentObserver;
.source "SMotionGuideHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2013/SMotionGuideHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionGuideHub;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionGuideHub;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$5;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 241
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$5;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$400(Lcom/android/settings/motion2013/SMotionGuideHub;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_engine"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 242
    .local v0, "AirMotionState":Z
    :cond_0
    const-string v1, "quick_glance"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$5;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pan_to_browse_image"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$5;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "air_call_accept"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$5;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "air_scroll"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$5;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "air_move"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$5;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "air_turn"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub$5;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$5;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    # getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$500(Lcom/android/settings/motion2013/SMotionGuideHub;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 244
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$5;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    iget-object v1, v1, Lcom/android/settings/motion2013/SMotionGuideHub;->tryBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    :cond_2
    return-void
.end method
