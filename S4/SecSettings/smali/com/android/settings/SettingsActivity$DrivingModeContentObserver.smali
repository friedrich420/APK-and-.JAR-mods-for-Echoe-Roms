.class Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;
.super Landroid/database/ContentObserver;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrivingModeContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 6885
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;->this$0:Lcom/android/settings/SettingsActivity;

    .line 6886
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6887
    # getter for: Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$1800()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p1, Lcom/android/settings/SettingsActivity;->am:Landroid/media/AudioManager;

    .line 6888
    return-void
.end method

.method private isSystemDrivingModeEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 6919
    :try_start_0
    # getter for: Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$1800()Landroid/content/Context;

    move-result-object v0

    .line 6920
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 6921
    .local v2, "v":I
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 6924
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "v":I
    :cond_0
    :goto_0
    return v3

    .line 6922
    :catch_0
    move-exception v1

    .line 6923
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/settings/SettingsActivity;->DBG:Z
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$2000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Settings"

    const-string v5, "Driving mode settings not found."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 6892
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6893
    :cond_0
    const-string v1, "Settings"

    const-string v2, "Do not use driving mode "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6914
    :cond_1
    :goto_0
    return-void

    .line 6897
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;->isSystemDrivingModeEnabled()Z

    move-result v0

    .line 6899
    .local v0, "systemDrivingModeOn":Z
    if-nez v0, :cond_3

    .line 6900
    const-string v1, "Settings"

    const-string v2, "isSystemDrivingModeEnabled is : false "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6901
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->prevSoundProfile:I
    invoke-static {v1}, Lcom/android/settings/SettingsActivity;->access$3200(Lcom/android/settings/SettingsActivity;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 6902
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;->this$0:Lcom/android/settings/SettingsActivity;

    iget-object v1, v1, Lcom/android/settings/SettingsActivity;->am:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->prevSoundProfile:I
    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->access$3200(Lcom/android/settings/SettingsActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 6903
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;->this$0:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->prevSoundProfile:I
    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->access$3200(Lcom/android/settings/SettingsActivity;)I

    move-result v2

    # setter for: Lcom/android/settings/SettingsActivity;->currentSoundProfile:I
    invoke-static {v1, v2}, Lcom/android/settings/SettingsActivity;->access$3102(Lcom/android/settings/SettingsActivity;I)I

    .line 6904
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;->this$0:Lcom/android/settings/SettingsActivity;

    const/4 v2, -0x1

    # setter for: Lcom/android/settings/SettingsActivity;->prevSoundProfile:I
    invoke-static {v1, v2}, Lcom/android/settings/SettingsActivity;->access$3202(Lcom/android/settings/SettingsActivity;I)I

    goto :goto_0

    .line 6907
    :cond_3
    const-string v1, "Settings"

    const-string v2, "isSystemDrivingModeEnabled is : true "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6908
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->prevSoundProfile:I
    invoke-static {v1}, Lcom/android/settings/SettingsActivity;->access$3200(Lcom/android/settings/SettingsActivity;)I

    move-result v1

    if-gez v1, :cond_4

    .line 6909
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;->this$0:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->currentSoundProfile:I
    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->access$3100(Lcom/android/settings/SettingsActivity;)I

    move-result v2

    # setter for: Lcom/android/settings/SettingsActivity;->prevSoundProfile:I
    invoke-static {v1, v2}, Lcom/android/settings/SettingsActivity;->access$3202(Lcom/android/settings/SettingsActivity;I)I

    .line 6910
    :cond_4
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;->this$0:Lcom/android/settings/SettingsActivity;

    const/4 v2, 0x2

    # setter for: Lcom/android/settings/SettingsActivity;->currentSoundProfile:I
    invoke-static {v1, v2}, Lcom/android/settings/SettingsActivity;->access$3102(Lcom/android/settings/SettingsActivity;I)I

    .line 6911
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;->this$0:Lcom/android/settings/SettingsActivity;

    iget-object v1, v1, Lcom/android/settings/SettingsActivity;->am:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$DrivingModeContentObserver;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->currentSoundProfile:I
    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->access$3100(Lcom/android/settings/SettingsActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method
