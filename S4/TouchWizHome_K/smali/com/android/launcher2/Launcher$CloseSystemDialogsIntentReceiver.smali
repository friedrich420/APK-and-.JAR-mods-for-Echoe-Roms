.class Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseSystemDialogsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .prologue
    .line 2135
    iput-object p1, p0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/Launcher;
    .param p2, "x1"    # Lcom/android/launcher2/Launcher$1;

    .prologue
    .line 2135
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-boolean v0, v0, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    if-eqz v0, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->closeSystemDialogs(Ljava/lang/Boolean;)V

    .line 2142
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->cancelRemovePage()V

    .line 2143
    return-void

    .line 2141
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->closeSystemDialogs(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
