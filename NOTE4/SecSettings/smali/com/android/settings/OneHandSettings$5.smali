.class Lcom/android/settings/OneHandSettings$5;
.super Ljava/lang/Object;
.source "OneHandSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OneHandSettings;->showDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandSettings;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/settings/OneHandSettings$5;->this$0:Lcom/android/settings/OneHandSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 487
    iget-object v1, p0, Lcom/android/settings/OneHandSettings$5;->this$0:Lcom/android/settings/OneHandSettings;

    # getter for: Lcom/android/settings/OneHandSettings;->mAnyScreen:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/OneHandSettings;->access$000(Lcom/android/settings/OneHandSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OneHandSettings$5;->this$0:Lcom/android/settings/OneHandSettings;

    invoke-virtual {v2}, Lcom/android/settings/OneHandSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "any_screen_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 489
    return-void
.end method
