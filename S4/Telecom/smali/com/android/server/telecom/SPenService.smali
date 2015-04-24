.class public Lcom/android/server/telecom/SPenService;
.super Landroid/app/Service;
.source "SPenService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/SPenService$SPenServiceBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/server/telecom/SPenService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/SPenService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/server/telecom/SPenService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/android/server/telecom/SPenService;->TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Lcom/android/server/telecom/SPenService$SPenServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/SPenService$SPenServiceBinder;-><init>(Lcom/android/server/telecom/SPenService;B)V

    .line 43
    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/android/server/telecom/SPenService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 39
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/android/server/telecom/SPenService;->TAG:Ljava/lang/String;

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x1

    return v0
.end method
