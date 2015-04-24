.class Lcom/android/settings/motion2013/HandMotionSettings$6;
.super Ljava/lang/Object;
.source "HandMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/HandMotionSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/HandMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/HandMotionSettings;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/settings/motion2013/HandMotionSettings$6;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 352
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$6;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 353
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$6;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    # getter for: Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$200(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$6;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    # getter for: Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$600(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/settings/motion2013/HandMotionSettings$6;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$6;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    const-string v2, "enterprise_policy"

    # invokes: Lcom/android/settings/motion2013/HandMotionSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/android/settings/motion2013/HandMotionSettings;->access$700(Lcom/android/settings/motion2013/HandMotionSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    # setter for: Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v1, v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$602(Lcom/android/settings/motion2013/HandMotionSettings;Landroid/app/enterprise/EnterpriseDeviceManager;)Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$6;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    # getter for: Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$600(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$6;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    # getter for: Lcom/android/settings/motion2013/HandMotionSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$600(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$6;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    # getter for: Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$200(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$6;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    # getter for: Lcom/android/settings/motion2013/HandMotionSettings;->mPalmSwipe:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$200(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$6;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    # getter for: Lcom/android/settings/motion2013/HandMotionSettings;->mPalmTouch:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$300(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$6;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    # getter for: Lcom/android/settings/motion2013/HandMotionSettings;->mTapAndTwist:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$800(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/motion2013/HandMotionSettings$6;->this$0:Lcom/android/settings/motion2013/HandMotionSettings;

    # invokes: Lcom/android/settings/motion2013/HandMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2013/HandMotionSettings;->access$900(Lcom/android/settings/motion2013/HandMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    return-void
.end method
