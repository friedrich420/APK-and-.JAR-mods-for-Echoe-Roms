.class Lcom/android/server/LockSettingsService$LockSettingsObserver;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockSettingsObserver"
.end annotation


# instance fields
.field remote:Lcom/android/internal/widget/ILockSettingsObserver;

.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LockSettingsService;)V
    .registers 2

    .prologue
    .line 1355
    iput-object p1, p0, this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/LockSettingsService;
    .param p2, "x1"    # Lcom/android/server/LockSettingsService$1;

    .prologue
    .line 1355
    invoke-direct {p0, p1}, <init>(Lcom/android/server/LockSettingsService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .prologue
    .line 1360
    iget-object v0, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mObservers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$400(Lcom/android/server/LockSettingsService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1361
    return-void
.end method
