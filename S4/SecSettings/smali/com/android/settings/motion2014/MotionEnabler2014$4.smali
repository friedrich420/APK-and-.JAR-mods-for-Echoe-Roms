.class Lcom/android/settings/motion2014/MotionEnabler2014$4;
.super Ljava/lang/Object;
.source "MotionEnabler2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/MotionEnabler2014;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/MotionEnabler2014;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/MotionEnabler2014;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/motion2014/MotionEnabler2014$4;->this$0:Lcom/android/settings/motion2014/MotionEnabler2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/android/settings/motion2014/MotionEnabler2014$4;->this$0:Lcom/android/settings/motion2014/MotionEnabler2014;

    # getter for: Lcom/android/settings/motion2014/MotionEnabler2014;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/motion2014/MotionEnabler2014;->access$100(Lcom/android/settings/motion2014/MotionEnabler2014;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2014/MotionEnabler2014$4;->this$0:Lcom/android/settings/motion2014/MotionEnabler2014;

    # getter for: Lcom/android/settings/motion2014/MotionEnabler2014;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/motion2014/MotionEnabler2014;->access$000(Lcom/android/settings/motion2014/MotionEnabler2014;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "master_motion"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 164
    return-void
.end method
