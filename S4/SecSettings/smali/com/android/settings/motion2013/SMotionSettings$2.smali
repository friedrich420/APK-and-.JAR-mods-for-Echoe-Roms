.class Lcom/android/settings/motion2013/SMotionSettings$2;
.super Landroid/database/ContentObserver;
.source "SMotionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2013/SMotionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionSettings$2;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$2;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    # getter for: Lcom/android/settings/motion2013/SMotionSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionSettings;->access$000(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionSettings$2;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    # invokes: Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/motion2013/SMotionSettings;->access$400(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_engine"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 102
    return-void
.end method
