.class Lcom/android/settings/notification/NotificationSettings$4;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 733
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$500(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$600(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/settings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/settings/notification/NotificationSettings;->access$700(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 736
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 737
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$800(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 740
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtone2Preference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$900(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 741
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$600(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    # invokes: Lcom/android/settings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/settings/notification/NotificationSettings;->access$700(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 743
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 744
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$800(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 747
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$1000(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 748
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$600(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/settings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {v1, v3}, Lcom/android/settings/notification/NotificationSettings;->access$700(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 750
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 751
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings$4;->this$0:Lcom/android/settings/notification/NotificationSettings;

    # getter for: Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/settings/notification/NotificationSettings;->access$800(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 754
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method
