.class Lcom/android/settings/motion2013/AirMotionSettings$8;
.super Ljava/lang/Object;
.source "AirMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/AirMotionSettings;->showGuideDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionSettings;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/AirMotionSettings;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionSettings$8;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    iput-object p2, p0, Lcom/android/settings/motion2013/AirMotionSettings$8;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 574
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$8;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$8;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-virtual {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 576
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 577
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_air_motion_sensor_noti"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 578
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 580
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
