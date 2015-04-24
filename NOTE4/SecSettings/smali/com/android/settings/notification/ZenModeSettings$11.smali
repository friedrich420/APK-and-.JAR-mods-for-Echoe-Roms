.class Lcom/android/settings/notification/ZenModeSettings$11;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$zenModeConditionSelection:Lcom/android/settings/notification/ZenModeConditionSelection;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$11;->val$zenModeConditionSelection:Lcom/android/settings/notification/ZenModeConditionSelection;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeConditionSelection;->confirmCondition()V

    .line 540
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$11;->this$0:Lcom/android/settings/notification/ZenModeSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeSettings;->access$602(Lcom/android/settings/notification/ZenModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 541
    return-void
.end method
