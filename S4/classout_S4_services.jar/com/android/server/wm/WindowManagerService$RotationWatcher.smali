.class Lcom/android/server/wm/WindowManagerService$RotationWatcher;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotationWatcher"
.end annotation


# instance fields
.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field watcher:Landroid/view/IRotationWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder$DeathRecipient;)V
    .registers 4
    .param p2, "w"    # Landroid/view/IRotationWatcher;
    .param p3, "d"    # Landroid/os/IBinder$DeathRecipient;

    .prologue
    .line 574
    iput-object p1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput-object p2, p0, watcher:Landroid/view/IRotationWatcher;

    .line 576
    iput-object p3, p0, deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 577
    return-void
.end method
