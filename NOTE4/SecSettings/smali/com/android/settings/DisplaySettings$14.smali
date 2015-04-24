.class Lcom/android/settings/DisplaySettings$14;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    .prologue
    .line 1966
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$14;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$14;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "desk_home_screen_display"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1970
    new-instance v0, Lcom/android/settings/DreamBackend;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$14;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 1971
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$14;->this$0:Lcom/android/settings/DisplaySettings;

    # invokes: Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V
    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->access$1100(Lcom/android/settings/DisplaySettings;)V

    .line 1972
    return-void
.end method
