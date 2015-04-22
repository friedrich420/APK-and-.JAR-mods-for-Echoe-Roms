.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 293
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 294
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .prologue
    .line 303
    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_9

    .line 304
    iget-object v0, p0, mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->systemReady()V

    .line 306
    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 298
    const-string v0, "device_policy"

    iget-object v1, p0, mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 299
    return-void
.end method
