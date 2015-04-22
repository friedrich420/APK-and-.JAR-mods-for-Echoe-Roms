.class Lcom/sec/android/sviewcover/SViewCoverView$5;
.super Landroid/database/ContentObserver;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 697
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 699
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3600(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "set_shortcuts_mode"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 703
    .local v0, "cameraShortcut":Z
    :goto_0
    const-string v3, "SViewCoverView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraShortcutObserver onChange() cameraShortcut = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    if-ne v0, v1, :cond_3

    .line 706
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3700(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3700(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3700(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverPager;->getChildCount()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/sviewcover/SViewCoverPager;->addView(Landroid/view/View;I)V

    .line 716
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 717
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    move-result-object v1

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setCameraContainerVisibility(I)V

    .line 720
    :cond_1
    return-void

    .end local v0    # "cameraShortcut":Z
    :cond_2
    move v0, v2

    .line 699
    goto :goto_0

    .line 711
    .restart local v0    # "cameraShortcut":Z
    :cond_3
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3700(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView$5;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mCameraPage:Landroid/view/View;
    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3700(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/sviewcover/SViewCoverPager;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 717
    :cond_4
    const/16 v2, 0x8

    goto :goto_2
.end method
