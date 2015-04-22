.class Lcom/android/server/VibratorService$4;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2

    .prologue
    .line 815
    iput-object p1, p0, this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 818
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 819
    iget-object v4, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 825
    :try_start_14
    iget-object v4, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v4}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v4

    if-eqz v4, :cond_2d

    iget-object v4, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v4}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/VibratorService$Vibration;->isSystemHapticFeedback()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 827
    iget-object v4, p0, this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    invoke-static {v4}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)V

    .line 831
    :cond_2d
    iget-object v4, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 832
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 833
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$Vibration;

    .line 834
    .local v3, "vibration":Lcom/android/server/VibratorService$Vibration;
    iget-object v4, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v4}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v4

    if-eq v3, v4, :cond_37

    .line 835
    iget-object v4, p0, this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v4, v3}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 836
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_37

    .line 839
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    .end local v3    # "vibration":Lcom/android/server/VibratorService$Vibration;
    :catchall_54
    move-exception v4

    monitor-exit v5
    :try_end_56
    .catchall {:try_start_14 .. :try_end_56} :catchall_54

    throw v4

    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_57
    :try_start_57
    monitor-exit v5
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_54

    .line 844
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.proximity_sensor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 845
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, "type":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 847
    iget-object v4, p0, this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mHMTMount:Z
    invoke-static {v4, v6}, Lcom/android/server/VibratorService;->access$2102(Lcom/android/server/VibratorService;Z)Z

    .line 852
    .end local v2    # "type":Ljava/lang/String;
    :cond_75
    :goto_75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 853
    const-string v4, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 854
    .local v0, "dockState":I
    if-nez v0, :cond_8e

    .line 855
    iget-object v4, p0, this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mHMTMount:Z
    invoke-static {v4, v6}, Lcom/android/server/VibratorService;->access$2102(Lcom/android/server/VibratorService;Z)Z

    .line 860
    .end local v0    # "dockState":I
    :cond_8e
    return-void

    .line 848
    .restart local v2    # "type":Ljava/lang/String;
    :cond_8f
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 849
    iget-object v4, p0, this$0:Lcom/android/server/VibratorService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/VibratorService;->mHMTMount:Z
    invoke-static {v4, v5}, Lcom/android/server/VibratorService;->access$2102(Lcom/android/server/VibratorService;Z)Z

    goto :goto_75
.end method
