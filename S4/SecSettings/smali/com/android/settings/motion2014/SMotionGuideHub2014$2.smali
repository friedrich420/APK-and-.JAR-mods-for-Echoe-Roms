.class Lcom/android/settings/motion2014/SMotionGuideHub2014$2;
.super Landroid/database/ContentObserver;
.source "SMotionGuideHub2014.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2014/SMotionGuideHub2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 195
    const-string v1, "air_turn_and_scroll"

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mMotionType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # getter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$200(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$2;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # invokes: Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$300(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_turn"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 199
    :cond_1
    return-void
.end method
