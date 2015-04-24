.class Lcom/android/launcher2/Launcher$AirGestureSettingsChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirGestureSettingsChangeReceiver"
.end annotation


# static fields
.field public static final AIR_MOTION_CHANGE:Ljava/lang/String; = "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

.field public static final AIR_MOVE_CHANGE:Ljava/lang/String; = "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .prologue
    .line 4198
    iput-object p1, p0, Lcom/android/launcher2/Launcher$AirGestureSettingsChangeReceiver;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/Launcher;
    .param p2, "x1"    # Lcom/android/launcher2/Launcher$1;

    .prologue
    .line 4198
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$AirGestureSettingsChangeReceiver;-><init>(Lcom/android/launcher2/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4205
    # getter for: Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/Launcher;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4206
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AirGestureSettingsChangeReceiver: onReceive - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isEnable"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$AirGestureSettingsChangeReceiver;->this$0:Lcom/android/launcher2/Launcher;

    # invokes: Lcom/android/launcher2/Launcher;->bindAndUnBindGestureService()V
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$1200(Lcom/android/launcher2/Launcher;)V

    .line 4210
    return-void
.end method
