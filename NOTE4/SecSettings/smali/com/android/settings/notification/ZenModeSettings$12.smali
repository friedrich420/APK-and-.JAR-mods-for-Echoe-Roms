.class Lcom/android/settings/notification/ZenModeSettings$12;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeSettings;

.field final synthetic val$oldSettingsValue:I


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$12;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    iget v1, p0, Lcom/android/settings/notification/ZenModeSettings$12;->val$oldSettingsValue:I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeSettings;->cancelDialog(I)V

    .line 560
    return-void
.end method
