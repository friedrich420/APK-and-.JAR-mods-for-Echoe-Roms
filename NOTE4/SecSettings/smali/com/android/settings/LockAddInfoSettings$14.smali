.class Lcom/android/settings/LockAddInfoSettings$14;
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
    .line 618
    iput-object p1, p0, Lcom/android/settings/LockAddInfoSettings$14;->this$0:Lcom/android/settings/LockAddInfoSettings;

    iput-object p2, p0, Lcom/android/settings/LockAddInfoSettings$14;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 620
    iget-object v1, p0, Lcom/android/settings/LockAddInfoSettings$14;->val$layout:Landroid/view/View;

    const v2, 0x7f10016c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 621
    .local v0, "check":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/android/settings/LockAddInfoSettings$14;->this$0:Lcom/android/settings/LockAddInfoSettings;

    const-string v2, "com.android.settings.LockShowInfoSettings.Weather"

    # invokes: Lcom/android/settings/LockAddInfoSettings;->saveSharedPreferences(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings/LockAddInfoSettings;->access$600(Lcom/android/settings/LockAddInfoSettings;Ljava/lang/String;)V

    .line 623
    :cond_0
    iget-object v1, p0, Lcom/android/settings/LockAddInfoSettings$14;->this$0:Lcom/android/settings/LockAddInfoSettings;

    iget-object v2, p0, Lcom/android/settings/LockAddInfoSettings$14;->this$0:Lcom/android/settings/LockAddInfoSettings;

    # getter for: Lcom/android/settings/LockAddInfoSettings;->mWeather:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/LockAddInfoSettings;->access$500(Lcom/android/settings/LockAddInfoSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    # invokes: Lcom/android/settings/LockAddInfoSettings;->clickItemWeather(Landroid/preference/Preference;)V
    invoke-static {v1, v2}, Lcom/android/settings/LockAddInfoSettings;->access$700(Lcom/android/settings/LockAddInfoSettings;Landroid/preference/Preference;)V

    .line 624
    iget-object v1, p0, Lcom/android/settings/LockAddInfoSettings$14;->this$0:Lcom/android/settings/LockAddInfoSettings;

    invoke-virtual {v1}, Lcom/android/settings/LockAddInfoSettings;->updateSwitchState()V

    .line 625
    return-void
.end method
