.class Lcom/android/settings/LockAddInfoSettings$9;
.super Ljava/lang/Object;
.source "LockAddInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LockAddInfoSettings;->showPermissionDialog()V
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
    .line 475
    iput-object p1, p0, Lcom/android/settings/LockAddInfoSettings$9;->this$0:Lcom/android/settings/LockAddInfoSettings;

    iput-object p2, p0, Lcom/android/settings/LockAddInfoSettings$9;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 478
    const-string v1, "LockAddInfoSettings"

    const-string v2, "showPermissionDialog onClick disable"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v1, p0, Lcom/android/settings/LockAddInfoSettings$9;->val$layout:Landroid/view/View;

    const v2, 0x7f1004cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 480
    .local v0, "check":Landroid/widget/CheckBox;
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 482
    iget-object v1, p0, Lcom/android/settings/LockAddInfoSettings$9;->this$0:Lcom/android/settings/LockAddInfoSettings;

    # getter for: Lcom/android/settings/LockAddInfoSettings;->mViewType:I
    invoke-static {v1}, Lcom/android/settings/LockAddInfoSettings;->access$300(Lcom/android/settings/LockAddInfoSettings;)I

    move-result v1

    if-nez v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/android/settings/LockAddInfoSettings$9;->this$0:Lcom/android/settings/LockAddInfoSettings;

    # getter for: Lcom/android/settings/LockAddInfoSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/LockAddInfoSettings;->access$400(Lcom/android/settings/LockAddInfoSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 488
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/android/settings/LockAddInfoSettings$9;->this$0:Lcom/android/settings/LockAddInfoSettings;

    # getter for: Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/LockAddInfoSettings;->access$500(Lcom/android/settings/LockAddInfoSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 486
    iget-object v1, p0, Lcom/android/settings/LockAddInfoSettings$9;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-virtual {v1}, Lcom/android/settings/LockAddInfoSettings;->updateSwitchState()V

    goto :goto_0
.end method
