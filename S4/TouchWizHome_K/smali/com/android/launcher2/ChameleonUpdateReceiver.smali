.class public Lcom/android/launcher2/ChameleonUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChameleonUpdateReceiver.java"


# static fields
.field private static final ACTION_CHAMELEON_UPDATE_LAUNCHER:Ljava/lang/String; = "android.intent.action.CSC_CHAMELEON_UPDATE_LAUNCHER"

.field private static final TAG:Ljava/lang/String; = "Launcher.ChameleonUpdateReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private resetDBForSprint(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deleteDB"    # Z

    .prologue
    .line 26
    if-eqz p2, :cond_0

    .line 27
    const-string v1, "launcher.db"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    const-string v1, "Launcher.ChameleonUpdateReceiver"

    const-string v2, "Launcher Database deleted successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, "home":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    .end local v0    # "home":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v1, "Launcher.ChameleonUpdateReceiver"

    const-string v2, "Unable to delete launcher database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.CSC_CHAMELEON_UPDATE_LAUNCHER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    const-string v3, "delete_db"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 18
    .local v1, "deleteDB":Z
    const-string v3, "Launcher.ChameleonUpdateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received CSC_CHAMELEON_UPDATE_LAUNCHER intent :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 20
    .local v2, "launcherContext":Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 21
    invoke-direct {p0, v2, v1}, Lcom/android/launcher2/ChameleonUpdateReceiver;->resetDBForSprint(Landroid/content/Context;Z)V

    .line 23
    .end local v1    # "deleteDB":Z
    .end local v2    # "launcherContext":Landroid/content/Context;
    :cond_0
    return-void
.end method
