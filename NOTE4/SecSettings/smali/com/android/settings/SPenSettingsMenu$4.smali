.class Lcom/android/settings/SPenSettingsMenu$4;
.super Landroid/database/ContentObserver;
.source "SPenSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SPenSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/SPenSettingsMenu;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-virtual {v0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psm_haptic_feedback"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    # getter for: Lcom/android/settings/SPenSettingsMenu;->mPenWritingHapticFeedback:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$200(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    # getter for: Lcom/android/settings/SPenSettingsMenu;->mPenWritingHapticFeedback:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$200(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
