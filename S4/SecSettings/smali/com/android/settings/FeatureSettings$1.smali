.class Lcom/android/settings/FeatureSettings$1;
.super Landroid/os/Handler;
.source "FeatureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FeatureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FeatureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/FeatureSettings;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/FeatureSettings$1;->this$0:Lcom/android/settings/FeatureSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/FeatureSettings$1;->this$0:Lcom/android/settings/FeatureSettings;

    # getter for: Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/FeatureSettings;->access$000(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/FeatureSettings$1;->this$0:Lcom/android/settings/FeatureSettings;

    # getter for: Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/FeatureSettings;->access$100(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/FeatureSettings$1;->this$0:Lcom/android/settings/FeatureSettings;

    # getter for: Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/FeatureSettings;->access$200(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    .line 128
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/FeatureSettings$1;->this$0:Lcom/android/settings/FeatureSettings;

    # getter for: Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/FeatureSettings;->access$300(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    .line 131
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/FeatureSettings$1;->this$0:Lcom/android/settings/FeatureSettings;

    # getter for: Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/FeatureSettings;->access$400(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
