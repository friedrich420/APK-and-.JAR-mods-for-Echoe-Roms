.class Lcom/android/launcher2/Launcher$TalkbackEnableIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TalkbackEnableIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .prologue
    .line 2150
    iput-object p1, p0, Lcom/android/launcher2/Launcher$TalkbackEnableIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/Launcher;
    .param p2, "x1"    # Lcom/android/launcher2/Launcher$1;

    .prologue
    .line 2150
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$TalkbackEnableIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2153
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v2}, Lcom/sec/dtl/launcher/Talk;->checkTalkbackEnabled()Z

    move-result v0

    .line 2154
    .local v0, "r":Z
    sget-boolean v2, Lcom/android/launcher2/Launcher;->mTalkbackEnable:Z

    if-eq v2, v0, :cond_0

    .line 2155
    sput-boolean v0, Lcom/android/launcher2/Launcher;->mTalkbackEnable:Z

    .line 2156
    sget-boolean v2, Lcom/android/launcher2/Launcher;->mTalkbackEnable:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Launcher$TalkbackEnableIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Launcher$TalkbackEnableIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2157
    iget-object v2, p0, Lcom/android/launcher2/Launcher$TalkbackEnableIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    .line 2158
    .local v1, "ws":Lcom/android/launcher2/Workspace;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->isGoogleSearchWidget(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2159
    iget-object v2, p0, Lcom/android/launcher2/Launcher$TalkbackEnableIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    .line 2165
    .end local v1    # "ws":Lcom/android/launcher2/Workspace;
    :cond_0
    :goto_0
    return-void

    .line 2162
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher$TalkbackEnableIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    goto :goto_0
.end method
