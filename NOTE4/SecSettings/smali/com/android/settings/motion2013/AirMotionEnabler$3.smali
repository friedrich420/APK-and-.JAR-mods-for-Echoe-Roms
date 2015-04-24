.class Lcom/android/settings/motion2013/AirMotionEnabler$3;
.super Ljava/lang/Object;
.source "AirMotionEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/AirMotionEnabler;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/AirMotionEnabler;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 163
    iget-object v3, p0, Lcom/android/settings/motion2013/AirMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 164
    iget-object v3, p0, Lcom/android/settings/motion2013/AirMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_engine"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    iget-object v3, p0, Lcom/android/settings/motion2013/AirMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isCurrentAirmotionAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 166
    iget-object v3, p0, Lcom/android/settings/motion2013/AirMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 168
    .local v1, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_2

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # invokes: Lcom/android/settings/motion2013/AirMotionEnabler;->showAllOptionDisabledDialog()V
    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$200(Lcom/android/settings/motion2013/AirMotionEnabler;)V

    .line 184
    .end local v1    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    :goto_0
    return-void

    .line 173
    .restart local v1    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/motion2013/AirMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_engine"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3

    .line 175
    .local v0, "airMotionState":Z
    :goto_1
    if-nez v0, :cond_1

    .line 178
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # invokes: Lcom/android/settings/motion2013/AirMotionEnabler;->showAllOptionDisabledDialog()V
    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$200(Lcom/android/settings/motion2013/AirMotionEnabler;)V

    goto :goto_0

    .end local v0    # "airMotionState":Z
    :cond_3
    move v0, v2

    .line 173
    goto :goto_1

    .line 181
    .end local v1    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_4
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$000(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 182
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # invokes: Lcom/android/settings/motion2013/AirMotionEnabler;->broadcastMotionChanged(Z)V
    invoke-static {v2, v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$300(Lcom/android/settings/motion2013/AirMotionEnabler;Z)V

    goto :goto_0
.end method
