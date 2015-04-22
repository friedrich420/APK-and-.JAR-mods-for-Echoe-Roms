.class public Lcom/android/server/am/LockTaskNotify;
.super Ljava/lang/Object;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LockTaskNotify$1;,
        Lcom/android/server/am/LockTaskNotify$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockTaskNotify"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/LockTaskNotify$H;

.field private mLastToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 48
    new-instance v0, Lcom/android/server/am/LockTaskNotify$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/LockTaskNotify$H;-><init>(Lcom/android/server/am/LockTaskNotify;Lcom/android/server/am/LockTaskNotify$1;)V

    iput-object v0, p0, mHandler:Lcom/android/server/am/LockTaskNotify$H;

    .line 49
    return-void
.end method


# virtual methods
.method public handleShowToast(Z)V
    .registers 7
    .param p1, "isLocked"    # Z

    .prologue
    const v3, 0x1040689

    .line 65
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    .line 66
    .local v0, "hasPermanentMenuKey":Z
    if-eqz v0, :cond_55

    .line 67
    iget-object v4, p0, mContext:Landroid/content/Context;

    if-eqz p1, :cond_51

    :goto_13
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "text":Ljava/lang/String;
    if-nez p1, :cond_2a

    iget-object v3, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 70
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040919

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    :cond_2a
    :goto_2a
    iget-object v3, p0, mLastToast:Landroid/widget/Toast;

    if-eqz v3, :cond_33

    .line 81
    iget-object v3, p0, mLastToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 85
    :cond_33
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 86
    .local v1, "isSupportManualScreenPinning":Z
    if-eqz v1, :cond_50

    .line 88
    iget-object v3, p0, mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, mLastToast:Landroid/widget/Toast;

    .line 89
    iget-object v3, p0, mLastToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 91
    :cond_50
    return-void

    .line 67
    .end local v1    # "isSupportManualScreenPinning":Z
    .end local v2    # "text":Ljava/lang/String;
    :cond_51
    const v3, 0x1040918

    goto :goto_13

    .line 73
    :cond_55
    iget-object v4, p0, mContext:Landroid/content/Context;

    if-eqz p1, :cond_71

    :goto_59
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    .restart local v2    # "text":Ljava/lang/String;
    if-nez p1, :cond_2a

    iget-object v3, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 76
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040688

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 73
    .end local v2    # "text":Ljava/lang/String;
    :cond_71
    const v3, 0x1040687

    goto :goto_59
.end method

.method public show(Z)V
    .registers 7
    .param p1, "starting"    # Z

    .prologue
    .line 94
    const v1, 0x1040690

    .line 95
    .local v1, "showString":I
    if-eqz p1, :cond_8

    .line 96
    const v1, 0x104068f

    .line 100
    :cond_8
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 101
    .local v0, "isSupportManualScreenPinning":Z
    if-eqz v0, :cond_27

    .line 103
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 105
    :cond_27
    return-void
.end method

.method public showToast(Z)V
    .registers 6
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, mHandler:Lcom/android/server/am/LockTaskNotify$H;

    const/4 v3, 0x3

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/am/LockTaskNotify$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 53
    return-void

    :cond_f
    move v0, v1

    .line 52
    goto :goto_7
.end method
