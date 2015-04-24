.class Lcom/android/launcher2/Launcher$7;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .prologue
    .line 2179
    iput-object p1, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2183
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2184
    iget-object v3, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    # invokes: Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$500(Lcom/android/launcher2/Launcher;)V

    .line 2185
    iget-object v3, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->updateRunning()V

    .line 2213
    :cond_0
    :goto_0
    return-void

    .line 2186
    :cond_1
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2187
    iget-object v3, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->updateRunning()V

    goto :goto_0

    .line 2189
    :cond_2
    const-string v3, "android.intent.action.REQUEST_HOME_COUNT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2190
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.RESPONSE_HOME_COUNT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2191
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "HOME_ALL_COUNT"

    iget-object v4, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;
    invoke-static {v4}, Lcom/android/launcher2/Launcher;->access$600(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherModel;->HomeViewCount()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2192
    iget-object v3, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2193
    .end local v1    # "i":Landroid/content/Intent;
    :cond_3
    const-string v3, "android.intent.action.REQUEST_WIDGET_COUNT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2194
    const/4 v2, 0x0

    .line 2195
    .local v2, "total_size":I
    iget-object v3, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    # invokes: Lcom/android/launcher2/Launcher;->AllWidgetCount()I
    invoke-static {v3}, Lcom/android/launcher2/Launcher;->access$700(Lcom/android/launcher2/Launcher;)I

    move-result v2

    .line 2196
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.RESPONSE_WIDGET_COUNT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2197
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v3, "WIDGET_ALL_COUNT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2198
    iget-object v3, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2203
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "total_size":I
    :cond_4
    const-string v3, "com.android.launcher.action.ACTION_HOME_RESTORE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2204
    const-string v3, "Launcher"

    const-string v4, "receive ACTION_HOME_RESTORE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget-object v3, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->RestoreHomeScreen()V

    goto :goto_0

    .line 2208
    :cond_5
    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2209
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/Launcher;->mIsExpandStatusBar:Z

    goto :goto_0

    .line 2210
    :cond_6
    const-string v3, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2211
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->mIsExpandStatusBar:Z

    goto/16 :goto_0
.end method
