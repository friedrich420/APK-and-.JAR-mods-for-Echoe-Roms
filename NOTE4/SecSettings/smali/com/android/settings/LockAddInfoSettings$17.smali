.class Lcom/android/settings/LockAddInfoSettings$17;
.super Ljava/lang/Object;
.source "LockAddInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockAddInfoSettings;->showGuidePopup(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockAddInfoSettings;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/LockAddInfoSettings;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/settings/LockAddInfoSettings$17;->this$0:Lcom/android/settings/LockAddInfoSettings;

    iput-object p2, p0, Lcom/android/settings/LockAddInfoSettings$17;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 641
    iget-object v2, p0, Lcom/android/settings/LockAddInfoSettings$17;->val$layout:Landroid/view/View;

    const v3, 0x7f10016c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 642
    .local v0, "check":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/android/settings/LockAddInfoSettings$17;->this$0:Lcom/android/settings/LockAddInfoSettings;

    const-string v3, "com.android.settings.LockShowInfoSettings.Pedometer"

    # invokes: Lcom/android/settings/LockAddInfoSettings;->saveSharedPreferences(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/settings/LockAddInfoSettings;->access$600(Lcom/android/settings/LockAddInfoSettings;Ljava/lang/String;)V

    .line 644
    :cond_0
    iget-object v2, p0, Lcom/android/settings/LockAddInfoSettings$17;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-virtual {v2}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_additional_steps"

    iget-object v2, p0, Lcom/android/settings/LockAddInfoSettings$17;->this$0:Lcom/android/settings/LockAddInfoSettings;

    # getter for: Lcom/android/settings/LockAddInfoSettings;->mSteps:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/LockAddInfoSettings;->access$000(Lcom/android/settings/LockAddInfoSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 645
    iget-object v2, p0, Lcom/android/settings/LockAddInfoSettings$17;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-virtual {v2}, Lcom/android/settings/LockAddInfoSettings;->updateSwitchState()V

    .line 646
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.shealth.COVER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "type"

    iget-object v3, p0, Lcom/android/settings/LockAddInfoSettings$17;->this$0:Lcom/android/settings/LockAddInfoSettings;

    # getter for: Lcom/android/settings/LockAddInfoSettings;->mSHealthItentExtra_type:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/LockAddInfoSettings;->access$800(Lcom/android/settings/LockAddInfoSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    iget-object v2, p0, Lcom/android/settings/LockAddInfoSettings$17;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-virtual {v2}, Lcom/android/settings/LockAddInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 649
    return-void

    .line 644
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
